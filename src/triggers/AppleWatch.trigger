trigger AppleWatch on Opportunity (before insert) {

	List<Task> tasks =  new List<Task>();

	for (Opportunity opp : trigger.new) {
		Task t =  new Task();
		t.Subject = 'You have a new booking!';
		t.Description = 'Las Vegas entertainment center';
		t.Priority = 'High';
		t.WhatId = opp.Id;

		tasks.add(t);
	}

	insert tasks;

}
# Mood Analysis: Hash Practice
Let's practice interacting with Hashes (key-value pairings) by writing a program that creates hashes, stores data in hashes, retrieves data from hashes, and prints the contents of a hash.

## mood-analysis.rb
Take a look at [mood-analysis.rb](mood-analysis.rb).

### What's Happening?
Explain what is happening on each of the following lines in the code.

| Line # | What's happening?
|:------:|-------------------
| 1      |
| 2      |
| 3      |
| 6      |
| 7-8    |
| 9      |
| 10     |
| 11     |
| 12     |
| 13     |
| 14     |
| 18-24  |

### Data Types
What's the Data Type of the following?

| Code                       | Data Type
|----------------------------|-----------
| FEELINGS                   |
| :sad                       |
| happy                      |
| words                      |
| words.split(" ")           |
| FEELINGS[:sad]             |
| FEELINGS[:happy].include?  |
| analyze_mood(text)         |

### Explaining the Code
| Question               | Answer
|------------------------|-------
| Why do we need line 9? |
| What is the relationship between `words` and `word` (line 10)? |
| Why doesn't line 22 have an associated if/condition? |
| What is the relationship between `text[0]`, `text[1]`, and `words`? |

### Assignment: Requirements
1. Replace lines 36 and 37 and write a loop to print out each day and the emoticon that is associated by analyzing the mood of that day.

	Your result will look like:
	```
	03/01  :-(
	03/13  :-|
	...
	```

	**think**: Why does 03/13 come out as _neutral_ when it should be _happy_? How could we fix this?

2. To make the results a little more accurate, let's write and utilize a method called `strip_punctuation` to strip out the punctuation that affects the results. Namely, remove  exclamation marks (!), periods (.), commas (,), and hashtags (#).

	Your method should take a string as an argument and return the string without the above mentioned punctuation.

	After writing this method, our new result should be:
	```
	03/01  :-(
	03/13  :-)
...
```
	**think**: Where should we call `strip_punctuation`? Does it matter? Why?


## Optional Enhancements


1. Write a method called `happy_days` to determine how many logged entries it takes until there have been three :-) happy days.

	Your output could be something like:
	```
	It takes 5 entries for 3 happy days to occur
	```

	**think**: What are you going to do if there aren't at least 3 happy days?  Where do you need to handle that case?

2. Write a method called `overall_mood` to determine the most common mood across all logged entries.

	Your output could be something like:
	```
	The most common mood is :-)
	```

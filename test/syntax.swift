/* ******************* *
 * STRING HIGHLIGHTING *
 * ******************* */

// should highlight:
"""
abrac
adabra
\""" // first quote is escaped - don't end here!
"""

// should match against final triple-quote
"""
\\"""

// quotes and double-quotes within triple-quotes should be OK
"""
" hello " i am a "" string ""
"""

// don't highlight here
"""
// highlight here
"""
// don't highlight here

// interpolation within multiline should be OK
"""
\( interpolate "here" )
"""

/* ************************ *
 * DOC COMMENT HIGHLIGHTING *
 * ************************ */

// See documentation here: https://developer.apple.com/library/content/documentation/Xcode/Reference/xcode_markup_formatting_ref/MarkupFunctionality.html#//apple_ref/doc/uid/TP40016497-CH54-SW1
/// - Attention: this is an attention marker
/// - Author: this is one author
/// - Authors:
/// first author
///
/// second author
///
/// third author
/// continues to next line
/// - Bug: this is a bug
/// - Complexity: it takes forever, sorry
/// - Copyright: 2015, suckas!
/// - Callout(Weedle Catching Tips): don't throw your balls at it
/// - Callout(__HACKERS__ONLY__): you can use the mouse to click on things.
/// - Date: it's party time!
/// - Example: this example shows that you don't know shit, Jules.
/// - Experiment: we tried replacing my cat's water with Gatorade, and he wrote this next block
/// - Important: don't use this code.
/// - Invariant: your reference manual will change during the execution of this function
/// - Note: we tried really hard.
///
/// for parameters, the parameter name should be highlighted like a let/var declaration
/// - Parameter myHat: my hat!
/// - Parameter yourHat: what do you mean it's yours?
/// - Parameter spaghetti: used for sustenance.
///
/// - Postcondition: you'll have 3 cows
/// - Precondition: you have 2 cows
/// - Remark: I borrowed your cows
/// - Returns: A random number between 3.5 and 3.51
/// - Requires: Locusts.
/// - SeeAlso: a dictionary.
/// - Since: 1940.
/// - Throws: primarily baseballs and lemon jelly.
/// - ToDo: run code coverage and add tests
/// - Version: Swift 5.3
/// - Warning: This hasn't been tested.

/// You can escape special characters with \. The following should not higlight.
/// \- Date: it's party time!
/// \* Date: it's party time!
/// \+ Date: it's party time!

/// The following should all highlight:
/// - Date: it's party time!
/// * Date: it's party time!
/// + Date: it's party time!

/// Horizontal rules look like this:
/// ---
/// -  -  -
/// - - - - -
/// ***
/// *  *  *
/// * * * * *
/// ___
/// _  _  _
/// _ _ _ _ _
///
/// And not like this:
/// --- horizontal rule
/// horizontal rule ---
/// --
/// - -
/// **
/// * *
/// __
/// _ _

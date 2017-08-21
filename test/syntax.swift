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

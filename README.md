# orbital_parser
Parser for 2-line NASA Keplerian elements

Here's the format:

```
NNNNNNNNNNN
1 AAAAAU 00  0  0 BBBBB.BBBBBBBB  .CCCCCCCC  00000-0  00000-0 0  DDDZ
2 AAAAA EEE.EEEE FFF.FFFF GGGGGGG HHH.HHHH III.IIII JJ.JJJJJJJJKKKKKZ
```

With the following values ([source](http://www.amsat.org/amsat/keps/formats.html)):

* N - Satellite name
* A - Satellite catalog number 
* B - Epoch time (`YYDDD.DDDDDDDD` containing year YY and fractional day D)
* C - DECAY
* D - Element number
* E - Inclination (degrees)
* F - Right Ascension of the Ascending Node (degrees)
* G - Eccentricity (preceding decimal point assumed)
* H - Argument of Perogee (degrees)
* I - Mean Anomaly (degrees)
* J - Mean Motion (revolutions per day)
* K - Revolution number at epoch (revolutions)
* Z - Checksum (modulo 10)


## Example

```
AO-07
1 07530U 74089B   16175.20534881 -.00000042  00000-0  96889-5 0  9996
2 07530 101.5745 145.8147 0011644 300.9871 129.6376 12.53621714903877
```
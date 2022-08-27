f[x_] := 10 Sin[x];
g[x_, gpos_] := (x - gpos)^2;
min = -6 Pi;
max = 6 Pi;



(*Manipulate[
Show[
ParametricPlot[
{f[x],g[x, gpos]}, 
{x, a, b},
Ticks->{Range[min,max,Pi/2]},
AxesLabel -> {"sin", "x"}
],
Graphics[{PointSize[0.04],Red,Point[f[loc], g[loc, gpos]]}]
], 
{{a, -1Pi}, min, max}, 
{{b, 1Pi}, min, max}, 
{{gpos,0}, min, max},
{loc, min, max}
]*)

Manipulate[
 Show[
  ParametricPlot3D[
   {x, f[x], g[x, gpos]}, 
   {x, a, b},
   Ticks -> {Range[min, max, Pi/2]},
   AxesLabel -> {"sin", "x"}
   ],
  Graphics3D[
   PointSize[0.04], Red, Point[{loc, f[loc], g[loc, gpos]}]
   ]
  ], 
 {{a, -1 Pi}, min, max}, 
 {{b, 1 Pi}, min, max}, 
 {{gpos, 0}, min, max},
 {loc, min, max}
 ]

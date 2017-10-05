within Modelica_Synchronous;
package Types "Library of types with choices, especially to build menus"
extends Modelica.Icons.TypesPackage;

  type SolverMethod = String
    "Enumeration defining the integration method to solve differential equations in a clocked discretized continuous-time partition"
  annotation(choices(
     choice="External" "Solver specified externally",
     choice="ExplicitEuler" "Explicit Euler method (order 1)",
     choice="ExplicitMidPoint2" "Explicit mid point rule (order 2)",
     choice="ExplicitRungeKutta4" "Explicit Runge-Kutta method (order 4)",
     choice="ImplicitEuler" "Implicit Euler method (order 1)",
        choice="ImplicitTrapezoid" "Implicit trapezoid rule (order 2)"), Documentation(
      info="<html>
<p>
Type <b>SolverMethod</b> is a String type with menu choices to select the
integration method to solve differential equations in a clocked discretized
continuous-time partition. The choices are tool dependent.
For details, see chapter 16.8.2 \"Solver Method\" in the Modelica Language
Specification (version &ge; 3.3). This type is used in the Advanced menu of
<a href=\"modelica://Modelica_Synchronous.ClockSignals.Clocks\">clocks</a>,
in order to select the solver method for a clocked partition.
</p>

<p>
It is planned to move this type definition in version 1.0 of this
library to the (tool specific) ModelicaServices
library, in order that different tools can adapt the choices menu
to their supported integration methods.
</p>

<p>
The following solver methods are standardized in chapter 16.8.2 \"Solver Method\" in the Modelica Language
Specification (version &ge; 3.3):
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><th><b>Types.SolverMethod.</b></th><th><b>Meaning</b></th></tr>
<tr><td valign=\"top\">\"External\"</td>
    <td valign=\"top\">Solver specified externally</td></tr>

<tr><td valign=\"top\">\"ExplicitEuler\"</td>
    <td valign=\"top\">Explicit Euler method</td></tr>

<tr><td valign=\"top\">\"ExplicitMidPoint2\"</td>
    <td valign=\"top\">Explicit mid point rule (order 2)</td></tr>

<tr><td valign=\"top\">\"ExplicitRungeKutta4\"</td>
    <td valign=\"top\">Explicit Runge-Kutta method (order 4)</td></tr>

<tr><td valign=\"top\">\"ImplicitEuler\"</td>
    <td valign=\"top\">Implicit Euler method</td></tr>

<tr><td valign=\"top\">\"ImplicitTrapezoid\"</td>
    <td valign=\"top\">Implicit trapezoid rule (order 2)</td></tr>
</table>


</html>"));
  type Resolution = enumeration(
      y "y (year)",
      d "d (day)",
      h "h (hour)",
      m "min (minutes)",
      s "s (seconds)",
      ms "ms (milli seconds)",
      us "us (micro seconds)",
      ns "ns (nano seconds)")
    "Enumeration defining the resolution of a clocked signal"
                                                            annotation (
    Documentation(info="<html>
<p>
Enumeration defining the resolution of a clock signal, especially
of the clock signal generated by block
<a href=\"modelica://Modelica_Synchronous.ClockSignals.Clocks.PeriodicExactClock\">PeriodicExactClock</a>.
The following values are possible:<br>&nbsp;
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><th><b>Types.Resolution.</b></th><th><b>Meaning</b></th></tr>
<tr><td valign=\"top\">y</td>
    <td valign=\"top\">year (= 365*24*60*60 seconds)</td></tr>

<tr><td valign=\"top\">d</td>
    <td valign=\"top\">day (= 24*60*60 seconds)</td></tr>

<tr><td valign=\"top\">h</td>
    <td valign=\"top\">hour (= 60*60 seconds)</td></tr>

<tr><td valign=\"top\">m</td>
    <td valign=\"top\">minute (= 60 seconds)</td></tr>

<tr><td valign=\"top\">s</td>
    <td valign=\"top\">seconds</td></tr>

<tr><td valign=\"top\">ms</td>
    <td valign=\"top\">milli seconds (= 1/1000 seconds)</td></tr>


<tr><td valign=\"top\">us</td>
    <td valign=\"top\">micro seconds (= 1/(1000*1000) seconds)</td></tr>


<tr><td valign=\"top\">ns</td>
    <td valign=\"top\">nano seconds (= 1/(1000*1000*1000) seconds)</td></tr>
</table>
<p>
</p>
</html>"));

annotation (Documentation(info="<html>
<p>
This package contains type definitions utilized
in blocks of the Modelica_Synchronous package.
</p>
</html>"));
end Types;

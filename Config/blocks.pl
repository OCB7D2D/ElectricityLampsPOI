use strict;
use warnings;

my @lights = (

	['porchLight01', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['porchLight04', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['porchLight04Brass', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight01', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight02', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight02Brass', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight04', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight05', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight05Brass', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['recessedLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['wallLight01', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingLight07', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['fluorescentLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['trackLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['industrialLight01', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['sconce1Light', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['industrialLight02', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['industrialLight02Red', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['ceilingFanLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['chandelierLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['candelabraLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['signExitLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['roadBarricadeLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['deskLampLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['tableLampLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['tableLampTippedOverLight', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['workLightPOI', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['streetLight01', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['streetLightClassic', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],
	['spotlightNailedDownPOI', 1, 0.2, 1.0, 5.6, 0.1, 0, 15, 50, 1, 35, 95, 135, 5],

);

my %options = (
	'fluorescentLight' => {
		'ActivationDistance' => 4
	}
);

print "<configs>\n";

sub printProperty {
	print "\t\t", '<property name="', $_[0], '" value="', $_[1], '"/>', "\n";
}

foreach my $light (@lights) {
	print "\t<append xpath=\"/blocks/block[\@name='$light->[0]']\">\n";
	printProperty('Class', 'ElectricityLight, ElectricityLamps');
	printProperty('LightMode', $light->[1]);
	printProperty('LightMinIntensity', $light->[2]);
	printProperty('LightIntensity', $light->[3]);
	printProperty('LightMaxIntensity', $light->[4]);
	printProperty('LightIntensityStep', $light->[5]);
	printProperty('LightMinRange', $light->[6]);
	printProperty('LightRange', $light->[7]);
	printProperty('LightMaxRange', $light->[8]);
	printProperty('LightRangeStep', $light->[9]);
	printProperty('LightMinAngle', $light->[10]);
	printProperty('LightAngle', $light->[11]);
	printProperty('LightMaxAngle', $light->[12]);
	printProperty('LightAngleStep', $light->[13]);
	printProperty('PoweredPOI', "true");
	printProperty('TakeDelay', "5");
	foreach my $key (keys %{$options{$light->[0]} || {}}) {
		printProperty($key, $options{$light->[0]}->{$key});
	}
	print "\t</append>\n";
}

print "</configs>\n";
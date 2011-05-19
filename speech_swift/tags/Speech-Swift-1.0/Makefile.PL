use 5.010000;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME              => 'Speech::Swift',
	VERSION_FROM      => 'lib/Speech/Swift.pm',
	INC               => q[-I. -I/opt/swift/include],
	LIBS              => [q[-L/opt/swift/lib -lswift -lceplang_en -lceplex_us]],
	PREREQ_PM         => {},
    	($] >= 5.005 ? (
		ABSTRACT_FROM  => 'lib/Speech/Swift.pm',
       		AUTHOR         => 'Mike Pultz <mike@mikepultz.com>') : ()
	),
);

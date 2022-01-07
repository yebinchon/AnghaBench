; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_showHelp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_fuzzcheck.c_showHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [41 x i8] c"Usage: %s [options] SOURCE-DB ?ARGS...?\0A\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1532 x i8] c"Read databases and SQL scripts from SOURCE-DB and execute each script against\0Aeach database, checking for crashes and memory leaks.\0AOptions:\0A  --cell-size-check    Set the PRAGMA cell_size_check=ON\0A  --dbid N             Use only the database where dbid=N\0A  --export-db DIR      Write databases to files(s) in DIR. Works with --dbid\0A  --export-sql DIR     Write SQL to file(s) in DIR. Also works with --sqlid\0A  --help               Show this help text\0A  --info               Show information about SOURCE-DB w/o running tests\0A  --limit-mem N        Limit memory used by test SQLite instance to N bytes\0A  --limit-vdbe         Panic if any test runs for more than 100,000 cycles\0A  --load-sql ARGS...   Load SQL scripts fron files into SOURCE-DB\0A  --load-db ARGS...    Load template databases from files into SOURCE_DB\0A  --load-dbsql ARGS..  Load dbsqlfuzz outputs into the xsql table\0A  -m TEXT              Add a description to the database\0A  --native-vfs         Use the native VFS for initially empty database files\0A  --native-malloc      Turn off MEMSYS3/5 and Lookaside\0A  --oss-fuzz           Enable OSS-FUZZ testing\0A  --prng-seed N        Seed value for the PRGN inside of SQLite\0A  -q|--quiet           Reduced output\0A  --rebuild            Rebuild and vacuum the database file\0A  --result-trace       Show the results of each SQL command\0A  --sqlid N            Use only SQL where sqlid=N\0A  --timeout N          Abort if any single test needs more than N seconds\0A  -v|--verbose         Increased output.  Repeat for more output.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @showHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showHelp() #0 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1532 x i8], [1532 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

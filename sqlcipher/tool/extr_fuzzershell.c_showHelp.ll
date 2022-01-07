; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_fuzzershell.c_showHelp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_fuzzershell.c_showHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"Usage: %s [options] ?FILE...?\0A\00", align 1
@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1111 x i8] c"Read SQL text from FILE... (or from standard input if FILE... is omitted)\0Aand then evaluate each block of SQL contained therein.\0AOptions:\0A  --autovacuum          Enable AUTOVACUUM mode\0A  --database FILE       Use database FILE instead of an in-memory database\0A  --disable-lookaside   Turn off lookaside memory\0A  --heap SZ MIN         Memory allocator uses SZ bytes & min allocation MIN\0A  --help                Show this help text\0A  --lookaside N SZ      Configure lookaside for N slots of SZ bytes each\0A  --oom                 Run each test multiple times in a simulated OOM loop\0A  --pagesize N          Set the page size to N\0A  --pcache N SZ         Configure N pages of pagecache each of size SZ bytes\0A  -q                    Reduced output\0A  --quiet               Reduced output\0A  --scratch N SZ        Configure scratch memory for N slots of SZ bytes each\0A  --unique-cases FILE   Write all unique test cases to FILE\0A  --utf16be             Set text encoding to UTF-16BE\0A  --utf16le             Set text encoding to UTF-16LE\0A  -v                    Increased output\0A  --verbose             Increased output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @showHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showHelp() #0 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %1)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1111 x i8], [1111 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

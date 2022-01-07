; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_lsmtest_rusage_report.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_lsmtest_rusage_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i64, i64, i64 }

@RUSAGE_SELF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"# getrusage: { ru_maxrss %d ru_oublock %d ru_inblock %d }\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lsmtest_rusage_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsmtest_rusage_report() #0 {
  %1 = alloca %struct.rusage, align 8
  %2 = call i32 @memset(%struct.rusage* %1, i32 0, i32 24)
  %3 = load i32, i32* @RUSAGE_SELF, align 4
  %4 = call i32 @getrusage(i32 %3, %struct.rusage* %1)
  %5 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @memset(%struct.rusage*, i32, i32) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckErrReportingOnBadProfiles.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckErrReportingOnBadProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ErrorReportingFunction = common dso_local global i32 0, align 4
@FatalErrorQuit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TrappedError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckErrReportingOnBadProfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckErrReportingOnBadProfiles() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @DbgThread()
  %3 = load i32, i32* @ErrorReportingFunction, align 4
  %4 = call i32 @cmsSetLogErrorHandler(i32 %2, i32 %3)
  %5 = call i32 (...) @CheckBadProfiles()
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @DbgThread()
  %7 = load i32, i32* @FatalErrorQuit, align 4
  %8 = call i32 @cmsSetLogErrorHandler(i32 %6, i32 %7)
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* @TrappedError, align 4
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i32 @cmsSetLogErrorHandler(i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @CheckBadProfiles(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

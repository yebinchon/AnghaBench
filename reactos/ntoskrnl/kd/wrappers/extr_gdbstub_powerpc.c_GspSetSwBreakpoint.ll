; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspSetSwBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspSetSwBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"GspSetSwBreakpoint(0x%p)\0A\00", align 1
@MAX_SW_BREAKPOINTS = common dso_local global i64 0, align 8
@GspSwBreakpointCount = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Trying to set too many software breakpoints\0A\00", align 1
@GspOutBuffer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"E22\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Stored at index %u\0A\00", align 1
@GspSwBreakpoints = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @GspSetSwBreakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspSetSwBreakpoint(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %3)
  %5 = load i64, i64* @MAX_SW_BREAKPOINTS, align 8
  %6 = load i64, i64* @GspSwBreakpointCount, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 @DPRINT1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GspOutBuffer, align 4
  %11 = call i32 @strcpy(i32 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %29

12:                                               ; preds = %1
  %13 = load i64, i64* @GspSwBreakpointCount, align 8
  %14 = call i32 @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %17 = load i64, i64* @GspSwBreakpointCount, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %15, i64* %19, align 8
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %22 = load i64, i64* @GspSwBreakpointCount, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 8
  %25 = load i64, i64* @GspSwBreakpointCount, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @GspSwBreakpointCount, align 8
  %27 = load i32, i32* @GspOutBuffer, align 4
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @DPRINT(i8*, i64) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

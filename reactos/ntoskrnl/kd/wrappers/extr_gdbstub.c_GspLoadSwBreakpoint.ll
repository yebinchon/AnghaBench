; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspLoadSwBreakpoint.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspLoadSwBreakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@GspMemoryError = common dso_local global i64 0, align 8
@GspSwBreakpoints = common dso_local global %struct.TYPE_2__* null, align 8
@I386_OPCODE_INT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to set software breakpoint at 0x%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Successfully set software breakpoint at 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @GspLoadSwBreakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspLoadSwBreakpoint(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @FALSE, align 8
  store i64 %3, i64* @GspMemoryError, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @GspReadMemSafe(i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %10, i32* %14, align 8
  %15 = load i64, i64* @GspMemoryError, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @I386_OPCODE_INT3, align 4
  %25 = call i32 @GspWriteMemSafe(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load i64, i64* @GspMemoryError, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %32 = load i64, i64* %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load i64, i64* @GspMemoryError, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %39 = load i64, i64* %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %51

44:                                               ; preds = %26
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %44, %37
  ret void
}

declare dso_local i32 @GspReadMemSafe(i32) #1

declare dso_local i32 @GspWriteMemSafe(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

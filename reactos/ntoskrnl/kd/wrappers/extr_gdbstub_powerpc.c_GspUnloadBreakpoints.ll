; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspUnloadBreakpoints.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspUnloadBreakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"GspUnloadHwBreakpoints\0A\00", align 1
@GspSwBreakpointCount = common dso_local global i32 0, align 4
@GspSwBreakpoints = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@GspMemoryError = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to remove software breakpoint from 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Successfully removed software breakpoint from 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @GspUnloadBreakpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspUnloadBreakpoints(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %59, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GspSwBreakpointCount, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %62

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %9
  %18 = load i8*, i8** @FALSE, align 8
  store i8* %18, i8** @GspMemoryError, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @GspWriteMemSafe(i32 %25, i32 %31)
  %33 = load i8*, i8** @FALSE, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i8* %33, i8** %38, align 8
  %39 = load i8*, i8** @GspMemoryError, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %17
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %43 = load i32, i32* %3, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %57

49:                                               ; preds = %17
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %51 = load i32, i32* %3, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57, %9
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %3, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %5

62:                                               ; preds = %5
  ret void
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @GspWriteMemSafe(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

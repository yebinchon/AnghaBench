; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspUnloadBreakpoints.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspUnloadBreakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"GspUnloadBreakpoints\0A\00", align 1
@GspSwBreakpointCount = common dso_local global i32 0, align 4
@GspSwBreakpoints = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@GspMemoryError = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to remove software breakpoint from 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Successfully removed software breakpoint from 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GspUnloadBreakpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GspUnloadBreakpoints() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @__writedr(i32 7, i32 0)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %58, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @GspSwBreakpointCount, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %61

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %8
  %17 = load i8*, i8** @FALSE, align 8
  store i8* %17, i8** @GspMemoryError, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @GspWriteMemSafe(i32 %24, i32 %30)
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %32, i8** %37, align 8
  %38 = load i8*, i8** @GspMemoryError, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %16
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %42 = load i32, i32* %1, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %56

48:                                               ; preds = %16
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @GspSwBreakpoints, align 8
  %50 = load i32, i32* %1, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %48, %40
  br label %57

57:                                               ; preds = %56, %8
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %4

61:                                               ; preds = %4
  ret void
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @__writedr(i32, i32) #1

declare dso_local i32 @GspWriteMemSafe(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

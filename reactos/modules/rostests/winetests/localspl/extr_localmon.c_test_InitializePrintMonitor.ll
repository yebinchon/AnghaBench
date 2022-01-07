; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_InitializePrintMonitor.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_InitializePrintMonitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"returned %p with %u\0A (expected '!= NULL' or: NULL with ERROR_INVALID_PARAMETER)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@Monitors_LocalPortW = common dso_local global i32* null, align 8
@pm = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"returned %p with %u (expected %p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"wrong dwMonitorSize %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InitializePrintMonitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InitializePrintMonitor() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call %struct.TYPE_4__* @pInitializePrintMonitor(i32* null)
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @GetLastError()
  %8 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %9 = icmp eq i64 %7, %8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %13, i64 %14)
  %16 = call i32 @SetLastError(i32 -559038737)
  %17 = load i32*, i32** @emptyW, align 8
  %18 = call %struct.TYPE_4__* @pInitializePrintMonitor(i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %1, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %10
  %22 = call i64 (...) @GetLastError()
  %23 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %10
  %26 = phi i1 [ true, %10 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %28, i64 %29)
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = load i32*, i32** @Monitors_LocalPortW, align 8
  %33 = call %struct.TYPE_4__* @pInitializePrintMonitor(i32* %32)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %1, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pm, align 8
  %36 = icmp eq %struct.TYPE_4__* %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %39 = call i64 (...) @GetLastError()
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pm, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %38, i64 %39, %struct.TYPE_4__* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 4
  %47 = zext i1 %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local %struct.TYPE_4__* @pInitializePrintMonitor(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

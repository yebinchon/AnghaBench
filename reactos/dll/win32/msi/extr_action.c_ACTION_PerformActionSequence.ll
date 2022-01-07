; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_PerformActionSequence.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_PerformActionSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ACTION_PerformActionSequence.query = internal constant [61 x i8] c"SELECT * FROM `InstallExecuteSequence` WHERE `Sequence` = %i\00", align 16
@ACTION_PerformActionSequence.ui_query = internal constant [56 x i8] c"SELECT * FROM `InstallUISequence` WHERE `Sequence` = %i\00", align 16
@.str = private unnamed_addr constant [21 x i8] c"Running the actions\0A\00", align 1
@MSICONDITION_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to fetch action\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@SCRIPT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @ACTION_PerformActionSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ACTION_PerformActionSequence(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call i64 @needs_ui_sequence(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.TYPE_9__* @MSI_QueryGetRecord(i32 %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @ACTION_PerformActionSequence.ui_query, i64 0, i64 0), i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %7, align 8
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.TYPE_9__* @MSI_QueryGetRecord(i32 %23, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @ACTION_PerformActionSequence.query, i64 0, i64 0), i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %7, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = call i32 @MSI_RecordGetString(%struct.TYPE_9__* %31, i32 2)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @MSI_EvaluateConditionW(%struct.TYPE_10__* %33, i32 %34)
  %36 = load i64, i64* @MSICONDITION_FALSE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = call i32 @msiobj_release(i32* %40)
  %42 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %29
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = call i32 @MSI_RecordGetString(%struct.TYPE_9__* %44, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @msiobj_release(i32* %51)
  %53 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SCRIPT_NONE, align 4
  %58 = call i32 @ACTION_PerformAction(%struct.TYPE_10__* %55, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = call i32 @msiobj_release(i32* %60)
  br label %62

62:                                               ; preds = %54, %26
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %48, %38
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @needs_ui_sequence(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @MSI_QueryGetRecord(i32, i8*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @MSI_RecordGetString(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @MSI_EvaluateConditionW(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @ACTION_PerformAction(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

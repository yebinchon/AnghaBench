; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_ProcessExecSequence.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_ACTION_ProcessExecSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@ACTION_ProcessExecSequence.query = internal constant [80 x i8] c"SELECT * FROM `InstallExecuteSequence` WHERE `Sequence` > 0 ORDER BY `Sequence`\00", align 16
@.str = private unnamed_addr constant [30 x i8] c"Execute Sequence already Run\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Running the actions\0A\00", align 1
@szSourceDir = common dso_local global i32 0, align 4
@ITERATE_Actions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @ACTION_ProcessExecSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ACTION_ProcessExecSequence(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %12, i64* %2, align 8
  br label %40

13:                                               ; preds = %1
  %14 = load i64, i64* @TRUE, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @MSI_OpenQuery(i32 %19, %struct.TYPE_7__** %4, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @ACTION_ProcessExecSequence.query, i64 0, i64 0))
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %13
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @szSourceDir, align 4
  %30 = call i32 @msi_set_property(i32 %28, i32 %29, i32* null, i32 -1)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i32, i32* @ITERATE_Actions, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = call i64 @MSI_IterateRecords(%struct.TYPE_7__* %31, i32* null, i32 %32, %struct.TYPE_8__* %33)
  store i64 %34, i64* %5, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @msiobj_release(i32* %36)
  br label %38

38:                                               ; preds = %24, %13
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %10
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_7__**, i8*) #1

declare dso_local i32 @msi_set_property(i32, i32, i32*, i32) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_7__*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

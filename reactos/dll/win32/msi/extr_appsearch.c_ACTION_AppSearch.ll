; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_appsearch.c_ACTION_AppSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ACTION_AppSearch.query = internal constant [24 x i8] c"SELECT * FROM AppSearch\00", align 16
@szAppSearch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Skipping AppSearch action: already done in UI sequence\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@iterate_appsearch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ACTION_AppSearch(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = load i32, i32* @szAppSearch, align 4
  %8 = call i64 @msi_action_is_unique(%struct.TYPE_10__* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %12, i64* %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = load i32, i32* @szAppSearch, align 4
  %16 = call i32 @msi_register_unique_action(%struct.TYPE_10__* %14, i32 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @MSI_OpenQuery(i32 %20, %struct.TYPE_9__** %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ACTION_AppSearch.query, i64 0, i64 0))
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %26, i64* %2, align 8
  br label %36

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32, i32* @iterate_appsearch, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = call i64 @MSI_IterateRecords(%struct.TYPE_9__* %28, i32* null, i32 %29, %struct.TYPE_10__* %30)
  store i64 %31, i64* %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = call i32 @msiobj_release(i32* %33)
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %27, %25, %10
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @msi_action_is_unique(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @msi_register_unique_action(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @MSI_OpenQuery(i32, %struct.TYPE_9__**, i8*) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

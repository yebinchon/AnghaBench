; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_msi_load_all_features.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_msi_load_all_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@msi_load_all_features.query = internal constant [43 x i8] c"SELECT * FROM `Feature` ORDER BY `Display`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@load_feature = common dso_local global i32 0, align 4
@find_feature_children = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_load_all_features(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %11, i64* %2, align 8
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @MSI_DatabaseOpenViewW(i32 %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @msi_load_all_features.query, i64 0, i64 0), %struct.TYPE_7__** %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %44

22:                                               ; preds = %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load i32, i32* @load_feature, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i64 @MSI_IterateRecords(%struct.TYPE_7__* %23, i32* null, i32 %24, %struct.TYPE_8__* %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @msiobj_release(i32* %32)
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %44

35:                                               ; preds = %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i32, i32* @find_feature_children, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = call i64 @MSI_IterateRecords(%struct.TYPE_7__* %36, i32* null, i32 %37, %struct.TYPE_8__* %38)
  store i64 %39, i64* %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @msiobj_release(i32* %41)
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %2, align 8
  br label %44

44:                                               ; preds = %35, %30, %20, %10
  %45 = load i64, i64* %2, align 8
  ret i64 %45
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @MSI_DatabaseOpenViewW(i32, i8*, %struct.TYPE_7__**) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_7__*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

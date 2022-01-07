; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_upgrade.c_ACTION_FindRelatedProducts.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_upgrade.c_ACTION_FindRelatedProducts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ACTION_FindRelatedProducts.query = internal constant [24 x i8] c"SELECT * FROM `Upgrade`\00", align 16
@szInstalled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Skipping FindRelatedProducts action: product already installed\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@szFindRelatedProducts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Skipping FindRelatedProducts action: already done in UI sequence\0A\00", align 1
@ITERATE_FindRelatedProducts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ACTION_FindRelatedProducts(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @szInstalled, align 4
  %10 = call i64 @msi_get_property_int(i32 %8, i32 %9, i32 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %14, i64* %2, align 8
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = load i32, i32* @szFindRelatedProducts, align 4
  %18 = call i64 @msi_action_is_unique(%struct.TYPE_10__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %22, i64* %2, align 8
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = load i32, i32* @szFindRelatedProducts, align 4
  %26 = call i32 @msi_register_unique_action(%struct.TYPE_10__* %24, i32 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @MSI_DatabaseOpenViewW(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ACTION_FindRelatedProducts.query, i64 0, i64 0), %struct.TYPE_9__** %4)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %36, i64* %2, align 8
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load i32, i32* @ITERATE_FindRelatedProducts, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = call i64 @MSI_IterateRecords(%struct.TYPE_9__* %38, i32* null, i32 %39, %struct.TYPE_10__* %40)
  store i64 %41, i64* %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = call i32 @msiobj_release(i32* %43)
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %37, %35, %20, %12
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @msi_get_property_int(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @msi_action_is_unique(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @msi_register_unique_action(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @MSI_DatabaseOpenViewW(i32, i8*, %struct.TYPE_9__**) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_9__*, i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

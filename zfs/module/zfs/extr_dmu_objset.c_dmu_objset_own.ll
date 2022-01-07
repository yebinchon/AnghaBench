; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_own.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_own(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32** %5, i32*** %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  br label %23

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %17, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @FTAG, align 4
  %27 = call i32 @dsl_pool_hold(i8* %25, i32 %26, %struct.TYPE_13__** %14)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %7, align 4
  br label %102

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @dsl_dataset_own(%struct.TYPE_13__* %33, i8* %34, i32 %35, i8* %36, %struct.TYPE_14__** %15)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @dsl_pool_rele(%struct.TYPE_13__* %41, i32 %42)
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %7, align 4
  br label %102

45:                                               ; preds = %32
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32**, i32*** %13, align 8
  %52 = call i32 @dmu_objset_own_impl(%struct.TYPE_14__* %46, i32 %47, i64 %48, i64 %49, i8* %50, i32** %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @dsl_dataset_disown(%struct.TYPE_14__* %56, i32 %57, i8* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @dsl_pool_rele(%struct.TYPE_13__* %60, i32 %61)
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %7, align 4
  br label %102

64:                                               ; preds = %45
  %65 = load i32**, i32*** %13, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @dmu_objset_userobjspace_upgradable(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32**, i32*** %13, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @dmu_objset_projectquota_upgradable(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %69, %64
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %77
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91, %84
  %95 = load i32**, i32*** %13, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @dmu_objset_id_quota_upgrade(i32* %96)
  br label %98

98:                                               ; preds = %94, %91, %77, %74, %69
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %100 = load i32, i32* @FTAG, align 4
  %101 = call i32 @dsl_pool_rele(%struct.TYPE_13__* %99, i32 %100)
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %55, %40, %30
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @dsl_pool_hold(i8*, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @dsl_dataset_own(%struct.TYPE_13__*, i8*, i32, i8*, %struct.TYPE_14__**) #1

declare dso_local i32 @dsl_pool_rele(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dmu_objset_own_impl(%struct.TYPE_14__*, i32, i64, i64, i8*, i32**) #1

declare dso_local i32 @dsl_dataset_disown(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i64 @dmu_objset_userobjspace_upgradable(i32*) #1

declare dso_local i64 @dmu_objset_projectquota_upgradable(i32*) #1

declare dso_local i32 @dmu_objset_id_quota_upgrade(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

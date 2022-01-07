; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_own_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_own_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@DMU_OST_ANY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ZB_ROOT_OBJECT = common dso_local global i32 0, align 4
@ZB_ROOT_LEVEL = common dso_local global i32 0, align 4
@ZB_ROOT_BLKID = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i64, i64, i8*, %struct.TYPE_10__**)* @dmu_objset_own_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_objset_own_impl(%struct.TYPE_11__* %0, i64 %1, i64 %2, i64 %3, i8* %4, %struct.TYPE_10__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_10__** %5, %struct.TYPE_10__*** %13, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %18 = call i32 @dmu_objset_from_ds(%struct.TYPE_11__* %16, %struct.TYPE_10__** %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %7, align 4
  br label %107

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @DMU_OST_ANY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %7, align 4
  br label %107

39:                                               ; preds = %27, %23
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = call i64 @dsl_dataset_is_snapshot(%struct.TYPE_11__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EROFS, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %7, align 4
  br label %107

49:                                               ; preds = %42, %39
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @dsl_dir_incompatible_encryption_version(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EROFS, align 4
  %63 = call i32 @SET_ERROR(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %107

64:                                               ; preds = %55, %52, %49
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @arc_is_unauthenticated(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %70
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ZB_ROOT_OBJECT, align 4
  %82 = load i32, i32* @ZB_ROOT_LEVEL, align 4
  %83 = load i32, i32* @ZB_ROOT_BLKID, align 4
  %84 = call i32 @SET_BOOKMARK(i32* %15, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @B_FALSE, align 4
  %94 = call i32 @arc_untransform(i32 %88, i32 %92, i32* %15, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %77
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %7, align 4
  br label %107

99:                                               ; preds = %77
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @arc_is_unauthenticated(i32 %103)
  %105 = call i32 @ASSERT0(i64 %104)
  br label %106

106:                                              ; preds = %99, %70, %67
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %97, %61, %46, %36, %21
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_11__*, %struct.TYPE_10__**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dsl_dataset_is_snapshot(%struct.TYPE_11__*) #1

declare dso_local i64 @dsl_dir_incompatible_encryption_version(i32) #1

declare dso_local i64 @arc_is_unauthenticated(i32) #1

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @arc_untransform(i32, i32, i32*, i32) #1

declare dso_local i32 @ASSERT0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

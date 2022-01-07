; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_destroy_head.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_destroy.c_dsl_destroy_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@dsl_destroy_head_check = common dso_local global i32 0, align 4
@dsl_destroy_head_begin_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_DESTROY = common dso_local global i32 0, align 4
@DMU_OST_ANY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@dsl_destroy_head_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_destroy_head(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @FTAG, align 4
  %13 = call i32 @spa_open(i8* %11, i32** %6, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %21 = call i32 @spa_feature_is_enabled(i32* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @spa_close(i32* %22, i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %18
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @dsl_destroy_head_check, align 4
  %32 = load i32, i32* @dsl_destroy_head_begin_sync, align 4
  %33 = load i32, i32* @ZFS_SPACE_CHECK_DESTROY, align 4
  %34 = call i32 @dsl_sync_task(i8* %30, i32 %31, i32 %32, %struct.TYPE_4__* %4, i32 0, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %81

39:                                               ; preds = %29
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @DMU_OST_ANY, align 4
  %42 = load i32, i32* @B_FALSE, align 4
  %43 = load i32, i32* @B_TRUE, align 4
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @dmu_objset_own(i8* %40, i32 %41, i32 %42, i32 %43, i32 %44, i32** %8)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %39
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @dmu_objset_ds(i32* %49)
  %51 = call %struct.TYPE_5__* @dsl_dataset_phys(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %61, %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @dmu_free_long_object(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @dmu_object_next(i32* %62, i32* %10, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %54

66:                                               ; preds = %54
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @dmu_objset_pool(i32* %67)
  %69 = call i32 @txg_wait_synced(i32 %68, i32 0)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @B_TRUE, align 4
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dmu_objset_disown(i32* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %39
  br label %75

75:                                               ; preds = %74, %18
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* @dsl_destroy_head_check, align 4
  %78 = load i32, i32* @dsl_destroy_head_sync, align 4
  %79 = load i32, i32* @ZFS_SPACE_CHECK_DESTROY, align 4
  %80 = call i32 @dsl_sync_task(i8* %76, i32 %77, i32 %78, %struct.TYPE_4__* %4, i32 0, i32 %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %37, %16
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @dsl_sync_task(i8*, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dmu_objset_own(i8*, i32, i32, i32, i32, i32**) #1

declare dso_local %struct.TYPE_5__* @dsl_dataset_phys(i32) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

declare dso_local i32 @dmu_free_long_object(i32*, i32) #1

declare dso_local i32 @dmu_object_next(i32*, i32*, i32, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @dmu_objset_disown(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

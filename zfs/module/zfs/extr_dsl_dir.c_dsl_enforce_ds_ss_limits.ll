; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_enforce_ds_ss_limits.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_enforce_ds_ss_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ENFORCE_ALWAYS = common dso_local global i32 0, align 4
@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i64 0, align 8
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"zoned\00", align 1
@ENFORCE_ABOVE = common dso_local global i32 0, align 4
@ENFORCE_NEVER = common dso_local global i32 0, align 4
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i32*)* @dsl_enforce_ds_ss_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_enforce_ds_ss_limits(%struct.TYPE_5__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @ENFORCE_ALWAYS, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @ZFS_PROP_FILESYSTEM_LIMIT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ZFS_PROP_SNAPSHOT_LIMIT, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @ENFORCE_ALWAYS, align 4
  store i32 %30, i32* %4, align 4
  br label %70

31:                                               ; preds = %20
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dsl_pool_config_held(i32 %34)
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* @FTAG, align 4
  %42 = call i64 @dsl_dataset_hold_obj(i32 %39, i64 %40, i32 %41, i32** %10)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* @ENFORCE_ALWAYS, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %31
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @dsl_prop_get_ds(i32* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 8, i32 1, i64* %11, i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %46
  %54 = load i32, i32* @ENFORCE_ALWAYS, align 4
  store i32 %54, i32* %8, align 4
  br label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @zfs_prop_to_name(i64 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @dsl_deleg_access_impl(i32* %56, i32 %58, i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ENFORCE_ABOVE, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %53
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dsl_dataset_rele(i32* %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %44, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_6__* @dsl_dir_phys(%struct.TYPE_5__*) #1

declare dso_local i32 @dsl_pool_config_held(i32) #1

declare dso_local i64 @dsl_dataset_hold_obj(i32, i64, i32, i32**) #1

declare dso_local i64 @dsl_prop_get_ds(i32*, i8*, i32, i32, i64*, i32*) #1

declare dso_local i64 @dsl_deleg_access_impl(i32*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i64) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

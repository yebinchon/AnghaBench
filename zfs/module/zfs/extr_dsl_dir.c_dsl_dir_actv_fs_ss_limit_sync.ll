; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_actv_fs_ss_limit_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_actv_fs_ss_limit_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_FS_SS_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_dir_actv_fs_ss_limit_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dir_actv_fs_ss_limit_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @dmu_tx_pool(i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @FTAG, align 4
  %15 = call i32 @dsl_dataset_hold(i32* %12, i8* %13, i32 %14, %struct.TYPE_5__** %7)
  %16 = call i32 @VERIFY0(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = call i32* @dsl_dataset_get_spa(%struct.TYPE_5__* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %21 = call i32 @spa_feature_is_active(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @spa_feature_incr(i32* %24, i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @dsl_dir_init_fs_ss_count(i32 %31, i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = load i32, i32* @FTAG, align 4
  %36 = call i32 @dsl_dataset_rele(%struct.TYPE_5__* %34, i32 %35)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_5__**) #1

declare dso_local i32* @dsl_dataset_get_spa(%struct.TYPE_5__*) #1

declare dso_local i32 @spa_feature_is_active(i32*, i32) #1

declare dso_local i32 @spa_feature_incr(i32*, i32, i32*) #1

declare dso_local i32 @dsl_dir_init_fs_ss_count(i32, i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

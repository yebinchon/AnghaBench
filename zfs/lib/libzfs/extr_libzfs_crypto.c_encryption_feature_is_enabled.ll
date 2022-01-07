; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_encryption_feature_is_enabled.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_crypto.c_encryption_feature_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global %struct.TYPE_2__* null, align 8
@SPA_FEATURE_ENCRYPTION = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @encryption_feature_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encryption_feature_is_enabled(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %8 = call i64 @zpool_get_prop_int(i32* %6, i32 %7, i32* null)
  %9 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @zpool_get_features(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spa_feature_table, align 8
  %21 = load i64, i64* @SPA_FEATURE_ENCRYPTION, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nvlist_lookup_uint64(i32* %19, i32 %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18, %13
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @B_TRUE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i32* @zpool_get_features(i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

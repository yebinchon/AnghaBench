; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfeature.c_spa_feature_is_enabled.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfeature.c_spa_feature_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global i32* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_feature_is_enabled(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @VALID_FEATURE_FID(i64 %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @spa_version(i32* %11)
  %13 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** @spa_feature_table, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @feature_get_refcount(i32* %18, i32* %21, i32* %7)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENOTSUP, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i1 [ true, %17 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %29, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VALID_FEATURE_FID(i64) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @feature_get_refcount(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

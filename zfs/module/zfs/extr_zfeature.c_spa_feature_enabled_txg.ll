; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfeature.c_spa_feature_enabled_txg.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfeature.c_spa_feature_enabled_txg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_VERSION_FEATURES = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_feature_table = common dso_local global i32* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_feature_enabled_txg(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @VALID_FEATURE_FID(i64 %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @spa_version(i32* %12)
  %14 = load i64, i64* @SPA_VERSION_FEATURES, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @B_FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** @spa_feature_table, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @feature_get_enabled_txg(i32* %19, i32* %22, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ENOTSUP, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %18
  %32 = phi i1 [ true, %18 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VALID_FEATURE_FID(i64) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @feature_get_enabled_txg(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

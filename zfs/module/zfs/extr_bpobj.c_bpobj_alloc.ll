; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_bpobj.c_bpobj_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_bpobj.c_bpobj_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_VERSION_BPOBJ_ACCOUNT = common dso_local global i64 0, align 8
@BPOBJ_SIZE_V0 = common dso_local global i32 0, align 4
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8
@BPOBJ_SIZE_V1 = common dso_local global i32 0, align 4
@SPA_FEATURE_LIVELIST = common dso_local global i32 0, align 4
@BPOBJ_SIZE_V2 = common dso_local global i32 0, align 4
@DMU_OT_BPOBJ = common dso_local global i32 0, align 4
@DMU_OT_BPOBJ_HDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpobj_alloc(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @dmu_objset_spa(i32* %8)
  %10 = call i64 @spa_version(i32 %9)
  %11 = load i64, i64* @SPA_VERSION_BPOBJ_ACCOUNT, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @BPOBJ_SIZE_V0, align 4
  store i32 %14, i32* %7, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @dmu_objset_spa(i32* %16)
  %18 = call i64 @spa_version(i32 %17)
  %19 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @BPOBJ_SIZE_V1, align 4
  store i32 %22, i32* %7, align 4
  br label %33

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @dmu_objset_spa(i32* %24)
  %26 = load i32, i32* @SPA_FEATURE_LIVELIST, align 4
  %27 = call i32 @spa_feature_is_active(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @BPOBJ_SIZE_V2, align 4
  store i32 %30, i32* %7, align 4
  br label %32

31:                                               ; preds = %23
  store i32 4, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %29
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @DMU_OT_BPOBJ, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DMU_OT_BPOBJ_HDR, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @dmu_object_alloc(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* %40)
  ret i32 %41
}

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local i32 @spa_feature_is_active(i32, i32) #1

declare dso_local i32 @dmu_object_alloc(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_object.c_dmu_object_reclaim_dnsize.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_object.c_dmu_object_reclaim_dnsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNODE_SHIFT = common dso_local global i32 0, align 4
@DNODE_MIN_SLOTS = common dso_local global i32 0, align 4
@DMU_META_DNODE_OBJECT = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@DNODE_MUST_BE_ALLOCATED = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_object_reclaim_dnsize(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* @DNODE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %21, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = load i32, i32* @DNODE_MIN_SLOTS, align 4
  store i32 %29, i32* %21, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EBADF, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %61

37:                                               ; preds = %30
  %38 = load i32*, i32** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* @DNODE_MUST_BE_ALLOCATED, align 4
  %41 = load i32, i32* @FTAG, align 4
  %42 = call i32 @dnode_hold_impl(i32* %38, i64 %39, i32 %40, i32 0, i32 %41, i32** %20)
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %22, align 4
  store i32 %46, i32* %10, align 4
  br label %61

47:                                               ; preds = %37
  %48 = load i32*, i32** %20, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @dnode_reallocate(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32* %55)
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* @FTAG, align 4
  %59 = call i32 @dnode_rele(i32* %57, i32 %58)
  %60 = load i32, i32* %22, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %47, %45, %34
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dnode_hold_impl(i32*, i64, i32, i32, i32, i32**) #1

declare dso_local i32 @dnode_reallocate(i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dnode_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

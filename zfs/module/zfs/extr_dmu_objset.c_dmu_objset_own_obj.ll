; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_own_obj.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_own_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DS_HOLD_FLAG_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_own_obj(i32* %0, i32 %1, i32 %2, i64 %3, i64 %4, i8* %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32** %6, i32*** %15, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @DS_HOLD_FLAG_DECRYPT, align 4
  br label %24

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %18, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %18, align 4
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @dsl_dataset_own_obj(i32* %26, i32 %27, i32 %28, i8* %29, i32** %16)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %8, align 4
  br label %52

35:                                               ; preds = %24
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = load i32**, i32*** %15, align 8
  %42 = call i32 @dmu_objset_own_impl(i32* %36, i32 %37, i64 %38, i64 %39, i8* %40, i32** %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @dsl_dataset_disown(i32* %46, i32 %47, i8* %48)
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %8, align 4
  br label %52

51:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %45, %33
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @dsl_dataset_own_obj(i32*, i32, i32, i8*, i32**) #1

declare dso_local i32 @dmu_objset_own_impl(i32*, i32, i64, i64, i8*, i32**) #1

declare dso_local i32 @dsl_dataset_disown(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove_aux.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_removal.c_spa_vdev_remove_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_SLEEP = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32**, i32, i32*)* @spa_vdev_remove_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_vdev_remove_aux(i32* %0, i8* %1, i32** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32** null, i32*** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @KM_SLEEP, align 4
  %24 = call i32** @kmem_alloc(i32 %22, i32 %23)
  store i32** %24, i32*** %11, align 8
  br label %25

25:                                               ; preds = %17, %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i32**, i32*** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = icmp eq i32* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %55

39:                                               ; preds = %30
  %40 = load i32**, i32*** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32**, i32*** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32, i32* @KM_SLEEP, align 4
  %51 = call i64 @nvlist_dup(i32* %44, i32** %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @VERIFY(i32 %53)
  br label %55

55:                                               ; preds = %39, %38
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %62 = call i64 @nvlist_remove(i32* %59, i8* %60, i32 %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @VERIFY(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32**, i32*** %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i64 @nvlist_add_nvlist_array(i32* %66, i8* %67, i32** %68, i32 %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @VERIFY(i32 %73)
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %87, %58
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @nvlist_free(i32* %85)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32**, i32*** %11, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @kmem_free(i32** %94, i32 %99)
  br label %101

101:                                              ; preds = %93, %90
  ret void
}

declare dso_local i32** @kmem_alloc(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i64 @nvlist_remove(i32*, i8*, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i8*, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @kmem_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

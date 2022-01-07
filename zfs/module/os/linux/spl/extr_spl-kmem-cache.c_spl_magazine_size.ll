; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_magazine_size.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_magazine_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spl_kmem_cache_magazine_size = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @spl_magazine_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_magazine_size(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @spl_obj_size(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i64, i64* @spl_kmem_cache_magazine_size, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i64, i64* @spl_kmem_cache_magazine_size, align 8
  %12 = call i32 @MIN(i64 %11, i32 256)
  %13 = call i32 @MAX(i32 %12, i32 2)
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = mul nsw i32 %16, 256
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 4, i32* %5, align 4
  br label %41

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 %22, 32
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 16, i32* %5, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 64, i32* %5, align 4
  br label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = sdiv i32 %33, 4
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 128, i32* %5, align 4
  br label %38

37:                                               ; preds = %31
  store i32 256, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %30
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @spl_obj_size(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

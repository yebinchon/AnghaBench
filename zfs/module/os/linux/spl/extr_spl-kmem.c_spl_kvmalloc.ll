; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem.c_spl_kvmalloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem.c_spl_kvmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@__GFP_RECLAIM = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @spl_kvmalloc(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32, i32* @__GFP_NOWARN, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 %22, %24
  %26 = icmp ule i64 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20, %12
  %28 = load i32, i32* @__GFP_NORETRY, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NUMA_NO_NODE, align 4
  %36 = call i8* @kmalloc_node(i64 %33, i32 %34, i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @__GFP_RECLAIM, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @__GFP_RECLAIM, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %39, %32
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %3, align 8
  br label %58

51:                                               ; preds = %43
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @__GFP_HIGHMEM, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PAGE_KERNEL, align 4
  %57 = call i8* @__vmalloc(i64 %52, i32 %55, i32 %56)
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %51, %49
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i8* @kmalloc_node(i64, i32, i32) #1

declare dso_local i8* @__vmalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

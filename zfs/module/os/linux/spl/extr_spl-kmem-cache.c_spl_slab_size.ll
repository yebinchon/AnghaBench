; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_slab_size.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_slab_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@KMC_OFFSLAB = common dso_local global i32 0, align 4
@spl_kmem_cache_obj_per_slab = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KMC_KMEM = common dso_local global i32 0, align 4
@SPL_MAX_ORDER_NR_PAGES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@spl_kmem_cache_max_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @spl_slab_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_slab_size(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KMC_OFFSLAB, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i32, i32* @spl_kmem_cache_obj_per_slab, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @P2ROUNDUP(i32 4, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KMC_KMEM, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 @spl_obj_size(%struct.TYPE_5__* %30)
  %32 = load i32, i32* @SPL_MAX_ORDER_NR_PAGES, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOSPC, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %105

39:                                               ; preds = %29, %19
  br label %94

40:                                               ; preds = %3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = call i32 @spl_sks_size(%struct.TYPE_5__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i32 @spl_obj_size(%struct.TYPE_5__* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @spl_kmem_cache_max_size, align 4
  %46 = mul nsw i32 %45, 1024
  %47 = mul nsw i32 %46, 1024
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @spl_kmem_cache_obj_per_slab, align 4
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @KMC_KMEM, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %40
  %60 = load i32, i32* @SPL_MAX_ORDER_NR_PAGES, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @get_order(i32 %65)
  %67 = sub nsw i64 %66, 1
  %68 = call i32 @MAX(i64 %67, i32 1)
  %69 = shl i32 1, %68
  %70 = mul nsw i32 %64, %69
  %71 = call i32 @MIN(i32 %63, i32 %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %59, %40
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %12, align 4
  br label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %82, %76
  br label %94

94:                                               ; preds = %93, %39
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ENOSPC, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %105

100:                                              ; preds = %94
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %100, %97, %36
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @spl_obj_size(%struct.TYPE_5__*) #1

declare dso_local i32 @spl_sks_size(%struct.TYPE_5__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i64 @get_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

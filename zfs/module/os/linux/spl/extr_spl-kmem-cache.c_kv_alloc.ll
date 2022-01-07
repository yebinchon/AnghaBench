; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_kv_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_kv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@KMC_KMEM = common dso_local global i32 0, align 4
@KMC_KVMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32, i32)* @kv_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kv_alloc(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @kmem_flags_convert(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @KMC_KMEM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ISP2(i32 %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @get_order(i32 %22)
  %24 = call i64 @__get_free_pages(i32 %21, i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  br label %56

26:                                               ; preds = %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KMC_KVMEM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @spl_kvmalloc(i32 %34, i32 %35)
  store i8* %36, i8** %8, align 8
  br label %55

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @spl_kvmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %8, align 8
  br label %54

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @__GFP_HIGHMEM, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PAGE_KERNEL, align 4
  %53 = call i8* @__vmalloc(i32 %48, i32 %51, i32 %52)
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %47, %43
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i32 @IS_P2ALIGNED(i8* %57, i32 %58)
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load i8*, i8** %8, align 8
  ret i8* %61
}

declare dso_local i32 @kmem_flags_convert(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ISP2(i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i8* @spl_kvmalloc(i32, i32) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

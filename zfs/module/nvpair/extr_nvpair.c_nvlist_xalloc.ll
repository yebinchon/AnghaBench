; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_xalloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_xalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvlist_xalloc(i32** %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = icmp eq i32** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %39

16:                                               ; preds = %11
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @nv_priv_alloc(i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @NV_ALIGN(i32 4)
  %25 = call i32* @nv_mem_zalloc(i32* %23, i32 %24)
  %26 = load i32**, i32*** %5, align 8
  store i32* %25, i32** %26, align 8
  %27 = icmp eq i32* %25, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @nv_mem_free(i32* %29, i32* %30, i32 4)
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %22
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @nvlist_init(i32* %35, i32 %36, i32* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %28, %20, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32* @nv_priv_alloc(i32*) #1

declare dso_local i32* @nv_mem_zalloc(i32*, i32) #1

declare dso_local i32 @NV_ALIGN(i32) #1

declare dso_local i32 @nv_mem_free(i32*, i32*, i32) #1

declare dso_local i32 @nvlist_init(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

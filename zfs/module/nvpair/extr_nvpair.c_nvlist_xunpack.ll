; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_xunpack.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvlist_xunpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@NV_ENCODE_NATIVE = common dso_local global i32 0, align 4
@NVS_OP_DECODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvlist_xunpack(i8* %0, i64 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32**, i32*** %8, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %37

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @nvlist_xalloc(i32** %10, i32 0, i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %37

22:                                               ; preds = %16
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %26 = load i32, i32* @NVS_OP_DECODE, align 4
  %27 = call i32 @nvlist_common(i32* %23, i8* %24, i64* %7, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @nvlist_free(i32* %30)
  br label %35

32:                                               ; preds = %22
  %33 = load i32*, i32** %10, align 8
  %34 = load i32**, i32*** %8, align 8
  store i32* %33, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %20, %14
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @nvlist_xalloc(i32**, i32, i32*) #1

declare dso_local i32 @nvlist_common(i32*, i8*, i64*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

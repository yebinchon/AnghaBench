; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_create_ctx_template.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/io/extr_skein_mod.c_skein_create_ctx_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_HOST_MEMORY = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32**, i64*, i32)* @skein_create_ctx_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skein_create_ctx_template(i32 %0, i32* %1, i32* %2, i32** %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = call i32 @crypto_kmflag(i32 %16)
  %18 = call i32* @kmem_alloc(i32 4, i32 %17)
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @CRYPTO_HOST_MEMORY, align 4
  store i32 %22, i32* %7, align 4
  br label %43

23:                                               ; preds = %6
  %24 = load i32*, i32** %15, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @skein_mac_ctx_build(i32* %24, i32* %25, i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @CRYPTO_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %37

32:                                               ; preds = %23
  %33 = load i32*, i32** %15, align 8
  %34 = load i32**, i32*** %11, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i64*, i64** %12, align 8
  store i64 4, i64* %35, align 8
  %36 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %36, i32* %7, align 4
  br label %43

37:                                               ; preds = %31
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @bzero(i32* %38, i32 4)
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @kmem_free(i32* %40, i32 4)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %32, %21
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32* @kmem_alloc(i32, i32) #1

declare dso_local i32 @crypto_kmflag(i32) #1

declare dso_local i32 @skein_mac_ctx_build(i32*, i32*, i32*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

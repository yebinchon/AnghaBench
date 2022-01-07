; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_lz4.c_real_LZ4_compress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_lz4.c_real_LZ4_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lz4_cache = common dso_local global i32* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@LZ4_64KLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @real_LZ4_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @real_LZ4_compress(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** @lz4_cache, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32*, i32** @lz4_cache, align 8
  %17 = load i32, i32* @KM_SLEEP, align 4
  %18 = call i8* @kmem_cache_alloc(i32* %16, i32 %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @memset(i8* %23, i32 0, i32 4)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @LZ4_64KLIMIT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @LZ4_compress64kCtx(i8* %29, i8* %30, i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @LZ4_compressCtx(i8* %36, i8* %37, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32*, i32** @lz4_cache, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @kmem_cache_free(i32* %43, i8* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %21
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_cache_alloc(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @LZ4_compress64kCtx(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @LZ4_compressCtx(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

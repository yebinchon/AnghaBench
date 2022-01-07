; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_malloc_hard.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_arena.c_arena_malloc_hard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMALL_MAXCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arena_malloc_hard(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @tsdn_null(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ true, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @tsdn_null(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @tsdn_tsd(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32* @arena_choose(i32 %31, i32* %32)
  store i32* %33, i32** %8, align 8
  br label %34

34:                                               ; preds = %29, %18
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* null, i8** %6, align 8
  br label %61

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @SMALL_MAXCLASS, align 8
  %44 = icmp ule i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @arena_malloc_small(i32* %49, i32* %50, i32 %51, i32 %52)
  store i8* %53, i8** %6, align 8
  br label %61

54:                                               ; preds = %41
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @sz_index2size(i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i8* @large_malloc(i32* %55, i32* %56, i32 %58, i32 %59)
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %54, %48, %40
  %62 = load i8*, i8** %6, align 8
  ret i8* %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsdn_null(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32* @arena_choose(i32, i32*) #1

declare dso_local i32 @tsdn_tsd(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @arena_malloc_small(i32*, i32*, i32, i32) #1

declare dso_local i8* @large_malloc(i32*, i32*, i32, i32) #1

declare dso_local i32 @sz_index2size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

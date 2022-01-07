; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_pages.c_pages_map.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_pages.c_pages_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE = common dso_local global i64 0, align 8
@os_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pages_map(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* @PAGE, align 8
  %13 = icmp uge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @ALIGNMENT_ADDR2BASE(i8* %16, i64 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @os_page, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i8* @os_pages_map(i8* %23, i64 %24, i32 %25, i32* %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %4
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %5, align 8
  br label %61

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @ALIGNMENT_ADDR2OFFSET(i8* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @os_pages_unmap(i8* %46, i64 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i8* @pages_map_slow(i64 %49, i64 %50, i32* %51)
  store i8* %52, i8** %5, align 8
  br label %61

53:                                               ; preds = %36
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @PAGE_ADDR2BASE(i8* %54)
  %56 = load i8*, i8** %10, align 8
  %57 = icmp eq i8* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i8*, i8** %10, align 8
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %53, %45, %34
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ALIGNMENT_ADDR2BASE(i8*, i64) #1

declare dso_local i8* @os_pages_map(i8*, i64, i32, i32*) #1

declare dso_local i64 @ALIGNMENT_ADDR2OFFSET(i8*, i64) #1

declare dso_local i32 @os_pages_unmap(i8*, i64) #1

declare dso_local i8* @pages_map_slow(i64, i64, i32*) #1

declare dso_local i8* @PAGE_ADDR2BASE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_pages.c_pages_boot.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/src/extr_pages.c_pages_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@os_page = common dso_local global i64 0, align 8
@PAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"<jemalloc>: Unsupported system page size\0A\00", align 1
@opt_abort = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@mmap_flags = common dso_local global i32 0, align 4
@os_overcommits = common dso_local global i32 0, align 4
@pages_can_purge_lazy = common dso_local global i64 0, align 8
@pages_can_purge_lazy_runtime = common dso_local global i32 0, align 4
@MAP_NORESERVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pages_boot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = call i64 (...) @os_page_detect()
  store i64 %4, i64* @os_page, align 8
  %5 = load i64, i64* @os_page, align 8
  %6 = load i64, i64* @PAGE, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = call i32 @malloc_write(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @opt_abort, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @abort() #3
  unreachable

14:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %42

15:                                               ; preds = %0
  %16 = load i32, i32* @MAP_PRIVATE, align 4
  %17 = load i32, i32* @MAP_ANON, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* @mmap_flags, align 4
  store i32 0, i32* @os_overcommits, align 4
  %19 = call i32 (...) @init_thp_state()
  %20 = load i64, i64* @pages_can_purge_lazy, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  %23 = load i64, i64* @PAGE, align 8
  %24 = load i64, i64* @PAGE, align 8
  %25 = call i8* @os_pages_map(i32* null, i64 %23, i64 %24, i32* %2)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %1, align 4
  br label %42

29:                                               ; preds = %22
  %30 = load i32, i32* @pages_can_purge_lazy_runtime, align 4
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* @PAGE, align 8
  %34 = call i64 @pages_purge_lazy(i8* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* @pages_can_purge_lazy_runtime, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* @PAGE, align 8
  %40 = call i32 @os_pages_unmap(i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %15
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %41, %28, %14
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare dso_local i64 @os_page_detect(...) #1

declare dso_local i32 @malloc_write(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @init_thp_state(...) #1

declare dso_local i8* @os_pages_map(i32*, i64, i64, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pages_purge_lazy(i8*, i64) #1

declare dso_local i32 @os_pages_unmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

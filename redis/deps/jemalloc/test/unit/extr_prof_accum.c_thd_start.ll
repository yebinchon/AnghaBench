; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prof_accum.c_thd_start.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_prof_accum.c_thd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NALLOCS_PER_THREAD = common dso_local global i32 0, align 4
@DUMP_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"prof.dump\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Unexpected error while dumping heap profile\00", align 1
@BT_COUNT_CHECK_INTERVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Expected larger backtrace count increase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thd_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NALLOCS_PER_THREAD, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @alloc_from_permuted_backtrace(i32 %17, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @dallocx(i8* %20, i32 0)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DUMP_INTERVAL, align 4
  %24 = urem i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = call i32 @mallctl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* null, i32 0)
  %28 = call i32 @assert_d_eq(i32 %27, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %16
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BT_COUNT_CHECK_INTERVAL, align 4
  %32 = urem i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  %37 = load i32, i32* @NALLOCS_PER_THREAD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34, %29
  %40 = call i64 (...) @prof_bt_count()
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = add i64 %41, %45
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @assert_zu_le(i64 %46, i64 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %39, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %12

55:                                               ; preds = %12
  ret i8* null
}

declare dso_local i8* @alloc_from_permuted_backtrace(i32, i32) #1

declare dso_local i32 @dallocx(i8*, i32) #1

declare dso_local i32 @assert_d_eq(i32, i32, i8*) #1

declare dso_local i32 @mallctl(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @prof_bt_count(...) #1

declare dso_local i32 @assert_zu_le(i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

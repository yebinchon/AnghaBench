; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_tsd.c_data_cleanup.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_tsd.c_data_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@data_cleanup_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Argument passed into cleanup function should match tsd value\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpeced mallocx() failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @data_cleanup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i64, i64* @data_cleanup_count, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @assert_x_eq(i32 %9, i32 128, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i64, i64* @data_cleanup_count, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @data_cleanup_count, align 8
  store i32 0, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %21 [
    i32 128, label %16
    i32 1, label %18
    i32 2, label %20
  ]

16:                                               ; preds = %11
  %17 = load i32*, i32** %2, align 8
  store i32 1, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %23

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  store i32 2, i32* %19, align 4
  store i32 1, i32* %3, align 4
  br label %23

20:                                               ; preds = %11
  br label %32

21:                                               ; preds = %11
  %22 = call i32 (...) @not_reached()
  br label %23

23:                                               ; preds = %21, %18, %16
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = call i8* @mallocx(i32 1, i32 0)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @assert_ptr_not_null(i8* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @dallocx(i8* %30, i32 0)
  br label %32

32:                                               ; preds = %20, %26, %23
  ret void
}

declare dso_local i32 @assert_x_eq(i32, i32, i8*) #1

declare dso_local i32 @not_reached(...) #1

declare dso_local i8* @mallocx(i32, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

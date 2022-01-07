; ModuleID = '/home/carl/AnghaBench/streem/src/extr_env.c_env_get.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_env.c_env_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @env_get(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @strm_str_intern_p(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @strm_str_intern_str(i32 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @kh_get(i32* %16, i32* %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @kh_end(i32* %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @STRM_NG, align 4
  store i32 %25, i32* %4, align 4
  br label %32

26:                                               ; preds = %15
  %27 = load i32*, i32** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @kh_value(i32* %27, i64 %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @STRM_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %24
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @strm_str_intern_p(i32) #1

declare dso_local i32 @strm_str_intern_str(i32) #1

declare dso_local i64 @kh_get(i32*, i32*, i32) #1

declare dso_local i64 @kh_end(i32*) #1

declare dso_local i32 @kh_value(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

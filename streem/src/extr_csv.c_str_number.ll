; ModuleID = '/home/carl/AnghaBench/streem/src/extr_csv.c_str_number.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_csv.c_str_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@TYPE_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid string for number\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @str_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_number(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i32 @strm_get_args(i32* %11, i32 %12, i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %10)
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @strm_str_ptr(i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @strm_str_len(i32 %17)
  %19 = load i32, i32* @TYPE_NUM, align 4
  %20 = call i32 @csv_value(i32 %16, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @strm_number_p(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @strm_raise(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @STRM_NG, align 4
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @STRM_OK, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @csv_value(i32, i32, i32) #1

declare dso_local i32 @strm_str_ptr(i32) #1

declare dso_local i32 @strm_str_len(i32) #1

declare dso_local i32 @strm_number_p(i32) #1

declare dso_local i32 @strm_raise(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

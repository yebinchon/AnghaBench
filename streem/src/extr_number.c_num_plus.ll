; ModuleID = '/home/carl/AnghaBench/streem/src/extr_number.c_num_plus.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_number.c_num_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"NN\00", align 1
@STRM_OK = common dso_local global i32 0, align 4
@STRM_NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @num_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_plus(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @strm_get_args(i32* %12, i32 %13, i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @strm_int_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @strm_int_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @strm_value_int(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @strm_value_int(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @strm_int_value(i64 %28)
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @STRM_OK, align 4
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %19, %4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @strm_number_p(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @strm_number_p(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @strm_value_float(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @strm_value_float(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @strm_float_value(i64 %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @STRM_OK, align 4
  store i32 %48, i32* %5, align 4
  br label %51

49:                                               ; preds = %36, %32
  %50 = load i32, i32* @STRM_NG, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %40, %23
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strm_int_p(i32) #1

declare dso_local i32 @strm_int_value(i64) #1

declare dso_local i64 @strm_value_int(i32) #1

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local i32 @strm_float_value(i64) #1

declare dso_local i64 @strm_value_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

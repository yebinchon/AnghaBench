; ModuleID = '/home/carl/AnghaBench/streem/src/extr_number.c_num_minus.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_number.c_num_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRM_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"NN\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @num_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_minus(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
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
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %45

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strm_int_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strm_value_int(i32 %23)
  %25 = sub nsw i64 0, %24
  %26 = call i32 @strm_int_value(i64 %25)
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @STRM_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %86

29:                                               ; preds = %14
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strm_float_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strm_value_float(i32 %38)
  %40 = sub nsw i64 0, %39
  %41 = call i32 @strm_float_value(i64 %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @STRM_OK, align 4
  store i32 %43, i32* %5, align 4
  br label %86

44:                                               ; preds = %29
  br label %84

45:                                               ; preds = %4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @strm_get_args(i32* %46, i32 %47, i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @strm_int_p(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @strm_int_p(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @strm_value_int(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @strm_value_int(i32 %60)
  %62 = sub nsw i64 %59, %61
  %63 = call i32 @strm_int_value(i64 %62)
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @STRM_OK, align 4
  store i32 %65, i32* %5, align 4
  br label %86

66:                                               ; preds = %53, %45
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @strm_number_p(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @strm_number_p(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = call i64 @strm_value_float(i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @strm_value_float(i32 %77)
  %79 = sub nsw i64 %76, %78
  %80 = call i32 @strm_float_value(i64 %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @STRM_OK, align 4
  store i32 %82, i32* %5, align 4
  br label %86

83:                                               ; preds = %70, %66
  br label %84

84:                                               ; preds = %83, %44
  %85 = load i32, i32* @STRM_NG, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %74, %57, %35, %20
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @strm_int_p(i32) #1

declare dso_local i32 @strm_int_value(i64) #1

declare dso_local i64 @strm_value_int(i32) #1

declare dso_local i64 @strm_float_p(i32) #1

declare dso_local i32 @strm_float_value(i64) #1

declare dso_local i64 @strm_value_float(i32) #1

declare dso_local i32 @strm_get_args(i32*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strm_number_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

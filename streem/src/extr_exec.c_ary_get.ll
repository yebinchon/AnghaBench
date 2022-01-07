; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_ary_get.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_ary_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strm_array = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@STRM_NG = common dso_local global i32 0, align 4
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*)* @ary_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ary_get(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.strm_array*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @strm_raise(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @STRM_NG, align 4
  store i32 %22, i32* %6, align 4
  br label %98

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.strm_array* @strm_ary_struct(i32 %24)
  store %struct.strm_array* %25, %struct.strm_array** %12, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @strm_number_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @strm_value_int(i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.strm_array*, %struct.strm_array** %12, align 8
  %37 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @STRM_NG, align 4
  store i32 %41, i32* %6, align 4
  br label %98

42:                                               ; preds = %32
  %43 = load %struct.strm_array*, %struct.strm_array** %12, align 8
  %44 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @STRM_OK, align 4
  store i32 %50, i32* %6, align 4
  br label %98

51:                                               ; preds = %23
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @strm_string_p(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load %struct.strm_array*, %struct.strm_array** %12, align 8
  %57 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.strm_array*, %struct.strm_array** %12, align 8
  %62 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %64

64:                                               ; preds = %91, %60
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @strm_value_str(i32 %69)
  %71 = load %struct.strm_array*, %struct.strm_array** %12, align 8
  %72 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i32* @strm_ary_ptr(i64 %73)
  %75 = load i64, i64* %15, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strm_value_str(i32 %77)
  %79 = call i64 @strm_str_eq(i32 %70, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %68
  %82 = load %struct.strm_array*, %struct.strm_array** %12, align 8
  %83 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @STRM_OK, align 4
  store i32 %89, i32* %6, align 4
  br label %98

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %15, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %15, align 8
  br label %64

94:                                               ; preds = %64
  br label %95

95:                                               ; preds = %94, %55
  br label %96

96:                                               ; preds = %95, %51
  %97 = load i32, i32* @STRM_NG, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %81, %42, %40, %19
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @strm_raise(i32*, i8*) #1

declare dso_local %struct.strm_array* @strm_ary_struct(i32) #1

declare dso_local i64 @strm_number_p(i32) #1

declare dso_local i64 @strm_value_int(i32) #1

declare dso_local i64 @strm_string_p(i32) #1

declare dso_local i64 @strm_str_eq(i32, i32) #1

declare dso_local i32 @strm_value_str(i32) #1

declare dso_local i32* @strm_ary_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

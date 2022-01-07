; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_rankfunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_rankfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"invalid matchinfo blob passed to function rank()\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"wrong number of arguments to function rank()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @rankfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rankfunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store double 0.000000e+00, double* %12, align 8
  %18 = call i32 @assert(i32 1)
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %124

22:                                               ; preds = %3
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_blob(i32* %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %7, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @sqlite3_value_bytes(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %22
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 3, %46
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 2, %49
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @sqlite3_result_error(i32* %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %127

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 1, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %124

61:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %117, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %120

66:                                               ; preds = %62
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = mul nsw i32 %70, 3
  %72 = add nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32* %74, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %113, %66
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %75
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 3, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 3, %87
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %93, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call double @sqlite3_value_double(i32* %98)
  store double %99, double* %17, align 8
  %100 = load i32, i32* %15, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %79
  %103 = load i32, i32* %15, align 4
  %104 = sitofp i32 %103 to double
  %105 = load i32, i32* %16, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %104, %106
  %108 = load double, double* %17, align 8
  %109 = fmul double %107, %108
  %110 = load double, double* %12, align 8
  %111 = fadd double %110, %109
  store double %111, double* %12, align 8
  br label %112

112:                                              ; preds = %102, %79
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %75

116:                                              ; preds = %75
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %62

120:                                              ; preds = %62
  %121 = load i32*, i32** %4, align 8
  %122 = load double, double* %12, align 8
  %123 = call i32 @sqlite3_result_double(i32* %121, double %122)
  br label %127

124:                                              ; preds = %60, %21
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @sqlite3_result_error(i32* %125, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %127

127:                                              ; preds = %124, %120, %52
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

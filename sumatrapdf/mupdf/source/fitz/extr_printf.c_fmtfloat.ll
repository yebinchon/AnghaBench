; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtfloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmtbuf = type { i32 }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmtbuf*, float)* @fmtfloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtfloat(%struct.fmtbuf* %0, float %1) #0 {
  %3 = alloca %struct.fmtbuf*, align 8
  %4 = alloca float, align 4
  %5 = alloca [40 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fmtbuf* %0, %struct.fmtbuf** %3, align 8
  store float %1, float* %4, align 4
  %10 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  store i8* %10, i8** %6, align 8
  %11 = load float, float* %4, align 4
  %12 = call i64 @isnan(float %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store float 0.000000e+00, float* %4, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load float, float* %4, align 4
  %17 = call i64 @isinf(float %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load float, float* %4, align 4
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load float, float* @FLT_MAX, align 4
  %24 = fneg float %23
  br label %27

25:                                               ; preds = %19
  %26 = load float, float* @FLT_MAX, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi float [ %24, %22 ], [ %26, %25 ]
  store float %28, float* %4, align 4
  br label %29

29:                                               ; preds = %27, %15
  %30 = load float, float* %4, align 4
  %31 = call i64 @signbit(float %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %35 = call i32 @fmtputc(%struct.fmtbuf* %34, i8 signext 45)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load float, float* %4, align 4
  %38 = fcmp oeq float %37, 0.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %41 = call i32 @fmtputc(%struct.fmtbuf* %40, i8 signext 48)
  br label %103

42:                                               ; preds = %36
  %43 = load float, float* %4, align 4
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %45 = call i32 @fz_grisu(float %43, i8* %44, i32* %7)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %42
  %52 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %53 = call i32 @fmtputc(%struct.fmtbuf* %52, i8 signext 46)
  br label %54

54:                                               ; preds = %58, %51
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = icmp slt i32 %55, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %60 = call i32 @fmtputc(%struct.fmtbuf* %59, i8 signext 48)
  br label %54

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  %65 = icmp sgt i32 %63, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  %70 = load i8, i8* %68, align 1
  %71 = call i32 @fmtputc(%struct.fmtbuf* %67, i8 signext %70)
  br label %62

72:                                               ; preds = %62
  br label %103

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  %77 = icmp sgt i32 %75, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = load i8, i8* %80, align 1
  %83 = call i32 @fmtputc(%struct.fmtbuf* %79, i8 signext %82)
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %92 = call i32 @fmtputc(%struct.fmtbuf* %91, i8 signext 46)
  br label %93

93:                                               ; preds = %90, %87, %78
  br label %74

94:                                               ; preds = %74
  br label %95

95:                                               ; preds = %99, %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.fmtbuf*, %struct.fmtbuf** %3, align 8
  %101 = call i32 @fmtputc(%struct.fmtbuf* %100, i8 signext 48)
  br label %95

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %39, %102, %72
  ret void
}

declare dso_local i64 @isnan(float) #1

declare dso_local i64 @isinf(float) #1

declare dso_local i64 @signbit(float) #1

declare dso_local i32 @fmtputc(%struct.fmtbuf*, i8 signext) #1

declare dso_local i32 @fz_grisu(float, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

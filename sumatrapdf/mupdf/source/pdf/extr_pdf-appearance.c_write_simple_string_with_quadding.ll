; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_write_simple_string_with_quadding.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_write_simple_string_with_quadding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%g %g Td \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Tj\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float, i8*, float, i32)* @write_simple_string_with_quadding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_simple_string_with_quadding(i32* %0, i32* %1, i32* %2, float %3, i8* %4, float %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store float %3, float* %11, align 4
  store i8* %4, i8** %12, align 8
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  br label %19

19:                                               ; preds = %92, %7
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %93

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load float, float* %11, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load float, float* %13, align 4
  %29 = call float @break_simple_string(i32* %24, i32* %25, float %26, i8* %27, i8** %15, float %28)
  store float %29, float* %18, align 4
  %30 = load i8*, i8** %15, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ugt i8* %30, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %23
  %34 = load i32, i32* %14, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load float, float* %13, align 4
  %41 = load float, float* %18, align 4
  %42 = fsub float %40, %41
  %43 = fdiv float %42, 2.000000e+00
  store float %43, float* %17, align 4
  br label %48

44:                                               ; preds = %36
  %45 = load float, float* %13, align 4
  %46 = load float, float* %18, align 4
  %47 = fsub float %45, %46
  store float %47, float* %17, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load float, float* %17, align 4
  %52 = load float, float* %16, align 4
  %53 = fsub float %51, %52
  %54 = load float, float* %11, align 4
  %55 = fneg float %54
  %56 = call i32 @fz_append_printf(i32* %49, i32* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), float %53, float %55)
  br label %57

57:                                               ; preds = %48, %33
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 13
  br i1 %68, label %69, label %76

69:                                               ; preds = %63, %57
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  %75 = call i32 @write_simple_string(i32* %70, i32* %71, i8* %72, i8* %74)
  br label %82

76:                                               ; preds = %63
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @write_simple_string(i32* %77, i32* %78, i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i8*, i8** %15, align 8
  store i8* %83, i8** %12, align 8
  %84 = load float, float* %17, align 4
  store float %84, float* %16, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %91 = call i32 @fz_append_string(i32* %85, i32* %86, i8* %90)
  br label %92

92:                                               ; preds = %82, %23
  br label %19

93:                                               ; preds = %19
  ret void
}

declare dso_local float @break_simple_string(i32*, i32*, float, i8*, i8**, float) #1

declare dso_local i32 @fz_append_printf(i32*, i32*, i8*, float, float) #1

declare dso_local i32 @write_simple_string(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @fz_append_string(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

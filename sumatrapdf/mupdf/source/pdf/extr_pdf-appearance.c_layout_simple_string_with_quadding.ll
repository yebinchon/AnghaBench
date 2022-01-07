; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_layout_simple_string_with_quadding.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-appearance.c_layout_simple_string_with_quadding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, float, float, float, float, i8*, float, i32)* @layout_simple_string_with_quadding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @layout_simple_string_with_quadding(i32* %0, i32* %1, i32* %2, float %3, float %4, float %5, float %6, i8* %7, float %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i8*, align 8
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store i8* %7, i8** %18, align 8
  store float %8, float* %19, align 4
  store i32 %9, i32* %20, align 4
  store float 0.000000e+00, float* %22, align 4
  store i32 0, i32* %24, align 4
  %25 = load i8*, i8** %18, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  store i32 1, i32* %24, align 4
  br label %29

29:                                               ; preds = %28, %10
  br label %30

30:                                               ; preds = %102, %29
  %31 = load i8*, i8** %18, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %103

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load float, float* %14, align 4
  %38 = load i8*, i8** %18, align 8
  %39 = load float, float* %19, align 4
  %40 = call float @break_simple_string(i32* %35, i32* %36, float %37, i8* %38, i8** %21, float %39)
  store float %40, float* %23, align 4
  %41 = load i8*, i8** %21, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %34
  %45 = load i32, i32* %20, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load float, float* %19, align 4
  %52 = load float, float* %23, align 4
  %53 = fsub float %51, %52
  %54 = fdiv float %53, 2.000000e+00
  store float %54, float* %22, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load float, float* %19, align 4
  %57 = load float, float* %23, align 4
  %58 = fsub float %56, %57
  store float %58, float* %22, align 4
  br label %59

59:                                               ; preds = %55, %50
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i8*, i8** %21, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %21, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 13
  br i1 %71, label %72, label %85

72:                                               ; preds = %66, %60
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load float, float* %14, align 4
  %77 = load float, float* %16, align 4
  %78 = load float, float* %22, align 4
  %79 = fadd float %77, %78
  %80 = load float, float* %17, align 4
  %81 = load i8*, i8** %18, align 8
  %82 = load i8*, i8** %21, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = call i32 @layout_simple_string(i32* %73, i32* %74, i32* %75, float %76, float %79, float %80, i8* %81, i8* %83)
  store i32 1, i32* %24, align 4
  br label %97

85:                                               ; preds = %66
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load float, float* %14, align 4
  %90 = load float, float* %16, align 4
  %91 = load float, float* %22, align 4
  %92 = fadd float %90, %91
  %93 = load float, float* %17, align 4
  %94 = load i8*, i8** %18, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = call i32 @layout_simple_string(i32* %86, i32* %87, i32* %88, float %89, float %92, float %93, i8* %94, i8* %95)
  store i32 0, i32* %24, align 4
  br label %97

97:                                               ; preds = %85, %72
  %98 = load i8*, i8** %21, align 8
  store i8* %98, i8** %18, align 8
  %99 = load float, float* %15, align 4
  %100 = load float, float* %17, align 4
  %101 = fsub float %100, %99
  store float %101, float* %17, align 4
  br label %102

102:                                              ; preds = %97, %34
  br label %30

103:                                              ; preds = %30
  %104 = load i32, i32* %24, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32*, i32** %11, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load float, float* %16, align 4
  %110 = load float, float* %17, align 4
  %111 = load float, float* %14, align 4
  %112 = load i8*, i8** %18, align 8
  %113 = call i32 @fz_add_layout_line(i32* %107, i32* %108, float %109, float %110, float %111, i8* %112)
  br label %114

114:                                              ; preds = %106, %103
  ret void
}

declare dso_local float @break_simple_string(i32*, i32*, float, i8*, i8**, float) #1

declare dso_local i32 @layout_simple_string(i32*, i32*, i32*, float, float, float, i8*, i8*) #1

declare dso_local i32 @fz_add_layout_line(i32*, i32*, float, float, float, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

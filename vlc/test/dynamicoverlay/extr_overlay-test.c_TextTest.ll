; ModuleID = '/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_TextTest.c'
source_filename = "/home/carl/AnghaBench/vlc/test/dynamicoverlay/extr_overlay-test.c_TextTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Sweeping (text) alpha...\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" done\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Sweeping colors...\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Getting size...\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" done. Size is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Sweeping size...\00", align 1
@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TextTest(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %7, align 4
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, -255
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @abs(i32 %21) #3
  %23 = call i32 @SetTextAlpha(i32* %18, i32* %19, i32 %20, i32 %22)
  %24 = call i32 @usleep(i32 20000)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 8
  store i32 %27, i32* %7, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SetTextAlpha(i32* %29, i32* %30, i32 %31, i32 255)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 255, i32* %8, align 4
  br label %35

35:                                               ; preds = %45, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @SetTextColor(i32* %39, i32* %40, i32 %41, i32 %42, i32 255, i32 255)
  %44 = call i32 @usleep(i32 20000)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 8
  store i32 %47, i32* %8, align 4
  br label %35

48:                                               ; preds = %35
  store i32 255, i32* %9, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @SetTextColor(i32* %53, i32* %54, i32 %55, i32 0, i32 %56, i32 255)
  %58 = call i32 @usleep(i32 20000)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 8
  store i32 %61, i32* %9, align 4
  br label %49

62:                                               ; preds = %49
  store i32 255, i32* %10, align 4
  br label %63

63:                                               ; preds = %73, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @SetTextColor(i32* %67, i32* %68, i32 %69, i32 0, i32 0, i32 %70)
  %72 = call i32 @usleep(i32 20000)
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %74, 8
  store i32 %75, i32* %10, align 4
  br label %63

76:                                               ; preds = %63
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @SetTextColor(i32* %77, i32* %78, i32 %79, i32 0, i32 0, i32 0)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @GetTextSize(i32* %83, i32* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store float 0.000000e+00, float* %12, align 4
  br label %90

90:                                               ; preds = %106, %76
  %91 = load float, float* %12, align 4
  %92 = load float, float* @M_PI, align 4
  %93 = fcmp ole float %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i32*, i32** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load float, float* %12, align 4
  %100 = call i32 @sin(float %99)
  %101 = mul nsw i32 3, %100
  %102 = add nsw i32 1, %101
  %103 = mul nsw i32 %98, %102
  %104 = call i32 @SetTextSize(i32* %95, i32* %96, i32 %97, i32 %103)
  %105 = call i32 @usleep(i32 20000)
  br label %106

106:                                              ; preds = %94
  %107 = load float, float* @M_PI, align 4
  %108 = fpext float %107 to double
  %109 = fdiv double %108, 1.280000e+02
  %110 = load float, float* %12, align 4
  %111 = fpext float %110 to double
  %112 = fadd double %111, %109
  %113 = fptrunc double %112 to float
  store float %113, float* %12, align 4
  br label %90

114:                                              ; preds = %90
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @SetTextSize(i32* %115, i32* %116, i32 %117, i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %121 = call i32 @sleep(i32 5)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SetTextAlpha(i32*, i32*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @SetTextColor(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @GetTextSize(i32*, i32*, i32) #1

declare dso_local i32 @SetTextSize(i32*, i32*, i32, i32) #1

declare dso_local i32 @sin(float) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

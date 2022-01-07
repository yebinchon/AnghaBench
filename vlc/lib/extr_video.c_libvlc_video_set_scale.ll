; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_set_scale.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_video.c_libvlc_video_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"zoom\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"autoscale\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_video_set_scale(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %9 = load float, float* %4, align 4
  %10 = call i64 @isfinite(float %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load float, float* %4, align 4
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load float, float* %4, align 4
  %18 = call i32 @var_SetFloat(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), float %17)
  br label %19

19:                                               ; preds = %15, %12, %2
  %20 = load i32*, i32** %3, align 8
  %21 = load float, float* %4, align 4
  %22 = fcmp oeq float %21, 0.000000e+00
  %23 = zext i1 %22 to i32
  %24 = call i32 @var_SetBool(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32** @GetVouts(i32* %25, i64* %5)
  store i32** %26, i32*** %6, align 8
  store i64 0, i64* %7, align 8
  br label %27

27:                                               ; preds = %54, %19
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %27
  %32 = load i32**, i32*** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %8, align 8
  %36 = load float, float* %4, align 4
  %37 = call i64 @isfinite(float %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load float, float* %4, align 4
  %41 = fcmp une float %40, 0.000000e+00
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32*, i32** %8, align 8
  %44 = load float, float* %4, align 4
  %45 = call i32 @var_SetFloat(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), float %44)
  br label %46

46:                                               ; preds = %42, %39, %31
  %47 = load i32*, i32** %8, align 8
  %48 = load float, float* %4, align 4
  %49 = fcmp oeq float %48, 0.000000e+00
  %50 = zext i1 %49 to i32
  %51 = call i32 @var_SetBool(i32* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @vout_Release(i32* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %27

57:                                               ; preds = %27
  %58 = load i32**, i32*** %6, align 8
  %59 = call i32 @free(i32** %58)
  ret void
}

declare dso_local i64 @isfinite(float) #1

declare dso_local i32 @var_SetFloat(i32*, i8*, float) #1

declare dso_local i32 @var_SetBool(i32*, i8*, i32) #1

declare dso_local i32** @GetVouts(i32*, i64*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

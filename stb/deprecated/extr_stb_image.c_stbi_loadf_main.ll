; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_loadf_main.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_loadf_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Image not of any known type, or corrupt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float* @stbi_loadf_main(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @stbi_hdr_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call float* @stbi_hdr_load(i32* %17, i32* %18, i32* %19, i32* %20, i32 %21)
  store float* %22, float** %6, align 8
  br label %50

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @stbi_load_main(i32* %24, i32* %25, i32* %26, i32* %27, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %23
  %33 = load i8*, i8** %12, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %42 ]
  %47 = call float* @ldr_to_hdr(i8* %33, i32 %35, i32 %37, i32 %46)
  store float* %47, float** %6, align 8
  br label %50

48:                                               ; preds = %23
  %49 = call float* @epf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store float* %49, float** %6, align 8
  br label %50

50:                                               ; preds = %48, %45, %16
  %51 = load float*, float** %6, align 8
  ret float* %51
}

declare dso_local i64 @stbi_hdr_test(i32*) #1

declare dso_local float* @stbi_hdr_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i8* @stbi_load_main(i32*, i32*, i32*, i32*, i32) #1

declare dso_local float* @ldr_to_hdr(i8*, i32, i32, i32) #1

declare dso_local float* @epf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

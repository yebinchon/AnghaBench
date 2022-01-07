; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_image_write_test.c_image_write_test.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_image_write_test.c_image_write_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@img6x5_template = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"output/wr6x5_regular.png\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"output/wr6x5_regular.bmp\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"output/wr6x5_regular.tga\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"output/wr6x5_regular.jpg\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"output/wr6x5_regular.hdr\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"output/wr6x5_flip.png\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"output/wr6x5_flip.bmp\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"output/wr6x5_flip.tga\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"output/wr6x5_flip.jpg\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"output/wr6x5_flip.hdr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @image_write_test() #0 {
  %1 = alloca [90 x i8], align 16
  %2 = alloca [90 x float], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %65, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 30
  br i1 %7, label %8, label %68

8:                                                ; preds = %5
  %9 = load i8*, i8** @img6x5_template, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 42
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 255, i32 0
  %21 = trunc i32 %20 to i8
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 3
  %24 = add nsw i32 %23, 0
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 %25
  store i8 %21, i8* %26, align 1
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 3
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 255
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %3, align 4
  %38 = mul nsw i32 %37, 3
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 %40
  store i8 %36, i8* %41, align 1
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, float 1.000000e+00, float 0.000000e+00
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 3
  %48 = add nsw i32 %47, 0
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 %49
  store float %45, float* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = mul nsw i32 %51, 3
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 %54
  store float 0.000000e+00, float* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, float 0.000000e+00, float 1.000000e+00
  %60 = load i32, i32* %3, align 4
  %61 = mul nsw i32 %60, 3
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 %63
  store float %59, float* %64, align 4
  br label %65

65:                                               ; preds = %8
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %5

68:                                               ; preds = %5
  %69 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %70 = call i32 @stbi_write_png(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %69, i32 18)
  %71 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %72 = call i32 @stbi_write_bmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %71)
  %73 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %74 = call i32 @stbi_write_tga(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %73)
  %75 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %76 = call i32 @stbi_write_jpg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %75, i32 95)
  %77 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 0
  %78 = call i32 @stbi_write_hdr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 6, i32 5, i32 3, float* %77)
  %79 = call i32 @stbi_flip_vertically_on_write(i32 1)
  %80 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %81 = call i32 @stbi_write_png(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %80, i32 18)
  %82 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %83 = call i32 @stbi_write_bmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %82)
  %84 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %85 = call i32 @stbi_write_tga(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %84)
  %86 = getelementptr inbounds [90 x i8], [90 x i8]* %1, i64 0, i64 0
  %87 = call i32 @stbi_write_jpg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 6, i32 5, i32 3, i8* %86, i32 95)
  %88 = getelementptr inbounds [90 x float], [90 x float]* %2, i64 0, i64 0
  %89 = call i32 @stbi_write_hdr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 6, i32 5, i32 3, float* %88)
  ret void
}

declare dso_local i32 @stbi_write_png(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @stbi_write_bmp(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @stbi_write_tga(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @stbi_write_jpg(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @stbi_write_hdr(i8*, i32, i32, i32, float*) #1

declare dso_local i32 @stbi_flip_vertically_on_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

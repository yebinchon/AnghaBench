; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_load_main.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_load_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"unknown image type\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Image not of any known type, or corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32)* @stbi_load_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi_load_main(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @stbi_jpeg_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i8* @stbi_jpeg_load(i32* %17, i32* %18, i32* %19, i32* %20, i32 %21)
  store i8* %22, i8** %6, align 8
  br label %117

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @stbi_png_test(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i8* @stbi_png_load(i32* %28, i32* %29, i32* %30, i32* %31, i32 %32)
  store i8* %33, i8** %6, align 8
  br label %117

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @stbi_bmp_test(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i8* @stbi_bmp_load(i32* %39, i32* %40, i32* %41, i32* %42, i32 %43)
  store i8* %44, i8** %6, align 8
  br label %117

45:                                               ; preds = %34
  %46 = load i32*, i32** %7, align 8
  %47 = call i64 @stbi_gif_test(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i8* @stbi_gif_load(i32* %50, i32* %51, i32* %52, i32* %53, i32 %54)
  store i8* %55, i8** %6, align 8
  br label %117

56:                                               ; preds = %45
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @stbi_psd_test(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @stbi_psd_load(i32* %61, i32* %62, i32* %63, i32* %64, i32 %65)
  store i8* %66, i8** %6, align 8
  br label %117

67:                                               ; preds = %56
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @stbi_pic_test(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i8* @stbi_pic_load(i32* %72, i32* %73, i32* %74, i32* %75, i32 %76)
  store i8* %77, i8** %6, align 8
  br label %117

78:                                               ; preds = %67
  %79 = load i32*, i32** %7, align 8
  %80 = call i64 @stbi_hdr_test(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call float* @stbi_hdr_load(i32* %83, i32* %84, i32* %85, i32* %86, i32 %87)
  store float* %88, float** %12, align 8
  %89 = load float*, float** %12, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %11, align 4
  br label %101

98:                                               ; preds = %82
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %97, %96 ], [ %100, %98 ]
  %103 = call i8* @hdr_to_ldr(float* %89, i32 %91, i32 %93, i32 %102)
  store i8* %103, i8** %6, align 8
  br label %117

104:                                              ; preds = %78
  %105 = load i32*, i32** %7, align 8
  %106 = call i64 @stbi_tga_test(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i8* @stbi_tga_load(i32* %109, i32* %110, i32* %111, i32* %112, i32 %113)
  store i8* %114, i8** %6, align 8
  br label %117

115:                                              ; preds = %104
  %116 = call i8* @epuc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i8* %116, i8** %6, align 8
  br label %117

117:                                              ; preds = %115, %108, %101, %71, %60, %49, %38, %27, %16
  %118 = load i8*, i8** %6, align 8
  ret i8* %118
}

declare dso_local i64 @stbi_jpeg_test(i32*) #1

declare dso_local i8* @stbi_jpeg_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @stbi_png_test(i32*) #1

declare dso_local i8* @stbi_png_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @stbi_bmp_test(i32*) #1

declare dso_local i8* @stbi_bmp_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @stbi_gif_test(i32*) #1

declare dso_local i8* @stbi_gif_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @stbi_psd_test(i32*) #1

declare dso_local i8* @stbi_psd_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @stbi_pic_test(i32*) #1

declare dso_local i8* @stbi_pic_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @stbi_hdr_test(i32*) #1

declare dso_local float* @stbi_hdr_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i8* @hdr_to_ldr(float*, i32, i32, i32) #1

declare dso_local i64 @stbi_tga_test(i32*) #1

declare dso_local i8* @stbi_tga_load(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i8* @epuc(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

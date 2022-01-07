; ModuleID = '/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_load_fonts.c'
source_filename = "/home/carl/AnghaBench/stb/tests/oversample/extr_main.c_load_fonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"windir\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SystemRoot\00", align 1
@stb_wingraph_commandline = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"arial.ttf\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s/fonts/arial.ttf\00", align 1
@ttf_buffer = common dso_local global i32 0, align 4
@temp_bitmap = common dso_local global i32* null, align 8
@BITMAP_W = common dso_local global i32 0, align 4
@BITMAP_H = common dso_local global i32 0, align 4
@scale = common dso_local global i32* null, align 8
@chardata = common dso_local global i64* null, align 8
@font_tex = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_ALPHA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_fonts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i8*, i8** @stb_wingraph_commandline, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  br label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 @exit(i32 0) #3
  unreachable

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %11
  %36 = load i32, i32* @ttf_buffer, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fread(i32 %36, i32 1, i32 33554432, i32* %37)
  %39 = load i32*, i32** @temp_bitmap, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BITMAP_W, align 4
  %43 = load i32, i32* @BITMAP_H, align 4
  %44 = call i32 @stbtt_PackBegin(i32* %1, i32 %41, i32 %42, i32 %43, i32 0, i32 1, i32* null)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %97, %35
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %100

48:                                               ; preds = %45
  %49 = call i32 @stbtt_PackSetOversampling(i32* %1, i32 1, i32 1)
  %50 = load i32, i32* @ttf_buffer, align 4
  %51 = load i32*, i32** @scale, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i64*, i64** @chardata, align 8
  %57 = load i32, i32* %2, align 4
  %58 = mul nsw i32 %57, 3
  %59 = add nsw i32 %58, 0
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 32
  %64 = call i32 @stbtt_PackFontRange(i32* %1, i32 %50, i32 0, i32 %55, i32 32, i32 95, i64 %63)
  %65 = call i32 @stbtt_PackSetOversampling(i32* %1, i32 2, i32 2)
  %66 = load i32, i32* @ttf_buffer, align 4
  %67 = load i32*, i32** @scale, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i64*, i64** @chardata, align 8
  %73 = load i32, i32* %2, align 4
  %74 = mul nsw i32 %73, 3
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %72, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 32
  %80 = call i32 @stbtt_PackFontRange(i32* %1, i32 %66, i32 0, i32 %71, i32 32, i32 95, i64 %79)
  %81 = call i32 @stbtt_PackSetOversampling(i32* %1, i32 3, i32 1)
  %82 = load i32, i32* @ttf_buffer, align 4
  %83 = load i32*, i32** @scale, align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i64*, i64** @chardata, align 8
  %89 = load i32, i32* %2, align 4
  %90 = mul nsw i32 %89, 3
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 32
  %96 = call i32 @stbtt_PackFontRange(i32* %1, i32 %82, i32 0, i32 %87, i32 32, i32 95, i64 %95)
  br label %97

97:                                               ; preds = %48
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %45

100:                                              ; preds = %45
  %101 = call i32 @stbtt_PackEnd(i32* %1)
  %102 = call i32 @glGenTextures(i32 1, i32* @font_tex)
  %103 = load i32, i32* @GL_TEXTURE_2D, align 4
  %104 = load i32, i32* @font_tex, align 4
  %105 = call i32 @glBindTexture(i32 %103, i32 %104)
  %106 = load i32, i32* @GL_TEXTURE_2D, align 4
  %107 = load i32, i32* @GL_ALPHA, align 4
  %108 = load i32, i32* @BITMAP_W, align 4
  %109 = load i32, i32* @BITMAP_H, align 4
  %110 = load i32, i32* @GL_ALPHA, align 4
  %111 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %112 = load i32*, i32** @temp_bitmap, align 8
  %113 = call i32 @glTexImage2D(i32 %106, i32 0, i32 %107, i32 %108, i32 %109, i32 0, i32 %110, i32 %111, i32* %112)
  %114 = load i32, i32* @GL_TEXTURE_2D, align 4
  %115 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %116 = load i32, i32* @GL_LINEAR, align 4
  %117 = call i32 @glTexParameteri(i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* @GL_TEXTURE_2D, align 4
  %119 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %120 = load i32, i32* @GL_LINEAR, align 4
  %121 = call i32 @glTexParameteri(i32 %118, i32 %119, i32 %120)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fread(i32, i32, i32, i32*) #1

declare dso_local i32 @stbtt_PackBegin(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @stbtt_PackSetOversampling(i32*, i32, i32) #1

declare dso_local i32 @stbtt_PackFontRange(i32*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @stbtt_PackEnd(i32*) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

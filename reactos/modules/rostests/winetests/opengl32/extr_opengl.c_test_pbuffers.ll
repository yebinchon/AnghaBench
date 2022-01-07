; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/opengl32/extr_opengl.c_test_pbuffers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/opengl32/extr_opengl.c_test_pbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WGL_DRAW_TO_PBUFFER_ARB = common dso_local global i32 0, align 4
@MAX_FORMATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"No pbuffer compatible formats found while WGL_ARB_pbuffer is supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"nOnscreenFormats: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Total number of pbuffer capable pixelformats: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Selected iPixelFormat=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Pbuffer creation failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Unexpected iPixelFormat=%d returned by GetPixelFormat for format %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"iPixelFormat returned by GetPixelFormat: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"PixelFormat from wglChoosePixelFormatARB: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [111 x i8] c"Pbuffer test for onscreen pixelformat skipped as no onscreen format with pbuffer capabilities have been found\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Selected iPixelFormat: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [92 x i8] c"Unexpected iPixelFormat=%d (1 expected) returned by GetPixelFormat for offscreen format %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [117 x i8] c"Pbuffer test for offscreen pixelformat skipped as no offscreen-only format with pbuffer capabilities has been found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_pbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pbuffers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [3 x i32], align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %18 = load i32, i32* @WGL_DRAW_TO_PBUFFER_ARB, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @MAX_FORMATS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %4, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @DescribePixelFormat(i32 %25, i32 0, i32 0, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %29 = load i32, i32* @MAX_FORMATS, align 4
  %30 = call i32 @pwglChoosePixelFormatARB(i32 %27, i32* %28, i32* null, i32 %29, i32* %24, i32* %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = call i32 @skip(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %150

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @trace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %59, %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %24, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %24, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %40

62:                                               ; preds = %51, %40
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @pwglCreatePbufferARB(i32 %66, i32 %67, i32 640, i32 480, i32* %13)
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = call i32 @skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @pwglGetPbufferDCARB(i64 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @GetPixelFormat(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %14, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @pwglReleasePbufferDCARB(i64 %89, i32 %90)
  br label %94

92:                                               ; preds = %62
  %93 = call i32 @skip(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %73
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %24, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %24, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %111)
  br label %117

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %95

117:                                              ; preds = %106, %95
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i64 @pwglCreatePbufferARB(i32 %121, i32 %122, i32 640, i32 480, i32* null)
  store i64 %123, i64* %16, align 8
  %124 = load i64, i64* %16, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = load i64, i64* %16, align 8
  %128 = call i32 @pwglGetPbufferDCARB(i64 %127)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @GetPixelFormat(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 1
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.10, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @trace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %16, align 8
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @pwglReleasePbufferDCARB(i64 %141, i32 %142)
  br label %146

144:                                              ; preds = %120
  %145 = call i32 @skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %126
  br label %149

147:                                              ; preds = %117
  %148 = call i32 @skip(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.11, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %146
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %149, %33
  %151 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %11, align 4
  switch i32 %152, label %154 [
    i32 0, label %153
    i32 1, label %153
  ]

153:                                              ; preds = %150, %150
  ret void

154:                                              ; preds = %150
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DescribePixelFormat(i32, i32, i32, i32*) #2

declare dso_local i32 @pwglChoosePixelFormatARB(i32, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @trace(i8*, i32) #2

declare dso_local i64 @pwglCreatePbufferARB(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @pwglGetPbufferDCARB(i64) #2

declare dso_local i32 @GetPixelFormat(i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

declare dso_local i32 @pwglReleasePbufferDCARB(i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

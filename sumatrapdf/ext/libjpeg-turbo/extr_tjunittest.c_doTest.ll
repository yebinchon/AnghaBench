; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_doTest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c_doTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc = common dso_local global i32 0, align 4
@yuv = common dso_local global i64 0, align 8
@YUVENCODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure.\00", align 1
@TJSAMP_422 = common dso_local global i32 0, align 4
@TJSAMP_420 = common dso_local global i32 0, align 4
@TJSAMP_440 = common dso_local global i32 0, align 4
@TJFLAG_FASTUPSAMPLE = common dso_local global i32 0, align 4
@YUVDECODE = common dso_local global i64 0, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@TJPF_RGBX = common dso_local global i32 0, align 4
@TJPF_XRGB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TJPF_RGBA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"--------------------\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doTest(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %21 = load i32, i32* @alloc, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* @yuv, align 8
  %25 = load i64, i64* @YUVENCODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @tjBufSizeYUV(i32 %28, i32 %29, i32 %30)
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @tjBufSize(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i64 [ %31, %27 ], [ %36, %32 ]
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = call i64 @tjAlloc(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %15, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @_throw(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  br label %46

46:                                               ; preds = %45, %6
  %47 = call i32* (...) @tjInitCompress()
  store i32* %47, i32** %13, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = call i32* (...) @tjInitDecompress()
  store i32* %50, i32** %14, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %46
  %53 = call i32 (...) @_throwtj()
  br label %54

54:                                               ; preds = %52, %49
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %145, %54
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %148

59:                                               ; preds = %55
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %141, %59
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %144

63:                                               ; preds = %60
  store i32 0, i32* %20, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @TJSAMP_422, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @TJSAMP_420, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @TJSAMP_440, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %67, %63
  %76 = load i32, i32* @TJFLAG_FASTUPSAMPLE, align 4
  %77 = load i32, i32* %20, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %20, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %19, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i64, i64* @yuv, align 8
  %84 = load i64, i64* @YUVDECODE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %150

87:                                               ; preds = %82
  %88 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %89 = load i32, i32* %20, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %20, align 4
  br label %91

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %18, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i8*, i8** %12, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %20, align 4
  %105 = call i32 @compTest(i32* %98, i8** %15, i64* %16, i32 %99, i32 %100, i32 %101, i8* %102, i32 %103, i32 100, i32 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %20, align 4
  %115 = call i32 @decompTest(i32* %106, i8* %107, i64 %108, i32 %109, i32 %110, i32 %111, i8* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @TJPF_RGBX, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %92
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @TJPF_XRGB, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32*, i32** %14, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* @TJPF_RGBA, align 4
  %132 = load i32, i32* @TJPF_RGBX, align 4
  %133 = sub nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  %135 = load i8*, i8** %12, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %20, align 4
  %138 = call i32 @decompTest(i32* %125, i8* %126, i64 %127, i32 %128, i32 %129, i32 %134, i8* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %123, %119, %92
  %140 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %60

144:                                              ; preds = %60
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %55

148:                                              ; preds = %55
  %149 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %86
  %151 = load i32*, i32** %13, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @tjDestroy(i32* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32*, i32** %14, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32*, i32** %14, align 8
  %161 = call i32 @tjDestroy(i32* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i8*, i8** %15, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i8*, i8** %15, align 8
  %167 = call i32 @tjFree(i8* %166)
  br label %168

168:                                              ; preds = %165, %162
  ret void
}

declare dso_local i64 @tjBufSizeYUV(i32, i32, i32) #1

declare dso_local i64 @tjBufSize(i32, i32, i32) #1

declare dso_local i64 @tjAlloc(i64) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32* @tjInitCompress(...) #1

declare dso_local i32* @tjInitDecompress(...) #1

declare dso_local i32 @_throwtj(...) #1

declare dso_local i32 @compTest(i32*, i8**, i64*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @decompTest(i32*, i8*, i64, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tjDestroy(i32*) #1

declare dso_local i32 @tjFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

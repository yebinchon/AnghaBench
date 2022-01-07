; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c__decompTest.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libjpeg-turbo/extr_tjunittest.c__decompTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@yuv = common dso_local global i64 0, align 8
@YUVENCODE = common dso_local global i64 0, align 8
@YUVDECODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"JPEG -> YUV %s ... \00", align 1
@subNameLong = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"JPEG -> %s %s \00", align 1
@pixFormatStr = common dso_local global i8** null, align 8
@TJFLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Bottom-Up\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Top-Down \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%d/%d ... \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"... \00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Incorrect JPEG header\00", align 1
@tjPixelSize = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"Memory allocation failure\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Passed.\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"FAILED!\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"  %f ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_decompTest(i32 %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i64 %9) #0 {
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = bitcast %struct.TYPE_5__* %11 to i64*
  store i64 %9, i64* %29, align 4
  store i32 %0, i32* %12, align 4
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %30 = load i32, i32* %15, align 4
  %31 = bitcast %struct.TYPE_5__* %11 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @TJSCALED(i32 %30, i64 %32)
  store i32 %33, i32* %26, align 4
  %34 = load i32, i32* %16, align 4
  %35 = bitcast %struct.TYPE_5__* %11 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @TJSCALED(i32 %34, i64 %36)
  store i32 %37, i32* %27, align 4
  store i64 0, i64* %28, align 8
  %38 = load i64, i64* @yuv, align 8
  %39 = load i64, i64* @YUVENCODE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %10
  br label %200

42:                                               ; preds = %10
  %43 = load i64, i64* @yuv, align 8
  %44 = load i64, i64* @YUVDECODE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8**, i8*** @subNameLong, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %82

53:                                               ; preds = %42
  %54 = load i8**, i8*** @pixFormatStr, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* @TJFLAG_BOTTOMUP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %73, label %69

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %53
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %77)
  br label %81

79:                                               ; preds = %69
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i32, i32* %12, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @tjDecompressHeader2(i32 %83, i8* %84, i64 %85, i32* %22, i32* %23, i32* %24)
  %87 = call i32 @_tj(i32 %86)
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %24, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95, %91, %82
  %100 = call i32 @_throw(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i64, i64* @yuv, align 8
  %103 = load i64, i64* @YUVDECODE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %19, align 4
  %109 = call i64 @tjBufSizeYUV(i32 %106, i32 %107, i32 %108)
  store i64 %109, i64* %28, align 8
  br label %121

110:                                              ; preds = %101
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %27, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32*, i32** @tjPixelSize, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %113, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %28, align 8
  br label %121

121:                                              ; preds = %110, %105
  %122 = load i64, i64* %28, align 8
  %123 = call i64 @malloc(i64 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** %21, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 @_throw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  %129 = load i8*, i8** %21, align 8
  %130 = load i64, i64* %28, align 8
  %131 = call i32 @memset(i8* %129, i32 0, i64 %130)
  %132 = call double (...) @gettime()
  store double %132, double* %25, align 8
  %133 = load i64, i64* @yuv, align 8
  %134 = load i64, i64* @YUVDECODE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load i32, i32* %12, align 4
  %138 = load i8*, i8** %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i8*, i8** %21, align 8
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @tjDecompressToYUV(i32 %137, i8* %138, i64 %139, i8* %140, i32 %141)
  %143 = call i32 @_tj(i32 %142)
  br label %155

144:                                              ; preds = %128
  %145 = load i32, i32* %12, align 4
  %146 = load i8*, i8** %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @tjDecompress2(i32 %145, i8* %146, i64 %147, i8* %148, i32 %149, i32 0, i32 %150, i32 %151, i32 %152)
  %154 = call i32 @_tj(i32 %153)
  br label %155

155:                                              ; preds = %144, %136
  %156 = call double (...) @gettime()
  %157 = load double, double* %25, align 8
  %158 = fsub double %156, %157
  store double %158, double* %25, align 8
  %159 = load i64, i64* @yuv, align 8
  %160 = load i64, i64* @YUVDECODE, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %155
  %163 = load i8*, i8** %21, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %19, align 4
  %167 = call i64 @checkBufYUV(i8* %163, i32 %164, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %173

171:                                              ; preds = %162
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %169
  br label %190

174:                                              ; preds = %155
  %175 = load i8*, i8** %21, align 8
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %20, align 4
  %181 = bitcast %struct.TYPE_5__* %11 to i64*
  %182 = load i64, i64* %181, align 4
  %183 = call i64 @checkBuf(i8* %175, i32 %176, i32 %177, i32 %178, i32 %179, i64 %182, i32 %180)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %174
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %189

187:                                              ; preds = %174
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %185
  br label %190

190:                                              ; preds = %189, %173
  %191 = load double, double* %25, align 8
  %192 = fmul double %191, 1.000000e+03
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), double %192)
  br label %194

194:                                              ; preds = %190
  %195 = load i8*, i8** %21, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %21, align 8
  %199 = call i32 @free(i8* %198)
  br label %200

200:                                              ; preds = %41, %197, %194
  ret void
}

declare dso_local i32 @TJSCALED(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @_tj(i32) #1

declare dso_local i32 @tjDecompressHeader2(i32, i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i64 @tjBufSizeYUV(i32, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local double @gettime(...) #1

declare dso_local i32 @tjDecompressToYUV(i32, i8*, i64, i8*, i32) #1

declare dso_local i32 @tjDecompress2(i32, i8*, i64, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @checkBufYUV(i8*, i32, i32, i32) #1

declare dso_local i64 @checkBuf(i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGBD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckGBD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Filling RAW gamut\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"computing Lab gamut\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"checking Lab gamut\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"checking sRGB gamut\00", align 1
@TYPE_RGB_8 = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@INTENT_RELATIVE_COLORIMETRIC = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"checking LCh chroma ring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckGBD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckGBD() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  %15 = alloca %struct.TYPE_9__, align 4
  %16 = call i32 (...) @DbgThread()
  %17 = call i32* @cmsGBDAlloc(i32 %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %269

21:                                               ; preds = %0
  %22 = call i32 @SubTest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %55, %21
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 100
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  store i32 -128, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, 128
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  store i32 -128, i32* %6, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp sle i32 %32, 128
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = call i32 (...) @DbgThread()
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @cmsGDBAddPoint(i32 %41, i32* %42, %struct.TYPE_8__* %2)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %269

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 5
  store i32 %49, i32* %6, align 4
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 5
  store i32 %53, i32* %5, align 4
  br label %27

54:                                               ; preds = %27
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 10
  store i32 %57, i32* %4, align 4
  br label %23

58:                                               ; preds = %23
  %59 = call i32 @SubTest(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (...) @DbgThread()
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @cmsGDBCompute(i32 %60, i32* %61, i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %269

65:                                               ; preds = %58
  %66 = call i32 @SubTest(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 10, i32* %4, align 4
  br label %67

67:                                               ; preds = %99, %65
  %68 = load i32, i32* %4, align 4
  %69 = icmp sle i32 %68, 90
  br i1 %69, label %70, label %102

70:                                               ; preds = %67
  store i32 -120, i32* %5, align 4
  br label %71

71:                                               ; preds = %95, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp sle i32 %72, 120
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  store i32 -120, i32* %6, align 4
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 120
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = call i32 (...) @DbgThread()
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @cmsGDBCheckPoint(i32 %85, i32* %86, %struct.TYPE_8__* %2)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  store i32 0, i32* %1, align 4
  br label %269

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 25
  store i32 %93, i32* %6, align 4
  br label %75

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 25
  store i32 %97, i32* %5, align 4
  br label %71

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 25
  store i32 %101, i32* %4, align 4
  br label %67

102:                                              ; preds = %67
  %103 = call i32 (...) @DbgThread()
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @cmsGBDFree(i32 %103, i32* %104)
  %106 = call i32 @SubTest(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %107 = call i32 (...) @DbgThread()
  %108 = call i32* @cmsGBDAlloc(i32 %107)
  store i32* %108, i32** %3, align 8
  %109 = call i32 (...) @DbgThread()
  %110 = call i32 @cmsCreate_sRGBProfile(i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = call i32 (...) @DbgThread()
  %112 = call i32 @cmsCreateLab4Profile(i32 %111, i32* null)
  store i32 %112, i32* %10, align 4
  %113 = call i32 (...) @DbgThread()
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @TYPE_RGB_8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @TYPE_Lab_DBL, align 4
  %118 = load i32, i32* @INTENT_RELATIVE_COLORIMETRIC, align 4
  %119 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %120 = call i32 @cmsCreateTransform(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = call i32 (...) @DbgThread()
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @cmsCloseProfile(i32 %121, i32 %122)
  %124 = call i32 (...) @DbgThread()
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @cmsCloseProfile(i32 %124, i32 %125)
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %169, %102
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 256
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %165, %130
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 256
  br i1 %133, label %134, label %168

134:                                              ; preds = %131
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %161, %134
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 256
  br i1 %137, label %138, label %164

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  store i64 %140, i64* %141, align 16
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 1
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 2
  store i64 %146, i64* %147, align 16
  %148 = call i32 (...) @DbgThread()
  %149 = load i32, i32* %12, align 4
  %150 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %151 = call i32 @cmsDoTransform(i32 %148, i32 %149, i64* %150, %struct.TYPE_8__* %2, i32 1)
  %152 = call i32 (...) @DbgThread()
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @cmsGDBAddPoint(i32 %152, i32* %153, %struct.TYPE_8__* %2)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %138
  %157 = call i32 (...) @DbgThread()
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @cmsGBDFree(i32 %157, i32* %158)
  store i32 0, i32* %1, align 4
  br label %269

160:                                              ; preds = %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 5
  store i32 %163, i32* %9, align 4
  br label %135

164:                                              ; preds = %135
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 5
  store i32 %167, i32* %8, align 4
  br label %131

168:                                              ; preds = %131
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 5
  store i32 %171, i32* %7, align 4
  br label %127

172:                                              ; preds = %127
  %173 = call i32 (...) @DbgThread()
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @cmsGDBCompute(i32 %173, i32* %174, i32 0)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172
  store i32 0, i32* %1, align 4
  br label %269

178:                                              ; preds = %172
  store i32 10, i32* %7, align 4
  br label %179

179:                                              ; preds = %224, %178
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 200
  br i1 %181, label %182, label %227

182:                                              ; preds = %179
  store i32 10, i32* %8, align 4
  br label %183

183:                                              ; preds = %220, %182
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %184, 200
  br i1 %185, label %186, label %223

186:                                              ; preds = %183
  store i32 10, i32* %9, align 4
  br label %187

187:                                              ; preds = %216, %186
  %188 = load i32, i32* %9, align 4
  %189 = icmp slt i32 %188, 200
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %192, i64* %193, align 16
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %195, i64* %196, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %198, i64* %199, align 16
  %200 = call i32 (...) @DbgThread()
  %201 = load i32, i32* %12, align 4
  %202 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %203 = call i32 @cmsDoTransform(i32 %200, i32 %201, i64* %202, %struct.TYPE_8__* %2, i32 1)
  %204 = call i32 (...) @DbgThread()
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @cmsGDBCheckPoint(i32 %204, i32* %205, %struct.TYPE_8__* %2)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %190
  %209 = call i32 (...) @DbgThread()
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @cmsDeleteTransform(i32 %209, i32 %210)
  %212 = call i32 (...) @DbgThread()
  %213 = load i32*, i32** %3, align 8
  %214 = call i32 @cmsGBDFree(i32 %212, i32* %213)
  store i32 0, i32* %1, align 4
  br label %269

215:                                              ; preds = %190
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 10
  store i32 %218, i32* %9, align 4
  br label %187

219:                                              ; preds = %187
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 10
  store i32 %222, i32* %8, align 4
  br label %183

223:                                              ; preds = %183
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 10
  store i32 %226, i32* %7, align 4
  br label %179

227:                                              ; preds = %179
  %228 = call i32 (...) @DbgThread()
  %229 = load i32, i32* %12, align 4
  %230 = call i32 @cmsDeleteTransform(i32 %228, i32 %229)
  %231 = call i32 (...) @DbgThread()
  %232 = load i32*, i32** %3, align 8
  %233 = call i32 @cmsGBDFree(i32 %231, i32* %232)
  %234 = call i32 @SubTest(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %235 = call i32 (...) @DbgThread()
  %236 = call i32* @cmsGBDAlloc(i32 %235)
  store i32* %236, i32** %3, align 8
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %256, %227
  %238 = load i32, i32* %7, align 4
  %239 = icmp slt i32 %238, 360
  br i1 %239, label %240, label %259

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 70, i32* %241, align 4
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  store i32 60, i32* %242, align 4
  %243 = load i32, i32* %7, align 4
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %243, i32* %244, align 4
  %245 = call i32 (...) @DbgThread()
  %246 = call i32 @cmsLCh2Lab(i32 %245, %struct.TYPE_8__* %2, %struct.TYPE_9__* %15)
  %247 = call i32 (...) @DbgThread()
  %248 = load i32*, i32** %3, align 8
  %249 = call i32 @cmsGDBAddPoint(i32 %247, i32* %248, %struct.TYPE_8__* %2)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %240
  %252 = call i32 (...) @DbgThread()
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @cmsGBDFree(i32 %252, i32* %253)
  store i32 0, i32* %1, align 4
  br label %269

255:                                              ; preds = %240
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %237

259:                                              ; preds = %237
  %260 = call i32 (...) @DbgThread()
  %261 = load i32*, i32** %3, align 8
  %262 = call i32 @cmsGDBCompute(i32 %260, i32* %261, i32 0)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %259
  store i32 0, i32* %1, align 4
  br label %269

265:                                              ; preds = %259
  %266 = call i32 (...) @DbgThread()
  %267 = load i32*, i32** %3, align 8
  %268 = call i32 @cmsGBDFree(i32 %266, i32* %267)
  store i32 1, i32* %1, align 4
  br label %269

269:                                              ; preds = %265, %264, %251, %208, %177, %156, %89, %64, %45, %20
  %270 = load i32, i32* %1, align 4
  ret i32 %270
}

declare dso_local i32* @cmsGBDAlloc(i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @SubTest(i8*) #1

declare dso_local i32 @cmsGDBAddPoint(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cmsGDBCompute(i32, i32*, i32) #1

declare dso_local i32 @cmsGDBCheckPoint(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @cmsGBDFree(i32, i32*) #1

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i64*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

declare dso_local i32 @cmsLCh2Lab(i32, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

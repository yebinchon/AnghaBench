; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_tgatoimage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_tgatoimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to open %s for reading !!\0A\00", align 1
@CLRSPC_GRAY = common dso_local global i32 0, align 4
@CLRSPC_SRGB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"\0AError: fread return a number of element different from the expected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Currently unsupported bit depth : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @tgatoimage(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x %struct.TYPE_13__], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %13, align 4
  %30 = load i8*, i8** %4, align 8
  %31 = call i32* @fopen(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

38:                                               ; preds = %2
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @tga_readheader(i32* %39, i32* %10, i32* %8, i32* %9, i32* %13)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 24
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

50:                                               ; preds = %46, %43
  %51 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %52 = call i32 @memset(%struct.TYPE_13__* %51, i32 0, i32 128)
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 16
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi i1 [ true, %50 ], [ %57, %55 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 16
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 32
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i1 [ true, %58 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* @CLRSPC_GRAY, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 2, i32 1
  store i32 %76, i32* %15, align 4
  br label %83

77:                                               ; preds = %66
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 4, i32 3
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* @CLRSPC_SRGB, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %19, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %127, %83
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %130

94:                                               ; preds = %90
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  store i32 8, i32* %98, align 16
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i32 8, i32* %102, align 4
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  store i32 %117, i32* %121, align 16
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 5
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %94
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %21, align 4
  br label %90

130:                                              ; preds = %90
  %131 = load i32, i32* %15, align 4
  %132 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %133 = load i32, i32* %16, align 4
  %134 = call %struct.TYPE_12__* @opj_image_create(i32 %131, %struct.TYPE_13__* %132, i32 %133)
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %7, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = icmp ne %struct.TYPE_12__* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

138:                                              ; preds = %130
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %138
  %154 = load i32, i32* %8, align 4
  %155 = sub i32 %154, 1
  %156 = load i32, i32* %19, align 4
  %157 = mul i32 %155, %156
  %158 = add i32 %157, 1
  br label %169

159:                                              ; preds = %138
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sub i32 %163, 1
  %165 = load i32, i32* %19, align 4
  %166 = mul i32 %164, %165
  %167 = add i32 %162, %166
  %168 = add i32 %167, 1
  br label %169

169:                                              ; preds = %159, %153
  %170 = phi i32 [ %158, %153 ], [ %168, %159 ]
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %9, align 4
  %179 = sub i32 %178, 1
  %180 = load i32, i32* %20, align 4
  %181 = mul i32 %179, %180
  %182 = add i32 %181, 1
  br label %193

183:                                              ; preds = %169
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sub i32 %187, 1
  %189 = load i32, i32* %20, align 4
  %190 = mul i32 %188, %189
  %191 = add i32 %186, %190
  %192 = add i32 %191, 1
  br label %193

193:                                              ; preds = %183, %177
  %194 = phi i32 [ %182, %177 ], [ %192, %183 ]
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %384, %193
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %387

201:                                              ; preds = %197
  %202 = load i32, i32* %13, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %12, align 4
  %207 = sub i32 %205, %206
  %208 = sub i32 %207, 1
  %209 = load i32, i32* %8, align 4
  %210 = mul i32 %208, %209
  store i32 %210, i32* %22, align 4
  br label %215

211:                                              ; preds = %201
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %8, align 4
  %214 = mul i32 %212, %213
  store i32 %214, i32* %22, align 4
  br label %215

215:                                              ; preds = %211, %204
  %216 = load i32, i32* %15, align 4
  %217 = icmp eq i32 %216, 3
  br i1 %217, label %218, label %287

218:                                              ; preds = %215
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %283, %218
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %223, label %286

223:                                              ; preds = %219
  %224 = load i32*, i32** %6, align 8
  %225 = call i32 @fread(i8* %25, i32 1, i32 1, i32* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %223
  %228 = load i32, i32* @stderr, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %231 = call i32 @opj_image_destroy(%struct.TYPE_12__* %230)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

232:                                              ; preds = %223
  %233 = load i32*, i32** %6, align 8
  %234 = call i32 @fread(i8* %24, i32 1, i32 1, i32* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* @stderr, align 4
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %237, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %240 = call i32 @opj_image_destroy(%struct.TYPE_12__* %239)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

241:                                              ; preds = %232
  %242 = load i32*, i32** %6, align 8
  %243 = call i32 @fread(i8* %23, i32 1, i32 1, i32* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %241
  %246 = load i32, i32* @stderr, align 4
  %247 = call i32 (i32, i8*, ...) @fprintf(i32 %246, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %249 = call i32 @opj_image_destroy(%struct.TYPE_12__* %248)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

250:                                              ; preds = %241
  %251 = load i8, i8* %23, align 1
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* %22, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8 %251, i8* %260, align 1
  %261 = load i8, i8* %24, align 1
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %22, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %267, i64 %269
  store i8 %261, i8* %270, align 1
  %271 = load i8, i8* %25, align 1
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 4
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 2
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* %22, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  store i8 %271, i8* %280, align 1
  %281 = load i32, i32* %22, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %22, align 4
  br label %283

283:                                              ; preds = %250
  %284 = load i32, i32* %11, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %11, align 4
  br label %219

286:                                              ; preds = %219
  br label %383

287:                                              ; preds = %215
  %288 = load i32, i32* %15, align 4
  %289 = icmp eq i32 %288, 4
  br i1 %289, label %290, label %378

290:                                              ; preds = %287
  store i32 0, i32* %11, align 4
  br label %291

291:                                              ; preds = %374, %290
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ult i32 %292, %293
  br i1 %294, label %295, label %377

295:                                              ; preds = %291
  %296 = load i32*, i32** %6, align 8
  %297 = call i32 @fread(i8* %28, i32 1, i32 1, i32* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %295
  %300 = load i32, i32* @stderr, align 4
  %301 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %303 = call i32 @opj_image_destroy(%struct.TYPE_12__* %302)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

304:                                              ; preds = %295
  %305 = load i32*, i32** %6, align 8
  %306 = call i32 @fread(i8* %27, i32 1, i32 1, i32* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* @stderr, align 4
  %310 = call i32 (i32, i8*, ...) @fprintf(i32 %309, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %312 = call i32 @opj_image_destroy(%struct.TYPE_12__* %311)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

313:                                              ; preds = %304
  %314 = load i32*, i32** %6, align 8
  %315 = call i32 @fread(i8* %26, i32 1, i32 1, i32* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %313
  %318 = load i32, i32* @stderr, align 4
  %319 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %321 = call i32 @opj_image_destroy(%struct.TYPE_12__* %320)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

322:                                              ; preds = %313
  %323 = load i32*, i32** %6, align 8
  %324 = call i32 @fread(i8* %29, i32 1, i32 1, i32* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %322
  %327 = load i32, i32* @stderr, align 4
  %328 = call i32 (i32, i8*, ...) @fprintf(i32 %327, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %330 = call i32 @opj_image_destroy(%struct.TYPE_12__* %329)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %389

331:                                              ; preds = %322
  %332 = load i8, i8* %26, align 1
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 4
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = load i32, i32* %22, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %338, i64 %340
  store i8 %332, i8* %341, align 1
  %342 = load i8, i8* %27, align 1
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 4
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i64 1
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = load i32, i32* %22, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %348, i64 %350
  store i8 %342, i8* %351, align 1
  %352 = load i8, i8* %28, align 1
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 4
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i64 2
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = load i32, i32* %22, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  store i8 %352, i8* %361, align 1
  %362 = load i8, i8* %29, align 1
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 4
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i64 3
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* %22, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  store i8 %362, i8* %371, align 1
  %372 = load i32, i32* %22, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %22, align 4
  br label %374

374:                                              ; preds = %331
  %375 = load i32, i32* %11, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %11, align 4
  br label %291

377:                                              ; preds = %291
  br label %382

378:                                              ; preds = %287
  %379 = load i32, i32* @stderr, align 4
  %380 = load i8*, i8** %4, align 8
  %381 = call i32 (i32, i8*, ...) @fprintf(i32 %379, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %380)
  br label %382

382:                                              ; preds = %378, %377
  br label %383

383:                                              ; preds = %382, %286
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %12, align 4
  %386 = add i32 %385, 1
  store i32 %386, i32* %12, align 4
  br label %197

387:                                              ; preds = %197
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %388, %struct.TYPE_12__** %3, align 8
  br label %389

389:                                              ; preds = %387, %326, %317, %308, %299, %245, %236, %227, %137, %49, %42, %34
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %390
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @tga_readheader(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @opj_image_create(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

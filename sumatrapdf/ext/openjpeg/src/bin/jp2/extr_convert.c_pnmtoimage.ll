; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_pnmtoimage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_pnmtoimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.pnm_header = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i64, i8*, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pnmtoimage:Failed to open %s for reading!\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"pnmtoimage:Image %dx%d too big!\0A\00", align 1
@OPJ_CLRSPC_GRAY = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"\0AWARNING: fscanf return a number of element different from the expected.\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"\0AError: fread return a number of element different from the expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @pnmtoimage(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x %struct.pnm_header], align 16
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.pnm_header, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %37, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %508

43:                                               ; preds = %2
  %44 = call i32 @memset(%struct.pnm_header* %19, i32 0, i64 128)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @read_pnm_header(i32* %45, %struct.pnm_header* %19)
  %47 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 17
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @fclose(i32* %51)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %508

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @INT_MAX, align 4
  %61 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %60, %62
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32, i32* @stderr, align 4
  %67 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @fclose(i32* %72)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %508

74:                                               ; preds = %57, %53
  %75 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  switch i32 %77, label %84 [
    i32 1, label %78
    i32 4, label %78
    i32 2, label %79
    i32 5, label %79
    i32 3, label %80
    i32 6, label %80
    i32 7, label %81
  ]

78:                                               ; preds = %74, %74
  store i32 1, i32* %11, align 4
  br label %87

79:                                               ; preds = %74, %74
  store i32 1, i32* %11, align 4
  br label %87

80:                                               ; preds = %74, %74
  store i32 3, i32* %11, align 4
  br label %87

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  br label %87

84:                                               ; preds = %74
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @fclose(i32* %85)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %508

87:                                               ; preds = %81, %80, %79, %78
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @OPJ_CLRSPC_GRAY, align 4
  store i32 %91, i32* %16, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @has_prec(i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 8
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 8, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %94
  %102 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %12, align 4
  %104 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %13, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %6, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  %112 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 0
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 128
  %116 = call i32 @memset(%struct.pnm_header* %112, i32 0, i64 %115)
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %168, %101
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %171

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %127, i32 0, i32 16
  store i8* %124, i8** %128, align 16
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %134, i32 0, i32 15
  store i8* %131, i8** %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %138, i32 0, i32 14
  store i64 0, i64* %139, align 16
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %145, i32 0, i32 13
  store i8* %142, i8** %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %152, i32 0, i32 12
  store i8* %149, i8** %153, align 16
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %159, i32 0, i32 11
  store i8* %156, i8** %160, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %166, i32 0, i32 10
  store i8* %163, i8** %167, align 16
  br label %168

168:                                              ; preds = %121
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %117

171:                                              ; preds = %117
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = getelementptr inbounds [4 x %struct.pnm_header], [4 x %struct.pnm_header]* %17, i64 0, i64 0
  %176 = load i32, i32* %16, align 4
  %177 = call %struct.TYPE_9__* @opj_image_create(i8* %174, %struct.pnm_header* %175, i32 %176)
  store %struct.TYPE_9__* %177, %struct.TYPE_9__** %18, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %179 = icmp ne %struct.TYPE_9__* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %171
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @fclose(i32* %181)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %508

183:                                              ; preds = %171
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 4
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load i32, i32* %6, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %198, %203
  %205 = add nsw i64 %204, 1
  %206 = inttoptr i64 %205 to i8*
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sub nsw i32 %212, 1
  %214 = load i32, i32* %7, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %211, %216
  %218 = add nsw i64 %217, 1
  %219 = inttoptr i64 %218 to i8*
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %15, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %227, label %224

224:                                              ; preds = %183
  %225 = load i32, i32* %15, align 4
  %226 = icmp eq i32 %225, 3
  br i1 %226, label %227, label %271

227:                                              ; preds = %224, %183
  store i32 0, i32* %9, align 4
  br label %228

228:                                              ; preds = %267, %227
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* %13, align 4
  %232 = mul nsw i32 %230, %231
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %270

234:                                              ; preds = %228
  store i32 0, i32* %10, align 4
  br label %235

235:                                              ; preds = %263, %234
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %235
  store i32 0, i32* %20, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = call i32 @fscanf(i32* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %20)
  %242 = icmp ne i32 %241, 1
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i32, i32* @stderr, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %239
  %247 = load i32, i32* %20, align 4
  %248 = mul i32 %247, 255
  %249 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = sdiv i32 %248, %250
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %251, i32* %262, align 4
  br label %263

263:                                              ; preds = %246
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %235

266:                                              ; preds = %235
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %228

270:                                              ; preds = %228
  br label %504

271:                                              ; preds = %224
  %272 = load i32, i32* %15, align 4
  %273 = icmp eq i32 %272, 5
  br i1 %273, label %296, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %15, align 4
  %276 = icmp eq i32 %275, 6
  br i1 %276, label %296, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %15, align 4
  %279 = icmp eq i32 %278, 7
  br i1 %279, label %280, label %374

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %296, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 8
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %296, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 7
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 6
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %374

296:                                              ; preds = %292, %288, %284, %280, %274, %271
  %297 = load i32, i32* %14, align 4
  %298 = icmp slt i32 %297, 9
  %299 = zext i1 %298 to i32
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %23, align 1
  store i32 0, i32* %9, align 4
  br label %301

301:                                              ; preds = %370, %296
  %302 = load i32, i32* %9, align 4
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %13, align 4
  %305 = mul nsw i32 %303, %304
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %373

307:                                              ; preds = %301
  store i32 0, i32* %10, align 4
  br label %308

308:                                              ; preds = %366, %307
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %11, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %369

312:                                              ; preds = %308
  %313 = load i32*, i32** %8, align 8
  %314 = call i32 @fread(i8* %21, i32 1, i32 1, i32* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %312
  %317 = load i32, i32* @stderr, align 4
  %318 = call i32 (i32, i8*, ...) @fprintf(i32 %317, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %320 = call i32 @opj_image_destroy(%struct.TYPE_9__* %319)
  %321 = load i32*, i32** %8, align 8
  %322 = call i32 @fclose(i32* %321)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %508

323:                                              ; preds = %312
  %324 = load i8, i8* %23, align 1
  %325 = icmp ne i8 %324, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %323
  %327 = load i8, i8* %21, align 1
  %328 = zext i8 %327 to i32
  %329 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %328, i32* %339, align 4
  br label %365

340:                                              ; preds = %323
  %341 = load i32*, i32** %8, align 8
  %342 = call i32 @fread(i8* %22, i32 1, i32 1, i32* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = load i32, i32* @stderr, align 4
  %346 = call i32 (i32, i8*, ...) @fprintf(i32 %345, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  br label %347

347:                                              ; preds = %344, %340
  %348 = load i8, i8* %21, align 1
  %349 = zext i8 %348 to i32
  %350 = shl i32 %349, 8
  %351 = load i8, i8* %22, align 1
  %352 = zext i8 %351 to i32
  %353 = or i32 %350, %352
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %355, align 8
  %357 = load i32, i32* %10, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %353, i32* %364, align 4
  br label %365

365:                                              ; preds = %347, %326
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %10, align 4
  br label %308

369:                                              ; preds = %308
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %9, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %9, align 4
  br label %301

373:                                              ; preds = %301
  br label %503

374:                                              ; preds = %292, %277
  %375 = load i32, i32* %15, align 4
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %409

377:                                              ; preds = %374
  store i32 0, i32* %9, align 4
  br label %378

378:                                              ; preds = %405, %377
  %379 = load i32, i32* %9, align 4
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %13, align 4
  %382 = mul nsw i32 %380, %381
  %383 = icmp slt i32 %379, %382
  br i1 %383, label %384, label %408

384:                                              ; preds = %378
  %385 = load i32*, i32** %8, align 8
  %386 = call i32 @fscanf(i32* %385, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %24)
  %387 = icmp ne i32 %386, 1
  br i1 %387, label %388, label %391

388:                                              ; preds = %384
  %389 = load i32, i32* @stderr, align 4
  %390 = call i32 (i32, i8*, ...) @fprintf(i32 %389, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  br label %391

391:                                              ; preds = %388, %384
  %392 = load i32, i32* %24, align 4
  %393 = icmp ne i32 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 0, i32 255
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i64 0
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  store i32 %395, i32* %404, align 4
  br label %405

405:                                              ; preds = %391
  %406 = load i32, i32* %9, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %9, align 4
  br label %378

408:                                              ; preds = %378
  br label %502

409:                                              ; preds = %374
  %410 = load i32, i32* %15, align 4
  %411 = icmp eq i32 %410, 4
  br i1 %411, label %412, label %459

412:                                              ; preds = %409
  store i32 0, i32* %9, align 4
  store i32 0, i32* %26, align 4
  br label %413

413:                                              ; preds = %455, %412
  %414 = load i32, i32* %26, align 4
  %415 = load i32, i32* %13, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %458

417:                                              ; preds = %413
  store i32 -1, i32* %27, align 4
  store i8 0, i8* %28, align 1
  store i32 0, i32* %25, align 4
  br label %418

418:                                              ; preds = %451, %417
  %419 = load i32, i32* %25, align 4
  %420 = load i32, i32* %12, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %454

422:                                              ; preds = %418
  %423 = load i32, i32* %27, align 4
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %429

425:                                              ; preds = %422
  store i32 7, i32* %27, align 4
  %426 = load i32*, i32** %8, align 8
  %427 = call i64 @getc(i32* %426)
  %428 = trunc i64 %427 to i8
  store i8 %428, i8* %28, align 1
  br label %429

429:                                              ; preds = %425, %422
  %430 = load i8, i8* %28, align 1
  %431 = zext i8 %430 to i32
  %432 = load i32, i32* %27, align 4
  %433 = ashr i32 %431, %432
  %434 = and i32 %433, 1
  %435 = icmp ne i32 %434, 0
  %436 = zext i1 %435 to i64
  %437 = select i1 %435, i32 0, i32 255
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i64 0
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %9, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  store i32 %437, i32* %446, align 4
  %447 = load i32, i32* %27, align 4
  %448 = add nsw i32 %447, -1
  store i32 %448, i32* %27, align 4
  %449 = load i32, i32* %9, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %9, align 4
  br label %451

451:                                              ; preds = %429
  %452 = load i32, i32* %25, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %25, align 4
  br label %418

454:                                              ; preds = %418
  br label %455

455:                                              ; preds = %454
  %456 = load i32, i32* %26, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %26, align 4
  br label %413

458:                                              ; preds = %413
  br label %501

459:                                              ; preds = %409
  %460 = load i32, i32* %15, align 4
  %461 = icmp eq i32 %460, 7
  br i1 %461, label %462, label %500

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.pnm_header, %struct.pnm_header* %19, i32 0, i32 5
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %500

466:                                              ; preds = %462
  store i32 0, i32* %9, align 4
  br label %467

467:                                              ; preds = %496, %466
  %468 = load i32, i32* %9, align 4
  %469 = load i32, i32* %12, align 4
  %470 = load i32, i32* %13, align 4
  %471 = mul nsw i32 %469, %470
  %472 = icmp slt i32 %468, %471
  br i1 %472, label %473, label %499

473:                                              ; preds = %467
  %474 = load i32*, i32** %8, align 8
  %475 = call i32 @fread(i8* %29, i32 1, i32 1, i32* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %480, label %477

477:                                              ; preds = %473
  %478 = load i32, i32* @stderr, align 4
  %479 = call i32 (i32, i8*, ...) @fprintf(i32 %478, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  br label %480

480:                                              ; preds = %477, %473
  %481 = load i8, i8* %29, align 1
  %482 = zext i8 %481 to i32
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = zext i1 %484 to i64
  %486 = select i1 %484, i32 0, i32 255
  %487 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %488 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %487, i32 0, i32 0
  %489 = load %struct.TYPE_8__*, %struct.TYPE_8__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %489, i64 0
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 0
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %9, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  store i32 %486, i32* %495, align 4
  br label %496

496:                                              ; preds = %480
  %497 = load i32, i32* %9, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %9, align 4
  br label %467

499:                                              ; preds = %467
  br label %500

500:                                              ; preds = %499, %462, %459
  br label %501

501:                                              ; preds = %500, %458
  br label %502

502:                                              ; preds = %501, %408
  br label %503

503:                                              ; preds = %502, %373
  br label %504

504:                                              ; preds = %503, %270
  %505 = load i32*, i32** %8, align 8
  %506 = call i32 @fclose(i32* %505)
  %507 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %507, %struct.TYPE_9__** %3, align 8
  br label %508

508:                                              ; preds = %504, %316, %180, %84, %65, %50, %39
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %509
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.pnm_header*, i32, i64) #1

declare dso_local i32 @read_pnm_header(i32*, %struct.pnm_header*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @has_prec(i32) #1

declare dso_local %struct.TYPE_9__* @opj_image_create(i8*, %struct.pnm_header*, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_9__*) #1

declare dso_local i64 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

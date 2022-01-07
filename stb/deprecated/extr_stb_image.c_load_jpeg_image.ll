; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_load_jpeg_image.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_load_jpeg_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32* (i32*, i32, i32, i32, i32)*, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad req_comp\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Internal error\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32*, i32*, i32)* @load_jpeg_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_jpeg_image(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [4 x i32*], align 16
  %19 = alloca [4 x %struct.TYPE_10__], align 16
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %5
  %32 = call i32* @epuc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %6, align 8
  br label %532

33:                                               ; preds = %28
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = call i32 @decode_jpeg_image(%struct.TYPE_11__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = call i32 @cleanup_jpeg(%struct.TYPE_11__* %42)
  store i32* null, i32** %6, align 8
  br label %532

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  br label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %49 ]
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %13, align 4
  br label %73

67:                                               ; preds = %63, %55
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %67, %66
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %233, %73
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %236

78:                                               ; preds = %74
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %19, i64 0, i64 %80
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %20, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 3
  %88 = call i64 @malloc(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32* %89, i32** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %78
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %108 = call i32 @cleanup_jpeg(%struct.TYPE_11__* %107)
  %109 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %109, i32** %6, align 8
  br label %532

110:                                              ; preds = %78
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %113, %121
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sdiv i32 %127, %135
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %149, %152
  %154 = sub nsw i32 %153, 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sdiv i32 %154, %157
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 6
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 7
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %187

179:                                              ; preds = %110
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_1, i32* (i32*, i32, i32, i32, i32)** %186, align 8
  br label %232

187:                                              ; preds = %179, %110
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_v_2, i32* (i32*, i32, i32, i32, i32)** %199, align 8
  br label %231

200:                                              ; preds = %192, %187
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_h_2, i32* (i32*, i32, i32, i32, i32)** %212, align 8
  br label %230

213:                                              ; preds = %205, %200
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %226

218:                                              ; preds = %213
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_hv_2, i32* (i32*, i32, i32, i32, i32)** %225, align 8
  br label %229

226:                                              ; preds = %218, %213
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  store i32* (i32*, i32, i32, i32, i32)* @resample_row_generic, i32* (i32*, i32, i32, i32, i32)** %228, align 8
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %210
  br label %231

231:                                              ; preds = %230, %197
  br label %232

232:                                              ; preds = %231, %184
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %14, align 4
  br label %74

236:                                              ; preds = %74
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %237, %242
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %243, %248
  %250 = add nsw i32 %249, 1
  %251 = call i64 @malloc(i32 %250)
  %252 = inttoptr i64 %251 to i32*
  store i32* %252, i32** %17, align 8
  %253 = load i32*, i32** %17, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %236
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %257 = call i32 @cleanup_jpeg(%struct.TYPE_11__* %256)
  %258 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32* %258, i32** %6, align 8
  br label %532

259:                                              ; preds = %236
  store i32 0, i32* %16, align 4
  br label %260

260:                                              ; preds = %503, %259
  %261 = load i32, i32* %16, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = icmp ult i32 %261, %266
  br i1 %267, label %268, label %506

268:                                              ; preds = %260
  %269 = load i32*, i32** %17, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %270, %275
  %277 = load i32, i32* %16, align 4
  %278 = mul i32 %276, %277
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %269, i64 %279
  store i32* %280, i32** %21, align 8
  store i32 0, i32* %14, align 4
  br label %281

281:                                              ; preds = %389, %268
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* %13, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %392

285:                                              ; preds = %281
  %286 = load i32, i32* %14, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [4 x %struct.TYPE_10__], [4 x %struct.TYPE_10__]* %19, i64 0, i64 %287
  store %struct.TYPE_10__* %288, %struct.TYPE_10__** %22, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = ashr i32 %294, 1
  %296 = icmp sge i32 %291, %295
  %297 = zext i1 %296 to i32
  store i32 %297, i32* %23, align 4
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 5
  %300 = load i32* (i32*, i32, i32, i32, i32)*, i32* (i32*, i32, i32, i32, i32)** %299, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = load i32, i32* %14, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %23, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %285
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  br label %319

315:                                              ; preds = %285
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  br label %319

319:                                              ; preds = %315, %311
  %320 = phi i32 [ %314, %311 ], [ %318, %315 ]
  %321 = load i32, i32* %23, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %319
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 4
  br label %331

327:                                              ; preds = %319
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 8
  br label %331

331:                                              ; preds = %327, %323
  %332 = phi i32 [ %326, %323 ], [ %330, %327 ]
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = call i32* %300(i32* %308, i32 %320, i32 %332, i32 %335, i32 %338)
  %340 = load i32, i32* %14, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 %341
  store i32* %339, i32** %342, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp sge i32 %346, %349
  br i1 %350, label %351, label %388

351:                                              ; preds = %331
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 2
  store i32 0, i32* %353, align 8
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 6
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 7
  store i32 %356, i32* %358, align 4
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 4
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %361, 1
  store i64 %362, i64* %360, align 8
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 3
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %364, align 8
  %366 = load i32, i32* %14, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = icmp slt i64 %362, %370
  br i1 %371, label %372, label %387

372:                                              ; preds = %351
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 3
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %374, align 8
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 4
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %380
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %382, align 8
  br label %387

387:                                              ; preds = %372, %351
  br label %388

388:                                              ; preds = %387, %331
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %14, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %14, align 4
  br label %281

392:                                              ; preds = %281
  %393 = load i32, i32* %12, align 4
  %394 = icmp sge i32 %393, 3
  br i1 %394, label %395, label %450

395:                                              ; preds = %392
  %396 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %397 = load i32*, i32** %396, align 16
  store i32* %397, i32** %24, align 8
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 2
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = icmp eq i32 %402, 3
  br i1 %403, label %404, label %418

404:                                              ; preds = %395
  %405 = load i32*, i32** %21, align 8
  %406 = load i32*, i32** %24, align 8
  %407 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 1
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 2
  %410 = load i32*, i32** %409, align 16
  %411 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 2
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* %12, align 4
  %417 = call i32 @YCbCr_to_RGB_row(i32* %405, i32* %406, i32* %408, i32* %410, i32 %415, i32 %416)
  br label %449

418:                                              ; preds = %395
  store i32 0, i32* %15, align 4
  br label %419

419:                                              ; preds = %445, %418
  %420 = load i32, i32* %15, align 4
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 2
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = icmp ult i32 %420, %425
  br i1 %426, label %427, label %448

427:                                              ; preds = %419
  %428 = load i32*, i32** %24, align 8
  %429 = load i32, i32* %15, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %428, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = load i32*, i32** %21, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 2
  store i32 %432, i32* %434, align 4
  %435 = load i32*, i32** %21, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 1
  store i32 %432, i32* %436, align 4
  %437 = load i32*, i32** %21, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 0
  store i32 %432, i32* %438, align 4
  %439 = load i32*, i32** %21, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 3
  store i32 255, i32* %440, align 4
  %441 = load i32, i32* %12, align 4
  %442 = load i32*, i32** %21, align 8
  %443 = sext i32 %441 to i64
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  store i32* %444, i32** %21, align 8
  br label %445

445:                                              ; preds = %427
  %446 = load i32, i32* %15, align 4
  %447 = add i32 %446, 1
  store i32 %447, i32* %15, align 4
  br label %419

448:                                              ; preds = %419
  br label %449

449:                                              ; preds = %448, %404
  br label %502

450:                                              ; preds = %392
  %451 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %452 = load i32*, i32** %451, align 16
  store i32* %452, i32** %25, align 8
  %453 = load i32, i32* %12, align 4
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %478

455:                                              ; preds = %450
  store i32 0, i32* %15, align 4
  br label %456

456:                                              ; preds = %474, %455
  %457 = load i32, i32* %15, align 4
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 2
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = icmp ult i32 %457, %462
  br i1 %463, label %464, label %477

464:                                              ; preds = %456
  %465 = load i32*, i32** %25, align 8
  %466 = load i32, i32* %15, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load i32*, i32** %21, align 8
  %471 = load i32, i32* %15, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  store i32 %469, i32* %473, align 4
  br label %474

474:                                              ; preds = %464
  %475 = load i32, i32* %15, align 4
  %476 = add i32 %475, 1
  store i32 %476, i32* %15, align 4
  br label %456

477:                                              ; preds = %456
  br label %501

478:                                              ; preds = %450
  store i32 0, i32* %15, align 4
  br label %479

479:                                              ; preds = %497, %478
  %480 = load i32, i32* %15, align 4
  %481 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 2
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = icmp ult i32 %480, %485
  br i1 %486, label %487, label %500

487:                                              ; preds = %479
  %488 = load i32*, i32** %25, align 8
  %489 = load i32, i32* %15, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = load i32*, i32** %21, align 8
  %494 = getelementptr inbounds i32, i32* %493, i32 1
  store i32* %494, i32** %21, align 8
  store i32 %492, i32* %493, align 4
  %495 = load i32*, i32** %21, align 8
  %496 = getelementptr inbounds i32, i32* %495, i32 1
  store i32* %496, i32** %21, align 8
  store i32 255, i32* %495, align 4
  br label %497

497:                                              ; preds = %487
  %498 = load i32, i32* %15, align 4
  %499 = add i32 %498, 1
  store i32 %499, i32* %15, align 4
  br label %479

500:                                              ; preds = %479
  br label %501

501:                                              ; preds = %500, %477
  br label %502

502:                                              ; preds = %501, %449
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %16, align 4
  %505 = add i32 %504, 1
  store i32 %505, i32* %16, align 4
  br label %260

506:                                              ; preds = %260
  %507 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %508 = call i32 @cleanup_jpeg(%struct.TYPE_11__* %507)
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 2
  %511 = load %struct.TYPE_9__*, %struct.TYPE_9__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = load i32*, i32** %8, align 8
  store i32 %513, i32* %514, align 4
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 2
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 4
  %520 = load i32*, i32** %9, align 8
  store i32 %519, i32* %520, align 4
  %521 = load i32*, i32** %10, align 8
  %522 = icmp ne i32* %521, null
  br i1 %522, label %523, label %530

523:                                              ; preds = %506
  %524 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %524, i32 0, i32 2
  %526 = load %struct.TYPE_9__*, %struct.TYPE_9__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = load i32*, i32** %10, align 8
  store i32 %528, i32* %529, align 4
  br label %530

530:                                              ; preds = %523, %506
  %531 = load i32*, i32** %17, align 8
  store i32* %531, i32** %6, align 8
  br label %532

532:                                              ; preds = %530, %255, %106, %41, %31
  %533 = load i32*, i32** %6, align 8
  ret i32* %533
}

declare dso_local i32* @epuc(i8*, i8*) #1

declare dso_local i32 @decode_jpeg_image(%struct.TYPE_11__*) #1

declare dso_local i32 @cleanup_jpeg(%struct.TYPE_11__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @resample_row_1(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @resample_row_v_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @resample_row_h_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @resample_row_hv_2(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @resample_row_generic(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @YCbCr_to_RGB_row(i32*, i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

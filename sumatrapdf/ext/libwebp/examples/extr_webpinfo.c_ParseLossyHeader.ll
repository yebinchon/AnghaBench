; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLossyHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseLossyHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@WEBP_INFO_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"  Parsing lossy bitstream...\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Unknown profile.\00", align 1
@WEBP_INFO_BITSTREAM_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Frame is not displayable.\00", align 1
@.str.3 = private unnamed_addr constant [93 x i8] c"  Key frame:        %s\0A  Profile:          %d\0A  Display:          %s\0A  Part. 0 length:   %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Invalid lossy bitstream signature.\00", align 1
@.str.7 = private unnamed_addr constant [93 x i8] c"  Width:            %d\0A  X scale:          %d\0A  Height:           %d\0A  Y scale:          %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Non-keyframe detected in lossy bitstream.\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Bad partition length.\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"  Color space:      %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"  Clamp type:       %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Truncated lossy bitstream.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"  Total partitions: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Truncated partition.\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"  Part. %d length:   %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"  Base Q:           %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"  DQ Y1 DC:         %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"  DQ Y2 DC:         %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"  DQ Y2 AC:         %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"  DQ UV DC:         %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"  DQ UV AC:         %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*)* @ParseLossyHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseLossyHeader(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = or i32 %40, %44
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %45, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 1
  %58 = and i32 %57, 7
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 4
  %61 = and i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 5
  store i32 %63, i32* %12, align 4
  %64 = load i64, i64* @WEBP_INFO_OK, align 8
  store i64 %64, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32* %14, i32** %15, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %70 = add nsw i64 %69, 10
  %71 = icmp sge i64 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 3
  br i1 %75, label %76, label %79

76:                                               ; preds = %2
  %77 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %78, i64* %3, align 8
  br label %330

79:                                               ; preds = %2
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %84, i64* %3, align 8
  br label %330

85:                                               ; preds = %79
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32* %87, i32** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = sub i64 %88, 3
  store i64 %89, i64* %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %99 = load i32, i32* %12, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.3, i64 0, i64 0), i8* %93, i32 %94, i8* %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %153

103:                                              ; preds = %85
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 157
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 42
  br i1 %117, label %121, label %118

118:                                              ; preds = %113, %108, %103
  %119 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %120, i64* %3, align 8
  br label %330

121:                                              ; preds = %113
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 4
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %125, %128
  %130 = and i32 %129, 16383
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 6
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 6
  %137 = load i32, i32* %136, align 4
  %138 = shl i32 %137, 8
  %139 = load i32*, i32** %6, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %138, %141
  %143 = and i32 %142, 16383
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 6
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 6
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.7, i64 0, i64 0), i32 %130, i32 %134, i32 %143, i32 %147)
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 7
  store i32* %150, i32** %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = sub i64 %151, 7
  store i64 %152, i64* %7, align 8
  br label %156

153:                                              ; preds = %85
  %154 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %155 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %155, i64* %3, align 8
  br label %330

156:                                              ; preds = %121
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %7, align 8
  %160 = icmp uge i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i64, i64* @WEBP_INFO_BITSTREAM_ERROR, align 8
  store i64 %163, i64* %3, align 8
  br label %330

164:                                              ; preds = %156
  %165 = load i32, i32* %16, align 4
  %166 = call i32 @GET_BITS(i32 %165, i32 1)
  %167 = load i32, i32* %17, align 4
  %168 = call i32 @GET_BITS(i32 %167, i32 1)
  %169 = load i32, i32* %16, align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %17, align 4
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = call i64 @ParseLossySegmentHeader(i32* %173, i32* %174, i64 %175, i32* %176)
  store i64 %177, i64* %13, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* @WEBP_INFO_OK, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %164
  %182 = load i64, i64* %13, align 8
  store i64 %182, i64* %3, align 8
  br label %330

183:                                              ; preds = %164
  %184 = load i32*, i32** %5, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = call i64 @ParseLossyFilterHeader(i32* %184, i32* %185, i64 %186, i32* %187)
  store i64 %188, i64* %13, align 8
  %189 = load i64, i64* %13, align 8
  %190 = load i64, i64* @WEBP_INFO_OK, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = load i64, i64* %13, align 8
  store i64 %193, i64* %3, align 8
  br label %330

194:                                              ; preds = %183
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32* %198, i32** %18, align 8
  %199 = load i32, i32* %19, align 4
  %200 = call i32 @GET_BITS(i32 %199, i32 2)
  %201 = load i32, i32* %19, align 4
  %202 = shl i32 1, %201
  store i32 %202, i32* %19, align 4
  %203 = load i64, i64* %7, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = sub i64 %203, %205
  %207 = trunc i64 %206 to i32
  %208 = load i32, i32* %19, align 4
  %209 = sub nsw i32 %208, 1
  %210 = mul nsw i32 %209, 3
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %194
  %213 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %214 = load i64, i64* @WEBP_INFO_TRUNCATED_DATA, align 8
  store i64 %214, i64* %3, align 8
  br label %330

215:                                              ; preds = %194
  %216 = load i64, i64* %7, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = sub i64 %216, %218
  %220 = load i32, i32* %19, align 4
  %221 = sub nsw i32 %220, 1
  %222 = mul nsw i32 %221, 3
  %223 = sext i32 %222 to i64
  %224 = sub i64 %219, %223
  store i64 %224, i64* %21, align 8
  %225 = load i32, i32* %19, align 4
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %225)
  store i32 1, i32* %20, align 4
  br label %227

227:                                              ; preds = %262, %215
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %19, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %265

231:                                              ; preds = %227
  %232 = load i32*, i32** %18, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %18, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 8
  %239 = or i32 %234, %238
  %240 = load i32*, i32** %18, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = shl i32 %242, 16
  %244 = or i32 %239, %243
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %22, align 8
  %246 = load i64, i64* %22, align 8
  %247 = load i64, i64* %21, align 8
  %248 = icmp ugt i64 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %231
  %250 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %251 = load i64, i64* @WEBP_INFO_TRUNCATED_DATA, align 8
  store i64 %251, i64* %3, align 8
  br label %330

252:                                              ; preds = %231
  %253 = load i32, i32* %20, align 4
  %254 = load i64, i64* %22, align 8
  %255 = trunc i64 %254 to i32
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %253, i32 %255)
  %257 = load i64, i64* %22, align 8
  %258 = load i64, i64* %21, align 8
  %259 = sub i64 %258, %257
  store i64 %259, i64* %21, align 8
  %260 = load i32*, i32** %18, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 3
  store i32* %261, i32** %18, align 8
  br label %262

262:                                              ; preds = %252
  %263 = load i32, i32* %20, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %20, align 4
  br label %227

265:                                              ; preds = %227
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %266 = load i32, i32* %23, align 4
  %267 = call i32 @GET_BITS(i32 %266, i32 7)
  %268 = load i32, i32* %24, align 4
  %269 = call i32 @GET_BITS(i32 %268, i32 1)
  %270 = load i32, i32* %24, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load i32, i32* %25, align 4
  %274 = call i32 @GET_SIGNED_BITS(i32 %273, i32 4)
  br label %275

275:                                              ; preds = %272, %265
  %276 = load i32, i32* %24, align 4
  %277 = call i32 @GET_BITS(i32 %276, i32 1)
  %278 = load i32, i32* %24, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i32, i32* %26, align 4
  %282 = call i32 @GET_SIGNED_BITS(i32 %281, i32 4)
  br label %283

283:                                              ; preds = %280, %275
  %284 = load i32, i32* %24, align 4
  %285 = call i32 @GET_BITS(i32 %284, i32 1)
  %286 = load i32, i32* %24, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = load i32, i32* %27, align 4
  %290 = call i32 @GET_SIGNED_BITS(i32 %289, i32 4)
  br label %291

291:                                              ; preds = %288, %283
  %292 = load i32, i32* %24, align 4
  %293 = call i32 @GET_BITS(i32 %292, i32 1)
  %294 = load i32, i32* %24, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %291
  %297 = load i32, i32* %28, align 4
  %298 = call i32 @GET_SIGNED_BITS(i32 %297, i32 4)
  br label %299

299:                                              ; preds = %296, %291
  %300 = load i32, i32* %24, align 4
  %301 = call i32 @GET_BITS(i32 %300, i32 1)
  %302 = load i32, i32* %24, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load i32, i32* %29, align 4
  %306 = call i32 @GET_SIGNED_BITS(i32 %305, i32 4)
  br label %307

307:                                              ; preds = %304, %299
  %308 = load i32, i32* %23, align 4
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* %25, align 4
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* %26, align 4
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %312)
  %314 = load i32, i32* %27, align 4
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* %28, align 4
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %316)
  %318 = load i32, i32* %29, align 4
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), i32 %318)
  %320 = load i32*, i32** %15, align 8
  %321 = load i32, i32* %320, align 4
  %322 = ashr i32 %321, 3
  %323 = load i32, i32* %12, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %307
  %326 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %327 = load i64, i64* @WEBP_INFO_TRUNCATED_DATA, align 8
  store i64 %327, i64* %3, align 8
  br label %330

328:                                              ; preds = %307
  %329 = load i64, i64* @WEBP_INFO_OK, align 8
  store i64 %329, i64* %3, align 8
  br label %330

330:                                              ; preds = %328, %325, %249, %212, %192, %181, %161, %153, %118, %82, %76
  %331 = load i64, i64* %3, align 8
  ret i64 %331
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @GET_BITS(i32, i32) #1

declare dso_local i64 @ParseLossySegmentHeader(i32*, i32*, i64, i32*) #1

declare dso_local i64 @ParseLossyFilterHeader(i32*, i32*, i64, i32*) #1

declare dso_local i32 @GET_SIGNED_BITS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

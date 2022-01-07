; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_jpeg.c_EncodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_jpeg.c_EncodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i32, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_24__, %struct.TYPE_29__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_31__, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, %struct.TYPE_25__*, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32**************** }

@JCS_YCbCr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DCTSIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (%struct.TYPE_28__*, %struct.TYPE_27__*)* @EncodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @EncodeBlock(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32**********, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %6, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = icmp ne %struct.TYPE_27__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %306

26:                                               ; preds = %2
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_30__* @block_Alloc(i32 %29)
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %7, align 8
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %32 = icmp eq %struct.TYPE_30__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %306

34:                                               ; preds = %26
  store i32********** null, i32*********** %8, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @setjmp(i32 %40) #3
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %276

44:                                               ; preds = %34
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = call i32 @jpeg_create_compress(%struct.TYPE_31__* %46)
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i32 0, i32 3
  %52 = call i32 @jpeg_mem_dest(%struct.TYPE_31__* %49, i32* %51, i64* %9)
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 8
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 1
  store i32 3, i32* %71, align 4
  %72 = load i32, i32* @JCS_YCbCr, align 4
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 7
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 0
  %78 = call i32 @jpeg_set_defaults(%struct.TYPE_31__* %77)
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = load i32, i32* @JCS_YCbCr, align 4
  %82 = call i32 @jpeg_set_colorspace(%struct.TYPE_31__* %80, i32 %81)
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 4
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @jpeg_set_quality(%struct.TYPE_31__* %88, i32 %91, i32 %92)
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @jpeg_start_compress(%struct.TYPE_31__* %95, i32 %96)
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @vlc_alloc(i32 %100, i32 4)
  %102 = bitcast i8* %101 to i32**********
  store i32********** %102, i32*********** %8, align 8
  %103 = load i32**********, i32*********** %8, align 8
  %104 = icmp eq i32********** %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %44
  br label %276

106:                                              ; preds = %44
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %133, %106
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @DCTSIZE, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = trunc i64 %125 to i32
  %127 = call i8* @vlc_alloc(i32 %122, i32 %126)
  %128 = bitcast i8* %127 to i32*********
  %129 = load i32**********, i32*********** %8, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*********, i32********** %129, i64 %131
  store i32********* %128, i32********** %132, align 8
  br label %133

133:                                              ; preds = %113
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %107

136:                                              ; preds = %107
  br label %137

137:                                              ; preds = %227, %136
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %238

147:                                              ; preds = %137
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %224, %147
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %227

154:                                              ; preds = %148
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %158, %167
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = sdiv i32 %168, %172
  store i32 %173, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %220, %154
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %178, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @DCTSIZE, align 4
  %186 = mul nsw i32 %184, %185
  %187 = icmp slt i32 %175, %186
  br i1 %187, label %188, label %223

188:                                              ; preds = %174
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  %196 = load i32****************, i32***************** %195, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %205, %206
  %208 = mul nsw i32 %204, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32***************, i32**************** %196, i64 %209
  %211 = bitcast i32**************** %210 to i32********
  %212 = load i32**********, i32*********** %8, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32*********, i32********** %212, i64 %214
  %216 = load i32*********, i32********** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32********, i32********* %216, i64 %218
  store i32******** %211, i32********* %219, align 8
  br label %220

220:                                              ; preds = %188
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %174

223:                                              ; preds = %174
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %148

227:                                              ; preds = %148
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 0
  %230 = load i32**********, i32*********** %8, align 8
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @DCTSIZE, align 4
  %236 = mul nsw i32 %234, %235
  %237 = call i32 @jpeg_write_raw_data(%struct.TYPE_31__* %229, i32********** %230, i32 %236)
  br label %137

238:                                              ; preds = %137
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 0
  %241 = call i32 @jpeg_finish_compress(%struct.TYPE_31__* %240)
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 0
  %244 = call i32 @jpeg_destroy_compress(%struct.TYPE_31__* %243)
  store i32 0, i32* %14, align 4
  br label %245

245:                                              ; preds = %259, %238
  %246 = load i32, i32* %14, align 4
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %245
  %252 = load i32**********, i32*********** %8, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*********, i32********** %252, i64 %254
  %256 = load i32*********, i32********** %255, align 8
  %257 = bitcast i32********* %256 to i32**********
  %258 = call i32 @free(i32********** %257)
  br label %259

259:                                              ; preds = %251
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %245

262:                                              ; preds = %245
  %263 = load i32**********, i32*********** %8, align 8
  %264 = call i32 @free(i32********** %263)
  %265 = load i64, i64* %9, align 8
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 8
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 2
  store i32 %270, i32* %274, align 4
  %275 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  store %struct.TYPE_30__* %275, %struct.TYPE_30__** %3, align 8
  br label %306

276:                                              ; preds = %105, %43
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 0
  %279 = call i32 @jpeg_destroy_compress(%struct.TYPE_31__* %278)
  %280 = load i32**********, i32*********** %8, align 8
  %281 = icmp ne i32********** %280, null
  br i1 %281, label %282, label %301

282:                                              ; preds = %276
  store i32 0, i32* %15, align 4
  br label %283

283:                                              ; preds = %297, %282
  %284 = load i32, i32* %15, align 4
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %283
  %290 = load i32**********, i32*********** %8, align 8
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*********, i32********** %290, i64 %292
  %294 = load i32*********, i32********** %293, align 8
  %295 = bitcast i32********* %294 to i32**********
  %296 = call i32 @free(i32********** %295)
  br label %297

297:                                              ; preds = %289
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %15, align 4
  br label %283

300:                                              ; preds = %283
  br label %301

301:                                              ; preds = %300, %276
  %302 = load i32**********, i32*********** %8, align 8
  %303 = call i32 @free(i32********** %302)
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %305 = call i32 @block_Release(%struct.TYPE_30__* %304)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %306

306:                                              ; preds = %301, %262, %33, %25
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  ret %struct.TYPE_30__* %307
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_30__* @block_Alloc(i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_create_compress(%struct.TYPE_31__*) #1

declare dso_local i32 @jpeg_mem_dest(%struct.TYPE_31__*, i32*, i64*) #1

declare dso_local i32 @jpeg_set_defaults(%struct.TYPE_31__*) #1

declare dso_local i32 @jpeg_set_colorspace(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @jpeg_set_quality(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @jpeg_start_compress(%struct.TYPE_31__*, i32) #1

declare dso_local i8* @vlc_alloc(i32, i32) #1

declare dso_local i32 @jpeg_write_raw_data(%struct.TYPE_31__*, i32**********, i32) #1

declare dso_local i32 @jpeg_finish_compress(%struct.TYPE_31__*) #1

declare dso_local i32 @jpeg_destroy_compress(%struct.TYPE_31__*) #1

declare dso_local i32 @free(i32**********) #1

declare dso_local i32 @block_Release(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

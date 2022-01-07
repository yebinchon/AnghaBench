; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_jpeg.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_jpeg.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_28__, %struct.TYPE_32__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i64*, %struct.TYPE_34__, i32 }
%struct.TYPE_34__ = type { i32, i64, i32, i32 }
%struct.TYPE_33__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i64 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@EXIF_JPEG_MARKER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@JCS_RGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Jpeg orientation is %d\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_33__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_31__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  %10 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  store %struct.TYPE_32__* %12, %struct.TYPE_32__** %6, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %7, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  store i64* null, i64** %14, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %16 = icmp ne %struct.TYPE_33__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %18, i32* %3, align 4
  br label %253

19:                                               ; preds = %2
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %28 = call i32 @block_Release(%struct.TYPE_33__* %27)
  %29 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %29, i32* %3, align 4
  br label %253

30:                                               ; preds = %19
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @setjmp(i32 %33) #3
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %242

37:                                               ; preds = %30
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 1
  %40 = call i32 @jpeg_create_decompress(%struct.TYPE_34__* %39)
  %41 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @jpeg_mem_src(%struct.TYPE_34__* %42, i32 %45, i32 %48)
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 1
  %52 = load i32, i32* @EXIF_JPEG_MARKER, align 4
  %53 = call i32 @jpeg_save_markers(%struct.TYPE_34__* %51, i32 %52, i32 65535)
  %54 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 1
  %56 = load i32, i32* @TRUE, align 4
  %57 = call i32 @jpeg_read_header(%struct.TYPE_34__* %55, i32 %56)
  %58 = load i32, i32* @JCS_RGB, align 4
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 4
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 1
  %64 = call i32 @jpeg_start_decompress(%struct.TYPE_34__* %63)
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 5
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 6
  store i32 %68, i32* %76, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 0
  store i32 %80, i32* %88, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 1
  %99 = call i32 @jpeg_GetOrientation(%struct.TYPE_34__* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %37
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @msg_Dbg(%struct.TYPE_31__* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ORIENT_FROM_EXIF(i32 %106)
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 4
  store i32 %107, i32* %111, align 8
  br label %112

112:                                              ; preds = %102, %37
  %113 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 0
  %118 = call i32 @jpeg_GetProjection(%struct.TYPE_34__* %114, %struct.TYPE_27__* %117)
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %120 = call i64 @decoder_UpdateVideoFormat(%struct.TYPE_31__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  br label %242

123:                                              ; preds = %112
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %125 = call %struct.TYPE_30__* @decoder_NewPicture(%struct.TYPE_31__* %124)
  store %struct.TYPE_30__* %125, %struct.TYPE_30__** %7, align 8
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %127 = icmp ne %struct.TYPE_30__* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  br label %242

129:                                              ; preds = %123
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64* @vlc_alloc(i32 %133, i32 4)
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 0
  store i64* %134, i64** %136, align 8
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %129
  br label %242

142:                                              ; preds = %129
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %171, %142
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ult i32 %144, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %143
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = mul i32 %160, %161
  %163 = zext i32 %162 to i64
  %164 = add nsw i64 %155, %163
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 %164, i64* %170, align 8
  br label %171

171:                                              ; preds = %150
  %172 = load i32, i32* %9, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %143

174:                                              ; preds = %143
  br label %175

175:                                              ; preds = %186, %174
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = zext i32 %183 to i64
  %185 = icmp slt i64 %179, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %175
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 0
  %191 = load i64*, i64** %190, align 8
  %192 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %191, i64 %195
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = zext i32 %200 to i64
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %201, %205
  %207 = call i32 @jpeg_read_scanlines(%struct.TYPE_34__* %188, i64* %196, i64 %206)
  br label %175

208:                                              ; preds = %175
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 1
  %211 = call i32 @jpeg_finish_decompress(%struct.TYPE_34__* %210)
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 1
  %214 = call i32 @jpeg_destroy_decompress(%struct.TYPE_34__* %213)
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = call i32 @free(i64* %217)
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @VLC_TICK_INVALID, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %208
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  br label %232

228:                                              ; preds = %208
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  br label %232

232:                                              ; preds = %228, %224
  %233 = phi i64 [ %227, %224 ], [ %231, %228 ]
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %237 = call i32 @block_Release(%struct.TYPE_33__* %236)
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %239 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %240 = call i32 @decoder_QueueVideo(%struct.TYPE_31__* %238, %struct.TYPE_30__* %239)
  %241 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %241, i32* %3, align 4
  br label %253

242:                                              ; preds = %141, %128, %122, %36
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = call i32 @jpeg_destroy_decompress(%struct.TYPE_34__* %244)
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = call i32 @free(i64* %248)
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %251 = call i32 @block_Release(%struct.TYPE_33__* %250)
  %252 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %242, %232, %26, %17
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @block_Release(%struct.TYPE_33__*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @jpeg_create_decompress(%struct.TYPE_34__*) #1

declare dso_local i32 @jpeg_mem_src(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @jpeg_save_markers(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @jpeg_read_header(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @jpeg_start_decompress(%struct.TYPE_34__*) #1

declare dso_local i32 @jpeg_GetOrientation(%struct.TYPE_34__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_31__*, i8*, i32) #1

declare dso_local i32 @ORIENT_FROM_EXIF(i32) #1

declare dso_local i32 @jpeg_GetProjection(%struct.TYPE_34__*, %struct.TYPE_27__*) #1

declare dso_local i64 @decoder_UpdateVideoFormat(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_30__* @decoder_NewPicture(%struct.TYPE_31__*) #1

declare dso_local i64* @vlc_alloc(i32, i32) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.TYPE_34__*, i64*, i64) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.TYPE_34__*) #1

declare dso_local i32 @jpeg_destroy_decompress(%struct.TYPE_34__*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @decoder_QueueVideo(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

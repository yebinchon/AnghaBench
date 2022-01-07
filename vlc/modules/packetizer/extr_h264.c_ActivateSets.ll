; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_ActivateSets.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_ActivateSets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__, %struct.TYPE_21__, %struct.TYPE_17__* }
%struct.TYPE_26__ = type { i64, i32*, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_19__, %struct.TYPE_27__*, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_18__*, i32* }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__*, %struct.TYPE_27__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i32, i64, i32 }

@COLOR_PRIMARIES_UNDEF = common dso_local global i64 0, align 8
@H264_SPS_ID_MAX = common dso_local global i64 0, align 8
@H264_PPS_ID_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_27__*, i32*)* @ActivateSets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ActivateSets(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %7, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  store %struct.TYPE_27__* %20, %struct.TYPE_27__** %22, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = icmp ne %struct.TYPE_27__* %23, null
  br i1 %24, label %25, label %311

25:                                               ; preds = %3
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 11
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 8
  %55 = call i32 @h264_get_picture_size(%struct.TYPE_27__* %38, i32* %42, i32* %46, i32* %50, i32* %54)
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %25
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  store i64 %79, i64* %83, align 8
  br label %84

84:                                               ; preds = %67, %61, %25
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %146, label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %104
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @date_Change(%struct.TYPE_19__* %118, i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %116, %110, %104, %98
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 1
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 2
  store i32 %133, i32* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 7
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %128, %91
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @COLOR_PRIMARIES_UNDEF, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %146
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %154
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 3
  %178 = call i32 @h264_get_colorimetry(%struct.TYPE_27__* %161, i32* %165, i32* %169, i32* %173, i32* %177)
  br label %179

179:                                              ; preds = %160, %154, %146
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %310

185:                                              ; preds = %179
  %186 = load i32*, i32** %6, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %310

188:                                              ; preds = %185
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  store i64 0, i64* %10, align 8
  br label %189

189:                                              ; preds = %218, %188
  %190 = load i64, i64* %10, align 8
  %191 = load i64, i64* @H264_SPS_ID_MAX, align 8
  %192 = icmp ule i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %195 = icmp ne %struct.TYPE_18__* %194, null
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i1 [ false, %189 ], [ %196, %193 ]
  br i1 %198, label %199, label %221

199:                                              ; preds = %197
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %202, align 8
  %204 = load i64, i64* %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %206, align 8
  %208 = icmp eq %struct.TYPE_27__* %200, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %199
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %211, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  store %struct.TYPE_18__* %216, %struct.TYPE_18__** %8, align 8
  br label %217

217:                                              ; preds = %209, %199
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %10, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %10, align 8
  br label %189

221:                                              ; preds = %197
  store i64 0, i64* %11, align 8
  br label %222

222:                                              ; preds = %251, %221
  %223 = load i64, i64* %11, align 8
  %224 = load i64, i64* @H264_PPS_ID_MAX, align 8
  %225 = icmp ule i64 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %228 = icmp ne %struct.TYPE_18__* %227, null
  %229 = xor i1 %228, true
  br label %230

230:                                              ; preds = %226, %222
  %231 = phi i1 [ false, %222 ], [ %229, %226 ]
  br i1 %231, label %232, label %254

232:                                              ; preds = %230
  %233 = load i32*, i32** %6, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %235, align 8
  %237 = load i64, i64* %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = icmp eq i32* %233, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %232
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %244, align 8
  %246 = load i64, i64* %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  store %struct.TYPE_18__* %249, %struct.TYPE_18__** %9, align 8
  br label %250

250:                                              ; preds = %242, %232
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %11, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %11, align 8
  br label %222

254:                                              ; preds = %230
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %256 = icmp ne %struct.TYPE_18__* %255, null
  br i1 %256, label %257, label %309

257:                                              ; preds = %254
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %259 = icmp ne %struct.TYPE_18__* %258, null
  br i1 %259, label %260, label %309

260:                                              ; preds = %257
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %263, %266
  store i64 %267, i64* %12, align 8
  %268 = load i64, i64* %12, align 8
  %269 = call i32* @malloc(i64 %268)
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 1
  store i32* %269, i32** %272, align 8
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %308

278:                                              ; preds = %260
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  store i32* %282, i32** %13, align 8
  %283 = load i64, i64* %12, align 8
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  %287 = load i32*, i32** %13, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @memcpy(i32* %288, i32 %291, i64 %294)
  %296 = load i32*, i32** %13, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @memcpy(i32* %300, i32 %303, i64 %306)
  br label %308

308:                                              ; preds = %278, %260
  br label %309

309:                                              ; preds = %308, %257, %254
  br label %310

310:                                              ; preds = %309, %185, %179
  br label %311

311:                                              ; preds = %310, %3
  ret void
}

declare dso_local i32 @h264_get_picture_size(%struct.TYPE_27__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @date_Change(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @h264_get_colorimetry(%struct.TYPE_27__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

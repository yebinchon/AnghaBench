; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayDrawOverlay.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_blurayDrawOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__** }
%struct.TYPE_24__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_22__, %struct.TYPE_20__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32** }
%struct.TYPE_20__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64, %struct.TYPE_23__*, %struct.TYPE_18__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@VLC_CODEC_YUVP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_19__*)* @blurayDrawOverlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blurayDrawOverlay(%struct.TYPE_28__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_26__**, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %21, i64 %24
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = call i32 @vlc_mutex_lock(i32* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %32, i64 %35
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  store %struct.TYPE_26__** %38, %struct.TYPE_26__*** %6, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %41, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %42, i64 %45
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %48, align 8
  store %struct.TYPE_26__* %49, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %8, align 8
  br label %50

50:                                               ; preds = %89, %2
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %52 = icmp ne %struct.TYPE_26__* %51, null
  br i1 %52, label %53, label %95

53:                                               ; preds = %50
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_26__* %54, %struct.TYPE_26__** %8, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %53
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %62
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %70
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %95

89:                                               ; preds = %79, %70, %62, %53
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 4
  store %struct.TYPE_26__** %91, %struct.TYPE_26__*** %6, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %93, align 8
  store %struct.TYPE_26__* %94, %struct.TYPE_26__** %7, align 8
  br label %50

95:                                               ; preds = %88, %50
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = icmp ne %struct.TYPE_18__* %98, null
  br i1 %99, label %122, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %102 = icmp ne %struct.TYPE_26__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %105, align 8
  %107 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  store %struct.TYPE_26__* %106, %struct.TYPE_26__** %107, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %109 = call i32 @subpicture_region_Delete(%struct.TYPE_26__* %108)
  br label %110

110:                                              ; preds = %103, %100
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %114, i64 %117
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = call i32 @vlc_mutex_unlock(i32* %120)
  br label %338

122:                                              ; preds = %95
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %124 = icmp ne %struct.TYPE_26__* %123, null
  br i1 %124, label %175, label %125

125:                                              ; preds = %122
  %126 = call i32 @video_format_Init(i32* %9, i32 0)
  %127 = load i32, i32* @VLC_CODEC_YUVP, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @video_format_Setup(i32* %9, i32 %127, i64 %130, i64 %133, i64 %136, i64 %139, i32 1, i32 1)
  %141 = call %struct.TYPE_26__* @subpicture_region_New(i32* %9)
  store %struct.TYPE_26__* %141, %struct.TYPE_26__** %7, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %143 = icmp ne %struct.TYPE_26__* %142, null
  br i1 %143, label %144, label %174

144:                                              ; preds = %125
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %156 = icmp ne %struct.TYPE_26__* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %144
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 4
  store %struct.TYPE_26__* %158, %struct.TYPE_26__** %160, align 8
  br label %173

161:                                              ; preds = %144
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %165, align 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %166, i64 %169
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  store %struct.TYPE_26__* %162, %struct.TYPE_26__** %172, align 8
  br label %173

173:                                              ; preds = %161, %157
  br label %174

174:                                              ; preds = %173, %125
  br label %175

175:                                              ; preds = %174, %122
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  store %struct.TYPE_18__* %178, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %228, %175
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp slt i64 %181, %184
  br i1 %185, label %186, label %231

186:                                              ; preds = %179
  store i32 0, i32* %12, align 4
  br label %187

187:                                              ; preds = %194, %186
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp slt i64 %189, %192
  br i1 %193, label %194, label %227

194:                                              ; preds = %187
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i64 0
  store %struct.TYPE_27__* %200, %struct.TYPE_27__** %13, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %204, %207
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %203, i64 %211
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @memset(i32* %212, i32 %215, i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %12, align 4
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 1
  store %struct.TYPE_18__* %226, %struct.TYPE_18__** %10, align 8
  br label %187

227:                                              ; preds = %187
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %179

231:                                              ; preds = %179
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  %235 = icmp ne %struct.TYPE_23__* %234, null
  br i1 %235, label %236, label %326

236:                                              ; preds = %231
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  store i32 256, i32* %241, align 8
  store i32 0, i32* %14, align 4
  br label %242

242:                                              ; preds = %322, %236
  %243 = load i32, i32* %14, align 4
  %244 = icmp slt i32 %243, 256
  br i1 %244, label %245, label %325

245:                                              ; preds = %242
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 1
  %259 = load i32**, i32*** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %253, i32* %264, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %266, align 8
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 1
  %278 = load i32**, i32*** %277, align 8
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32*, i32** %278, i64 %280
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  store i32 %272, i32* %283, align 4
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 5
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 1
  %297 = load i32**, i32*** %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 2
  store i32 %291, i32* %302, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %304, align 8
  %306 = load i32, i32* %14, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 1
  %316 = load i32**, i32*** %315, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %316, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 3
  store i32 %310, i32* %321, align 4
  br label %322

322:                                              ; preds = %245
  %323 = load i32, i32* %14, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %14, align 4
  br label %242

325:                                              ; preds = %242
  br label %326

326:                                              ; preds = %325, %231
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 0
  %330 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %329, align 8
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %330, i64 %333
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 0
  %337 = call i32 @vlc_mutex_unlock(i32* %336)
  br label %338

338:                                              ; preds = %326, %110
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @subpicture_region_Delete(%struct.TYPE_26__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local i32 @video_format_Setup(i32*, i32, i64, i64, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_26__* @subpicture_region_New(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

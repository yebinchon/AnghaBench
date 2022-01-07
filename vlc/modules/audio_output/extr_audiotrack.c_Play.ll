; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_Play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, i32, i32, %struct.TYPE_21__, i64, i32, %struct.TYPE_18__, i32, i64, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)*, i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)*, i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)* }

@VLC_CODEC_SPDIFB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_22__*, i32)* @Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Play(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_25__** null, %struct.TYPE_25__*** %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %9, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 10
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VLC_CODEC_SPDIFB, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = call i64 @ConvertFromIEC61937(%struct.TYPE_23__* %28, %struct.TYPE_22__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = call i32 @block_Release(%struct.TYPE_22__* %33)
  br label %269

35:                                               ; preds = %27, %20, %3
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = call i32 @vlc_mutex_lock(i32* %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = call %struct.TYPE_25__** (...) @GET_ENV()
  store %struct.TYPE_25__** %44, %struct.TYPE_25__*** %7, align 8
  %45 = icmp ne %struct.TYPE_25__** %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %35
  br label %262

47:                                               ; preds = %43
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @aout_ChannelReorder(i64 %55, i64 %58, i64 %61, i32 %64, i64 %68)
  br label %70

70:                                               ; preds = %52, %47
  br label %71

71:                                               ; preds = %260, %70
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i1 [ false, %71 ], [ %82, %77 ]
  br i1 %84, label %85, label %261

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %109, %85
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %99, %103
  %105 = sub i64 %95, %104
  store i64 %105, i64* %10, align 8
  %106 = icmp eq i64 %105, 0
  br label %107

107:                                              ; preds = %91, %86
  %108 = phi i1 [ false, %86 ], [ %106, %91 ]
  br i1 %108, label %109, label %115

109:                                              ; preds = %107
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = call i32 @vlc_cond_wait(i32* %111, i32* %113)
  br label %86

115:                                              ; preds = %107
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %262

121:                                              ; preds = %115
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = urem i64 %125, %129
  store i64 %130, i64* %11, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = sub i64 %133, %134
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = sub i64 %139, %140
  %142 = call i64 @__MIN(i64 %135, i64 %141)
  store i64 %142, i64* %12, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @__MIN(i64 %143, i64 %144)
  store i64 %145, i64* %12, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %242 [
    i32 132, label %149
    i32 131, label %149
    i32 128, label %169
    i32 129, label %196
    i32 130, label %223
  ]

149:                                              ; preds = %121, %121
  %150 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %7, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 2
  %153 = load i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)*, i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)** %152, align 8
  %154 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %7, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i32*
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = call i32 %153(%struct.TYPE_25__** %154, i32 %159, i64 %160, i64 %161, i32* %167)
  br label %242

169:                                              ; preds = %121
  %170 = load i64, i64* %11, align 8
  %171 = and i64 %170, -2
  store i64 %171, i64* %11, align 8
  %172 = load i64, i64* %12, align 8
  %173 = and i64 %172, -2
  store i64 %173, i64* %12, align 8
  %174 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %7, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 1
  %177 = load i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)*, i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)** %176, align 8
  %178 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %7, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i64, i64* %11, align 8
  %185 = udiv i64 %184, 2
  %186 = load i64, i64* %12, align 8
  %187 = udiv i64 %186, 2
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to i32*
  %192 = load i64, i64* %8, align 8
  %193 = udiv i64 %192, 2
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = call i32 %177(%struct.TYPE_25__** %178, i32 %183, i64 %185, i64 %187, i32* %194)
  br label %242

196:                                              ; preds = %121
  %197 = load i64, i64* %11, align 8
  %198 = and i64 %197, -4
  store i64 %198, i64* %11, align 8
  %199 = load i64, i64* %12, align 8
  %200 = and i64 %199, -4
  store i64 %200, i64* %12, align 8
  %201 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %7, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)*, i32 (%struct.TYPE_25__**, i32, i64, i64, i32*)** %203, align 8
  %205 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %7, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* %11, align 8
  %212 = udiv i64 %211, 4
  %213 = load i64, i64* %12, align 8
  %214 = udiv i64 %213, 4
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32*
  %219 = load i64, i64* %8, align 8
  %220 = udiv i64 %219, 4
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = call i32 %204(%struct.TYPE_25__** %205, i32 %210, i64 %212, i64 %214, i32* %221)
  br label %242

223:                                              ; preds = %121
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = load i64, i64* %11, align 8
  %232 = add i64 %230, %231
  %233 = trunc i64 %232 to i32
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* %8, align 8
  %238 = add i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = load i64, i64* %12, align 8
  %241 = call i32 @memcpy(i32 %233, i32 %239, i64 %240)
  br label %242

242:                                              ; preds = %121, %223, %196, %169, %149
  %243 = load i64, i64* %12, align 8
  %244 = load i64, i64* %8, align 8
  %245 = add i64 %244, %243
  store i64 %245, i64* %8, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, %246
  store i64 %251, i64* %249, align 8
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %242
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 2
  %259 = call i32 @vlc_cond_signal(i32* %258)
  br label %260

260:                                              ; preds = %256, %242
  br label %71

261:                                              ; preds = %83
  br label %262

262:                                              ; preds = %261, %120, %46
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 1
  %265 = call i32 @vlc_mutex_unlock(i32* %264)
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %267 = call i32 @block_Release(%struct.TYPE_22__* %266)
  %268 = load i32, i32* %6, align 4
  br label %269

269:                                              ; preds = %262, %32
  ret void
}

declare dso_local i64 @ConvertFromIEC61937(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_25__** @GET_ENV(...) #1

declare dso_local i32 @aout_ChannelReorder(i64, i64, i64, i32, i64) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

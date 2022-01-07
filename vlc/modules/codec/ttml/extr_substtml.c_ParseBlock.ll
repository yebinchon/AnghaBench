; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ParseBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_ParseBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64, i64 }
%struct.TYPE_40__ = type { i32, i64, i64, i64, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_31__, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_37__ = type { i32, i32, i64, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_34__, %struct.TYPE_32__ }
%struct.TYPE_34__ = type { i64, i32* }
%struct.TYPE_32__ = type { i64 }

@TT_TIMINGS_PARALLEL = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"subtitle without a date\00", align 1
@VLC_TICK_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, %struct.TYPE_40__*)* @ParseBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseBlock(%struct.TYPE_38__* %0, %struct.TYPE_40__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_36__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_40__* %1, %struct.TYPE_40__** %5, align 8
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  store %struct.TYPE_39__* %19, %struct.TYPE_39__** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %20 = load i32, i32* @TT_TIMINGS_PARALLEL, align 4
  %21 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  %23 = call i32 @tt_time_Init(%struct.TYPE_31__* %22)
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 2
  %25 = call i32 @tt_time_Init(%struct.TYPE_31__* %24)
  %26 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 1
  %27 = call i32 @tt_time_Init(%struct.TYPE_31__* %26)
  %28 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %253

38:                                               ; preds = %2
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VLC_TICK_INVALID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %46 = call i32 @msg_Warn(%struct.TYPE_38__* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %253

48:                                               ; preds = %38
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32* @ParseTTML(%struct.TYPE_38__* %49, i32 %52, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %253

61:                                               ; preds = %48
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @tt_timings_Resolve(i32* %62, %struct.TYPE_36__* %9, i32** %7, i64* %8)
  %64 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %66, %70
  store i64 %71, i64* %11, align 8
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %73 = call i64 @TTML_in_PES(%struct.TYPE_38__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %61
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %76, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %82, %75, %61
  store i64 0, i64* %12, align 8
  br label %88

88:                                               ; preds = %244, %87
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  %91 = load i64, i64* %8, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %247

93:                                               ; preds = %88
  %94 = load i32*, i32** %7, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i64 @tt_time_Convert(i32* %96)
  %98 = load i64, i64* @VLC_TICK_0, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* %11, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %244

103:                                              ; preds = %93
  %104 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %105 = call i64 @TTML_in_PES(%struct.TYPE_38__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %7, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i64 @tt_time_Convert(i32* %110)
  %112 = load i64, i64* @VLC_TICK_0, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = icmp sgt i64 %113, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %107
  br label %247

121:                                              ; preds = %107, %103
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %123 = call i64 @TTML_in_PES(%struct.TYPE_38__* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = call i64 @tt_time_Convert(i32* %132)
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %125
  %136 = load i32*, i32** %7, align 8
  %137 = load i64, i64* %12, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = call i64 @tt_time_Convert(i32* %138)
  %140 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  br label %143

143:                                              ; preds = %135, %125, %121
  store i32 0, i32* %13, align 4
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %14, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.TYPE_35__* @GenerateRegions(i32* %144, i32 %148)
  store %struct.TYPE_35__* %149, %struct.TYPE_35__** %15, align 8
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %151 = icmp ne %struct.TYPE_35__* %150, null
  br i1 %151, label %152, label %171

152:                                              ; preds = %143
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  store i32 1, i32* %13, align 4
  %165 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %166 = call %struct.TYPE_37__* @decoder_NewTTML_ImageSpu(%struct.TYPE_38__* %165)
  store %struct.TYPE_37__* %166, %struct.TYPE_37__** %14, align 8
  br label %170

167:                                              ; preds = %158, %152
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %169 = call %struct.TYPE_37__* @decoder_NewSubpictureText(%struct.TYPE_38__* %168)
  store %struct.TYPE_37__* %169, %struct.TYPE_37__** %14, align 8
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %143
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %173 = icmp ne %struct.TYPE_35__* %172, null
  br i1 %173, label %174, label %223

174:                                              ; preds = %171
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %176 = icmp ne %struct.TYPE_37__* %175, null
  br i1 %176, label %177, label %223

177:                                              ; preds = %174
  %178 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @VLC_TICK_0, align 8
  %183 = add nsw i64 %181, %182
  %184 = load i32*, i32** %7, align 8
  %185 = load i64, i64* %12, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = call i64 @tt_time_Convert(i32* %186)
  %188 = add nsw i64 %183, %187
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 3
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @VLC_TICK_0, align 8
  %196 = add nsw i64 %194, %195
  %197 = load i32*, i32** %7, align 8
  %198 = load i64, i64* %12, align 8
  %199 = add i64 %198, 1
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = call i64 @tt_time_Convert(i32* %200)
  %202 = add nsw i64 %196, %201
  %203 = sub nsw i64 %202, 1
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 2
  store i64 %203, i64* %205, align 8
  %206 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %208, i32 0, i32 1
  store i32 1, i32* %209, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %177
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %214 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %216 = call i32 @TTMLRegionsToSpuTextRegions(%struct.TYPE_38__* %213, %struct.TYPE_37__* %214, %struct.TYPE_35__* %215)
  br label %222

217:                                              ; preds = %177
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %219 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %220 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %221 = call i32 @TTMLRegionsToSpuBitmapRegions(%struct.TYPE_38__* %218, %struct.TYPE_37__* %219, %struct.TYPE_35__* %220)
  br label %222

222:                                              ; preds = %217, %212
  br label %223

223:                                              ; preds = %222, %174, %171
  br label %224

224:                                              ; preds = %227, %223
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %226 = icmp ne %struct.TYPE_35__* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %232, %struct.TYPE_35__** %16, align 8
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %234 = call i32 @ttml_region_Delete(%struct.TYPE_35__* %233)
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %16, align 8
  store %struct.TYPE_35__* %235, %struct.TYPE_35__** %15, align 8
  br label %224

236:                                              ; preds = %224
  %237 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %238 = icmp ne %struct.TYPE_37__* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %241 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %242 = call i32 @decoder_QueueSub(%struct.TYPE_38__* %240, %struct.TYPE_37__* %241)
  br label %243

243:                                              ; preds = %239, %236
  br label %244

244:                                              ; preds = %243, %102
  %245 = load i64, i64* %12, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %12, align 8
  br label %88

247:                                              ; preds = %120, %88
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @tt_node_RecursiveDelete(i32* %248)
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @free(i32* %250)
  %252 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %247, %59, %44, %36
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @tt_time_Init(%struct.TYPE_31__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_38__*, i8*) #1

declare dso_local i32* @ParseTTML(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @tt_timings_Resolve(i32*, %struct.TYPE_36__*, i32**, i64*) #1

declare dso_local i64 @TTML_in_PES(%struct.TYPE_38__*) #1

declare dso_local i64 @tt_time_Convert(i32*) #1

declare dso_local %struct.TYPE_35__* @GenerateRegions(i32*, i32) #1

declare dso_local %struct.TYPE_37__* @decoder_NewTTML_ImageSpu(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_37__* @decoder_NewSubpictureText(%struct.TYPE_38__*) #1

declare dso_local i32 @TTMLRegionsToSpuTextRegions(%struct.TYPE_38__*, %struct.TYPE_37__*, %struct.TYPE_35__*) #1

declare dso_local i32 @TTMLRegionsToSpuBitmapRegions(%struct.TYPE_38__*, %struct.TYPE_37__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ttml_region_Delete(%struct.TYPE_35__*) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_38__*, %struct.TYPE_37__*) #1

declare dso_local i32 @tt_node_RecursiveDelete(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

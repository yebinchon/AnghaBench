; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_DecodeSLHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_mpeg4_iod.c_DecodeSLHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32*, i64* }

@USE_ACCESS_UNIT_START_FLAG = common dso_local global i32 0, align 4
@USE_ACCESS_UNIT_END_FLAG = common dso_local global i32 0, align 4
@USE_IDLE_FLAG = common dso_local global i32 0, align 4
@USE_PADDING_FLAG = common dso_local global i32 0, align 4
@USE_RANDOM_ACCESS_POINT_FLAG = common dso_local global i32 0, align 4
@USE_TIMESTAMPS_FLAG = common dso_local global i32 0, align 4
@VLC_TICK_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DecodeSLHeader(%struct.TYPE_5__* noalias sret %0, i32 %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x %struct.anon], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %7, align 8
  %20 = bitcast %struct.TYPE_5__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 24, i1 false)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @bs_init(i32* %8, i32* %21, i32 %22)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USE_ACCESS_UNIT_START_FLAG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = call i8* @bs_read1(i32* %8)
  %32 = ptrtoint i8* %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @USE_ACCESS_UNIT_END_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = call i8* @bs_read1(i32* %8)
  %43 = ptrtoint i8* %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i8* @bs_read1(i32* %8)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @USE_IDLE_FLAG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = call i8* @bs_read1(i32* %8)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @USE_PADDING_FLAG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = call i8* @bs_read1(i32* %8)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %79, %73
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @bs_read(i32* %8, i32 3)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %244, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %244, label %100

100:                                              ; preds = %97, %94
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %101 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %16, i64 0, i64 0
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 0
  store i32* %13, i32** %102, align 16
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 4
  %105 = bitcast i32* %104 to i64*
  store i64* %105, i64** %103, align 8
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %101, i64 1
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  store i32* %14, i32** %107, align 16
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 3
  %110 = bitcast i32* %109 to i64*
  store i64* %110, i64** %108, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @bs_read(i32* %8, i32 %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %100
  %120 = call i8* @bs_read1(i32* %8)
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @bs_read(i32* %8, i32 %125)
  br label %127

127:                                              ; preds = %122, %119, %100
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @bs_read(i32* %8, i32 %133)
  br label %135

135:                                              ; preds = %130, %127
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %243

139:                                              ; preds = %135
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @USE_RANDOM_ACCESS_POINT_FLAG, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = call i8* @bs_read1(i32* %8)
  br label %148

148:                                              ; preds = %146, %139
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @bs_read(i32* %8, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @USE_TIMESTAMPS_FLAG, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %148
  %160 = call i8* @bs_read1(i32* %8)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %13, align 4
  %162 = call i8* @bs_read1(i32* %8)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %159, %148
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = call i8* @bs_read1(i32* %8)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %169, %164
  store i32 0, i32* %17, align 4
  br label %173

173:                                              ; preds = %227, %172
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %174, 2
  br i1 %175, label %176, label %230

176:                                              ; preds = %173
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %16, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 16
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %176
  br label %227

185:                                              ; preds = %176
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @__MIN(i32 32, i32 %188)
  %190 = call i32 @bs_read(i32* %8, i32 %189)
  store i32 %190, i32* %18, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 32
  br i1 %194, label %195, label %208

195:                                              ; preds = %185
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, 32
  %200 = call i32 @__MAX(i32 1, i32 %199)
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = shl i32 %201, %202
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %19, align 4
  %205 = call i32 @bs_read(i32* %8, i32 %204)
  %206 = load i32, i32* %18, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %18, align 4
  br label %208

208:                                              ; preds = %195, %185
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %226

213:                                              ; preds = %208
  %214 = load i64, i64* @VLC_TICK_0, align 8
  %215 = load i32, i32* %18, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @vlc_tick_from_samples(i32 %215, i32 %218)
  %220 = add nsw i64 %214, %219
  %221 = load i32, i32* %17, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [2 x %struct.anon], [2 x %struct.anon]* %16, i64 0, i64 %222
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  store i64 %220, i64* %225, align 8
  br label %226

226:                                              ; preds = %213, %208
  br label %227

227:                                              ; preds = %226, %184
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %17, align 4
  br label %173

230:                                              ; preds = %173
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @bs_read(i32* %8, i32 %233)
  %235 = load i32, i32* %15, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %230
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @bs_read(i32* %8, i32 %240)
  br label %242

242:                                              ; preds = %237, %230
  br label %243

243:                                              ; preds = %242, %135
  br label %244

244:                                              ; preds = %243, %97, %91
  %245 = load i32, i32* %11, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %5, align 4
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  store i32 %251, i32* %252, align 4
  br label %258

253:                                              ; preds = %247, %244
  %254 = call i32 @bs_pos(i32* %8)
  %255 = add nsw i32 %254, 7
  %256 = sdiv i32 %255, 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 2
  store i32 %256, i32* %257, align 4
  br label %258

258:                                              ; preds = %253, %250
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bs_init(i32*, i32*, i32) #2

declare dso_local i8* @bs_read1(i32*) #2

declare dso_local i32 @bs_read(i32*, i32) #2

declare dso_local i32 @__MIN(i32, i32) #2

declare dso_local i32 @__MAX(i32, i32) #2

declare dso_local i64 @vlc_tick_from_samples(i32, i32) #2

declare dso_local i32 @bs_pos(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

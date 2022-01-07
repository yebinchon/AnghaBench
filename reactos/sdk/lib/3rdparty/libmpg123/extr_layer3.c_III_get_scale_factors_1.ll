; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer3.c_III_get_scale_factors_1.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_layer3.c_III_get_scale_factors_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_info_s = type { i64, i64, i32, i32, i64 }

@__const.III_get_scale_factors_1.slen = private unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\00\00\00\03\01\01\01\02\02\02\03\03\03\04\04", [16 x i8] c"\00\01\02\03\00\01\02\03\01\02\03\01\02\03\02\03"], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.gr_info_s*, i32, i32)* @III_get_scale_factors_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @III_get_scale_factors_1(i32* %0, i32* %1, %struct.gr_info_s* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.gr_info_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x [16 x i8]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.gr_info_s* %2, %struct.gr_info_s** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = bitcast [2 x [16 x i8]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([2 x [16 x i8]], [2 x [16 x i8]]* @__const.III_get_scale_factors_1.slen, i32 0, i32 0, i32 0), i64 32, i1 false)
  %21 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %12, i64 0, i64 0
  %22 = load %struct.gr_info_s*, %struct.gr_info_s** %9, align 8
  %23 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = getelementptr inbounds [2 x [16 x i8]], [2 x [16 x i8]]* %12, i64 0, i64 1
  %29 = load %struct.gr_info_s*, %struct.gr_info_s** %9, align 8
  %30 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load %struct.gr_info_s*, %struct.gr_info_s** %9, align 8
  %36 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %46, %39
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 39
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  store i32 0, i32* %44, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %16, align 4
  br label %40

49:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %270

50:                                               ; preds = %5
  %51 = load %struct.gr_info_s*, %struct.gr_info_s** %9, align 8
  %52 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %117

55:                                               ; preds = %50
  store i32 18, i32* %17, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = mul nsw i32 %58, 18
  store i32 %59, i32* %13, align 4
  %60 = load %struct.gr_info_s*, %struct.gr_info_s** %9, align 8
  %61 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  store i32 8, i32* %17, align 4
  br label %65

65:                                               ; preds = %75, %64
  %66 = load i32, i32* %17, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i8* @getbits_fast(i32* %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %17, align 4
  br label %65

78:                                               ; preds = %65
  store i32 9, i32* %17, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %78, %55
  br label %83

83:                                               ; preds = %93, %82
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %14, align 4
  %89 = call i8* @getbits_fast(i32* %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %17, align 4
  br label %83

96:                                               ; preds = %83
  store i32 18, i32* %17, align 4
  br label %97

97:                                               ; preds = %107, %96
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i8* @getbits_fast(i32* %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %17, align 4
  br label %97

110:                                              ; preds = %97
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %8, align 8
  store i32 0, i32* %111, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %8, align 8
  store i32 0, i32* %113, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %8, align 8
  store i32 0, i32* %115, align 4
  br label %268

117:                                              ; preds = %50
  %118 = load %struct.gr_info_s*, %struct.gr_info_s** %9, align 8
  %119 = getelementptr inbounds %struct.gr_info_s, %struct.gr_info_s* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %160

123:                                              ; preds = %117
  store i32 11, i32* %18, align 4
  br label %124

124:                                              ; preds = %134, %123
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i8* @getbits_fast(i32* %128, i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %18, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %18, align 4
  br label %124

137:                                              ; preds = %124
  store i32 10, i32* %18, align 4
  br label %138

138:                                              ; preds = %148, %137
  %139 = load i32, i32* %18, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %15, align 4
  %144 = call i8* @getbits_fast(i32* %142, i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  br label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %18, align 4
  br label %138

151:                                              ; preds = %138
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %152, %153
  %155 = mul nsw i32 %154, 10
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %13, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %8, align 8
  store i32 0, i32* %158, align 4
  br label %267

160:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  %161 = load i32, i32* %19, align 4
  %162 = and i32 %161, 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %183, label %164

164:                                              ; preds = %160
  store i32 0, i32* %18, align 4
  br label %165

165:                                              ; preds = %175, %164
  %166 = load i32, i32* %18, align 4
  %167 = icmp slt i32 %166, 6
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i8* @getbits_fast(i32* %169, i32 %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load i32*, i32** %8, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %8, align 8
  store i32 %172, i32* %173, align 4
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %18, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %18, align 4
  br label %165

178:                                              ; preds = %165
  %179 = load i32, i32* %14, align 4
  %180 = mul nsw i32 %179, 6
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %13, align 4
  br label %186

183:                                              ; preds = %160
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 6
  store i32* %185, i32** %8, align 8
  br label %186

186:                                              ; preds = %183, %178
  %187 = load i32, i32* %19, align 4
  %188 = and i32 %187, 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %209, label %190

190:                                              ; preds = %186
  store i32 0, i32* %18, align 4
  br label %191

191:                                              ; preds = %201, %190
  %192 = load i32, i32* %18, align 4
  %193 = icmp slt i32 %192, 5
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* %14, align 4
  %197 = call i8* @getbits_fast(i32* %195, i32 %196)
  %198 = ptrtoint i8* %197 to i32
  %199 = load i32*, i32** %8, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %8, align 8
  store i32 %198, i32* %199, align 4
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %18, align 4
  br label %191

204:                                              ; preds = %191
  %205 = load i32, i32* %14, align 4
  %206 = mul nsw i32 %205, 5
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %13, align 4
  br label %212

209:                                              ; preds = %186
  %210 = load i32*, i32** %8, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 5
  store i32* %211, i32** %8, align 8
  br label %212

212:                                              ; preds = %209, %204
  %213 = load i32, i32* %19, align 4
  %214 = and i32 %213, 2
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %235, label %216

216:                                              ; preds = %212
  store i32 0, i32* %18, align 4
  br label %217

217:                                              ; preds = %227, %216
  %218 = load i32, i32* %18, align 4
  %219 = icmp slt i32 %218, 5
  br i1 %219, label %220, label %230

220:                                              ; preds = %217
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %15, align 4
  %223 = call i8* @getbits_fast(i32* %221, i32 %222)
  %224 = ptrtoint i8* %223 to i32
  %225 = load i32*, i32** %8, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %8, align 8
  store i32 %224, i32* %225, align 4
  br label %227

227:                                              ; preds = %220
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %18, align 4
  br label %217

230:                                              ; preds = %217
  %231 = load i32, i32* %15, align 4
  %232 = mul nsw i32 %231, 5
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %13, align 4
  br label %238

235:                                              ; preds = %212
  %236 = load i32*, i32** %8, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 5
  store i32* %237, i32** %8, align 8
  br label %238

238:                                              ; preds = %235, %230
  %239 = load i32, i32* %19, align 4
  %240 = and i32 %239, 1
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %261, label %242

242:                                              ; preds = %238
  store i32 0, i32* %18, align 4
  br label %243

243:                                              ; preds = %253, %242
  %244 = load i32, i32* %18, align 4
  %245 = icmp slt i32 %244, 5
  br i1 %245, label %246, label %256

246:                                              ; preds = %243
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %15, align 4
  %249 = call i8* @getbits_fast(i32* %247, i32 %248)
  %250 = ptrtoint i8* %249 to i32
  %251 = load i32*, i32** %8, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %8, align 8
  store i32 %250, i32* %251, align 4
  br label %253

253:                                              ; preds = %246
  %254 = load i32, i32* %18, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %18, align 4
  br label %243

256:                                              ; preds = %243
  %257 = load i32, i32* %15, align 4
  %258 = mul nsw i32 %257, 5
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %13, align 4
  br label %264

261:                                              ; preds = %238
  %262 = load i32*, i32** %8, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 5
  store i32* %263, i32** %8, align 8
  br label %264

264:                                              ; preds = %261, %256
  %265 = load i32*, i32** %8, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %8, align 8
  store i32 0, i32* %265, align 4
  br label %267

267:                                              ; preds = %264, %151
  br label %268

268:                                              ; preds = %267, %110
  %269 = load i32, i32* %13, align 4
  store i32 %269, i32* %6, align 4
  br label %270

270:                                              ; preds = %268, %49
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @getbits_fast(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_picture_pool.c_test.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_picture_pool.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@PICTURES = common dso_local global i32 0, align 4
@fmt = common dso_local global i32 0, align 4
@pool = common dso_local global i32* null, align 8
@reserve = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* @PICTURES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %3, align 8
  %21 = alloca %struct.TYPE_8__*, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %22 = load i32, i32* @PICTURES, align 4
  %23 = call i32* @picture_pool_NewFromFormat(i32* @fmt, i32 %22)
  store i32* %23, i32** @pool, align 8
  %24 = load i32*, i32** @pool, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %45, %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PICTURES, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32*, i32** @pool, align 8
  %34 = call %struct.TYPE_8__* @picture_pool_Get(i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %36
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %28

48:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %59, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PICTURES, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32*, i32** @pool, align 8
  %55 = call %struct.TYPE_8__* @picture_pool_Get(i32* %54)
  %56 = icmp eq %struct.TYPE_8__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %49

62:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @PICTURES, align 4
  %66 = sdiv i32 %65, 2
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @picture_Hold(%struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %63

77:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %89, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PICTURES, align 4
  %81 = sdiv i32 %80, 2
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @picture_Release(%struct.TYPE_8__* %87)
  br label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %78

92:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %141, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @PICTURES, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %144

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %10, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = icmp ne i8* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = call i32 @picture_Release(%struct.TYPE_8__* %114)
  %116 = load i32*, i32** @pool, align 8
  %117 = call %struct.TYPE_8__* @picture_pool_Get(i32* %116)
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %119
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %122
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = icmp ne %struct.TYPE_8__* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** %10, align 8
  %138 = icmp eq i8* %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  br label %141

141:                                              ; preds = %97
  %142 = load i32, i32* %9, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %93

144:                                              ; preds = %93
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %155, %144
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @PICTURES, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %151
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = call i32 @picture_Release(%struct.TYPE_8__* %153)
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %11, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %145

158:                                              ; preds = %145
  store i32 0, i32* %12, align 4
  br label %159

159:                                              ; preds = %176, %158
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @PICTURES, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %159
  %164 = load i32*, i32** @pool, align 8
  %165 = call %struct.TYPE_8__* @picture_pool_Wait(i32* %164)
  %166 = load i32, i32* %12, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %167
  store %struct.TYPE_8__* %165, %struct.TYPE_8__** %168, align 8
  %169 = load i32, i32* %12, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %170
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = icmp ne %struct.TYPE_8__* %172, null
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  br label %176

176:                                              ; preds = %163
  %177 = load i32, i32* %12, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %159

179:                                              ; preds = %159
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %190, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @PICTURES, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = load i32, i32* %13, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %186
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = call i32 @picture_Release(%struct.TYPE_8__* %188)
  br label %190

190:                                              ; preds = %184
  %191 = load i32, i32* %13, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %13, align 4
  br label %180

193:                                              ; preds = %180
  %194 = load i32*, i32** @pool, align 8
  %195 = load i32, i32* @PICTURES, align 4
  %196 = sdiv i32 %195, 2
  %197 = call i32* @picture_pool_Reserve(i32* %194, i32 %196)
  store i32* %197, i32** @reserve, align 8
  %198 = load i32*, i32** @reserve, align 8
  %199 = icmp ne i32* %198, null
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %220, %193
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @PICTURES, align 4
  %205 = sdiv i32 %204, 2
  %206 = icmp ult i32 %203, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %202
  %208 = load i32*, i32** @pool, align 8
  %209 = call %struct.TYPE_8__* @picture_pool_Get(i32* %208)
  %210 = load i32, i32* %14, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %211
  store %struct.TYPE_8__* %209, %struct.TYPE_8__** %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %214
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = icmp ne %struct.TYPE_8__* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  br label %220

220:                                              ; preds = %207
  %221 = load i32, i32* %14, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %202

223:                                              ; preds = %202
  %224 = load i32, i32* @PICTURES, align 4
  %225 = sdiv i32 %224, 2
  store i32 %225, i32* %15, align 4
  br label %226

226:                                              ; preds = %248, %223
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @PICTURES, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %226
  %231 = load i32*, i32** @pool, align 8
  %232 = call %struct.TYPE_8__* @picture_pool_Get(i32* %231)
  %233 = icmp eq %struct.TYPE_8__* %232, null
  %234 = zext i1 %233 to i32
  %235 = call i32 @assert(i32 %234)
  %236 = load i32*, i32** @reserve, align 8
  %237 = call %struct.TYPE_8__* @picture_pool_Get(i32* %236)
  %238 = load i32, i32* %15, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %239
  store %struct.TYPE_8__* %237, %struct.TYPE_8__** %240, align 8
  %241 = load i32, i32* %15, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %242
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = icmp ne %struct.TYPE_8__* %244, null
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  br label %248

248:                                              ; preds = %230
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %226

251:                                              ; preds = %226
  %252 = load i32, i32* %2, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %251
  store i32 0, i32* %16, align 4
  br label %255

255:                                              ; preds = %265, %254
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* @PICTURES, align 4
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %255
  %260 = load i32, i32* %16, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %261
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = call i32 @picture_Release(%struct.TYPE_8__* %263)
  br label %265

265:                                              ; preds = %259
  %266 = load i32, i32* %16, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %16, align 4
  br label %255

268:                                              ; preds = %255
  br label %269

269:                                              ; preds = %268, %251
  %270 = load i32*, i32** @reserve, align 8
  %271 = call i32 @picture_pool_Release(i32* %270)
  %272 = load i32*, i32** @pool, align 8
  %273 = call i32 @picture_pool_Release(i32* %272)
  %274 = load i32, i32* %2, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %291

276:                                              ; preds = %269
  store i32 0, i32* %17, align 4
  br label %277

277:                                              ; preds = %287, %276
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* @PICTURES, align 4
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %281, label %290

281:                                              ; preds = %277
  %282 = load i32, i32* %17, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %21, i64 %283
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = call i32 @picture_Release(%struct.TYPE_8__* %285)
  br label %287

287:                                              ; preds = %281
  %288 = load i32, i32* %17, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %17, align 4
  br label %277

290:                                              ; preds = %277
  br label %291

291:                                              ; preds = %290, %269
  %292 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %292)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @picture_pool_NewFromFormat(i32*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.TYPE_8__* @picture_pool_Get(i32*) #2

declare dso_local i32 @picture_Hold(%struct.TYPE_8__*) #2

declare dso_local i32 @picture_Release(%struct.TYPE_8__*) #2

declare dso_local %struct.TYPE_8__* @picture_pool_Wait(i32*) #2

declare dso_local i32* @picture_pool_Reserve(i32*, i32) #2

declare dso_local i32 @picture_pool_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

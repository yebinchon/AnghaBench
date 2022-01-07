; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_config_enc.c_WebPValidateConfig.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_config_enc.c_WebPValidateConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@WEBP_HINT_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WebPValidateConfig(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %281

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 100
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %7
  store i32 0, i32* %2, align 4
  br label %281

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %281

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %281

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  store i32 0, i32* %2, align 4
  br label %281

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  store i32 0, i32* %2, align 4
  br label %281

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 100
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  store i32 0, i32* %2, align 4
  br label %281

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 100
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %63
  store i32 0, i32* %2, align 4
  br label %281

74:                                               ; preds = %68
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 7
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74
  store i32 0, i32* %2, align 4
  br label %281

85:                                               ; preds = %79
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 1
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %85
  store i32 0, i32* %2, align 4
  br label %281

96:                                               ; preds = %90
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %96
  store i32 0, i32* %2, align 4
  br label %281

107:                                              ; preds = %101
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 10
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %107
  store i32 0, i32* %2, align 4
  br label %281

118:                                              ; preds = %112
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 11
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %123, %118
  store i32 0, i32* %2, align 4
  br label %281

129:                                              ; preds = %123
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 12
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 7
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %129
  store i32 0, i32* %2, align 4
  br label %281

140:                                              ; preds = %134
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 13
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %140
  store i32 0, i32* %2, align 4
  br label %281

151:                                              ; preds = %145
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 100
  br i1 %160, label %161, label %162

161:                                              ; preds = %156, %151
  store i32 0, i32* %2, align 4
  br label %281

162:                                              ; preds = %156
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 15
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %281

168:                                              ; preds = %162
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 16
  %171 = load i64, i64* %170, align 8
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %281

174:                                              ; preds = %168
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 17
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %182, 100
  br i1 %183, label %184, label %185

184:                                              ; preds = %179, %174
  store i32 0, i32* %2, align 4
  br label %281

185:                                              ; preds = %179
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 18
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 18
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %190, %185
  store i32 0, i32* %2, align 4
  br label %281

196:                                              ; preds = %190
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 19
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 19
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %204, 100
  br i1 %205, label %206, label %207

206:                                              ; preds = %201, %196
  store i32 0, i32* %2, align 4
  br label %281

207:                                              ; preds = %201
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 20
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @WEBP_HINT_LAST, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  store i32 0, i32* %2, align 4
  br label %281

214:                                              ; preds = %207
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 21
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 21
  %222 = load i32, i32* %221, align 8
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %219, %214
  store i32 0, i32* %2, align 4
  br label %281

225:                                              ; preds = %219
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 22
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 22
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %236

235:                                              ; preds = %230, %225
  store i32 0, i32* %2, align 4
  br label %281

236:                                              ; preds = %230
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 23
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 23
  %244 = load i32, i32* %243, align 8
  %245 = icmp sgt i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %241, %236
  store i32 0, i32* %2, align 4
  br label %281

247:                                              ; preds = %241
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 24
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %247
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 24
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 1
  br i1 %256, label %257, label %258

257:                                              ; preds = %252, %247
  store i32 0, i32* %2, align 4
  br label %281

258:                                              ; preds = %252
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 25
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 25
  %266 = load i32, i32* %265, align 8
  %267 = icmp sgt i32 %266, 1
  br i1 %267, label %268, label %269

268:                                              ; preds = %263, %258
  store i32 0, i32* %2, align 4
  br label %281

269:                                              ; preds = %263
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 26
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %269
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 26
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %274, %269
  store i32 0, i32* %2, align 4
  br label %281

280:                                              ; preds = %274
  store i32 1, i32* %2, align 4
  br label %281

281:                                              ; preds = %280, %279, %268, %257, %246, %235, %224, %213, %206, %195, %184, %173, %167, %161, %150, %139, %128, %117, %106, %95, %84, %73, %62, %51, %40, %29, %23, %17, %6
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

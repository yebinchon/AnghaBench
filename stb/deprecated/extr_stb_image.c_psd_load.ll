; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_psd_load.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_psd_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"not PSD\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Corrupt PSD image\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"wrong version\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported version of PSD image\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wrong channel count\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Unsupported number of channels in PSD image\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unsupported bit depth\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"PSD bit depth is not 8 bit\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"wrong color format\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"PSD is not in RGB color format\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"bad compression\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"PSD has an unknown compression format\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32)* @psd_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @psd_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @get32(i32* %25)
  %27 = icmp ne i32 %26, 943870035
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32* @epuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %6, align 8
  br label %278

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @get16(i32* %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32* @epuc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32* %35, i32** %6, align 8
  br label %278

36:                                               ; preds = %30
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @skip(i32* %37, i32 6)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @get16(i32* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 16
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %36
  %47 = call i32* @epuc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32* %47, i32** %6, align 8
  br label %278

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @get32(i32* %49)
  store i32 %50, i32* %20, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @get32(i32* %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @get16(i32* %53)
  %55 = icmp ne i32 %54, 8
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32* @epuc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32* %57, i32** %6, align 8
  br label %278

58:                                               ; preds = %48
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @get16(i32* %59)
  %61 = icmp ne i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32* @epuc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32* %63, i32** %6, align 8
  br label %278

64:                                               ; preds = %58
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @get32(i32* %66)
  %68 = call i32 @skip(i32* %65, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @get32(i32* %70)
  %72 = call i32 @skip(i32* %69, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @get32(i32* %74)
  %76 = call i32 @skip(i32* %73, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @get16(i32* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = call i32* @epuc(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  store i32* %82, i32** %6, align 8
  br label %278

83:                                               ; preds = %64
  %84 = load i32, i32* %19, align 4
  %85 = mul nsw i32 4, %84
  %86 = load i32, i32* %20, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i64 @malloc(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %21, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = call i32* @epuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store i32* %93, i32** %6, align 8
  br label %278

94:                                               ; preds = %83
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = mul nsw i32 %95, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %200

100:                                              ; preds = %94
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %102, %103
  %105 = mul nsw i32 %104, 2
  %106 = call i32 @skip(i32* %101, i32 %105)
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %196, %100
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %199

110:                                              ; preds = %107
  %111 = load i32*, i32** %21, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %22, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %110
  store i32 0, i32* %16, align 4
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 3
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 255, i32 0
  %128 = load i32*, i32** %22, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32*, i32** %22, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  store i32* %130, i32** %22, align 8
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %119

134:                                              ; preds = %119
  br label %195

135:                                              ; preds = %110
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %193, %135
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %194

140:                                              ; preds = %136
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @get8(i32* %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp eq i32 %143, 128
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %193

146:                                              ; preds = %140
  %147 = load i32, i32* %18, align 4
  %148 = icmp slt i32 %147, 128
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %158, %149
  %156 = load i32, i32* %18, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @get8u(i32* %159)
  %161 = load i32*, i32** %22, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32*, i32** %22, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  store i32* %163, i32** %22, align 8
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %18, align 4
  br label %155

166:                                              ; preds = %155
  br label %192

167:                                              ; preds = %146
  %168 = load i32, i32* %18, align 4
  %169 = icmp sgt i32 %168, 128
  br i1 %169, label %170, label %191

170:                                              ; preds = %167
  %171 = load i32, i32* %18, align 4
  %172 = xor i32 %171, 255
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 2
  store i32 %174, i32* %18, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @get8u(i32* %175)
  store i32 %176, i32* %23, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %17, align 4
  br label %180

180:                                              ; preds = %183, %170
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32, i32* %23, align 4
  %185 = load i32*, i32** %22, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32*, i32** %22, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 4
  store i32* %187, i32** %22, align 8
  %188 = load i32, i32* %18, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %18, align 4
  br label %180

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %167
  br label %192

192:                                              ; preds = %191, %166
  br label %193

193:                                              ; preds = %192, %145
  br label %136

194:                                              ; preds = %136
  br label %195

195:                                              ; preds = %194, %134
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %15, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %15, align 4
  br label %107

199:                                              ; preds = %107
  br label %249

200:                                              ; preds = %94
  store i32 0, i32* %15, align 4
  br label %201

201:                                              ; preds = %245, %200
  %202 = load i32, i32* %15, align 4
  %203 = icmp slt i32 %202, 4
  br i1 %203, label %204, label %248

204:                                              ; preds = %201
  %205 = load i32*, i32** %21, align 8
  %206 = load i32, i32* %15, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32* %208, i32** %24, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %204
  store i32 0, i32* %16, align 4
  br label %213

213:                                              ; preds = %225, %212
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %213
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %218, 3
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 255, i32 0
  %222 = load i32*, i32** %24, align 8
  store i32 %221, i32* %222, align 4
  %223 = load i32*, i32** %24, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  store i32* %224, i32** %24, align 8
  br label %225

225:                                              ; preds = %217
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %16, align 4
  br label %213

228:                                              ; preds = %213
  br label %244

229:                                              ; preds = %204
  store i32 0, i32* %16, align 4
  br label %230

230:                                              ; preds = %240, %229
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* %12, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %243

234:                                              ; preds = %230
  %235 = load i32*, i32** %7, align 8
  %236 = call i32 @get8u(i32* %235)
  %237 = load i32*, i32** %24, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32*, i32** %24, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 4
  store i32* %239, i32** %24, align 8
  br label %240

240:                                              ; preds = %234
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  br label %230

243:                                              ; preds = %230
  br label %244

244:                                              ; preds = %243, %228
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %201

248:                                              ; preds = %201
  br label %249

249:                                              ; preds = %248, %199
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %249
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %253, 4
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32*, i32** %21, align 8
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %20, align 4
  %260 = call i32* @convert_format(i32* %256, i32 4, i32 %257, i32 %258, i32 %259)
  store i32* %260, i32** %21, align 8
  %261 = load i32*, i32** %21, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = load i32*, i32** %21, align 8
  store i32* %264, i32** %6, align 8
  br label %278

265:                                              ; preds = %255
  br label %266

266:                                              ; preds = %265, %252, %249
  %267 = load i32*, i32** %10, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* %13, align 4
  %271 = load i32*, i32** %10, align 8
  store i32 %270, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %20, align 4
  %274 = load i32*, i32** %9, align 8
  store i32 %273, i32* %274, align 4
  %275 = load i32, i32* %19, align 4
  %276 = load i32*, i32** %8, align 8
  store i32 %275, i32* %276, align 4
  %277 = load i32*, i32** %21, align 8
  store i32* %277, i32** %6, align 8
  br label %278

278:                                              ; preds = %272, %263, %92, %81, %62, %56, %46, %34, %28
  %279 = load i32*, i32** %6, align 8
  ret i32* %279
}

declare dso_local i32 @get32(i32*) #1

declare dso_local i32* @epuc(i8*, i8*) #1

declare dso_local i32 @get16(i32*) #1

declare dso_local i32 @skip(i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @get8(i32*) #1

declare dso_local i32 @get8u(i32*) #1

declare dso_local i32* @convert_format(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

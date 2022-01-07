; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_process_conditionals.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_process_conditionals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@rofi_theme = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_theme_parse_process_conditionals() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = call i32 @monitor_active(%struct.TYPE_8__* %1)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %287

21:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %284, %21
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %287

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %283

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %281 [
    i32 129, label %46
    i32 132, label %78
    i32 130, label %110
    i32 133, label %142
    i32 128, label %174
    i32 131, label %205
    i32 134, label %243
  ]

46:                                               ; preds = %40
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %64, i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %57

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %46
  br label %282

78:                                               ; preds = %40
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %105, %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %96, i32 %103)
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %89

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %78
  br label %282

110:                                              ; preds = %40
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %8, align 4
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %110
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %137, %120
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %128, i32 %135)
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %121

140:                                              ; preds = %121
  br label %141

141:                                              ; preds = %140, %110
  br label %282

142:                                              ; preds = %40
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %10, align 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %169, %152
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ult i32 %154, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %160, i32 %167)
  br label %169

169:                                              ; preds = %159
  %170 = load i32, i32* %11, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %153

172:                                              ; preds = %153
  br label %173

173:                                              ; preds = %172, %142
  br label %282

174:                                              ; preds = %40
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %176, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %174
  store i32 0, i32* %12, align 4
  br label %184

184:                                              ; preds = %200, %183
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ult i32 %185, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %191, i32 %198)
  br label %200

200:                                              ; preds = %190
  %201 = load i32, i32* %12, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %184

203:                                              ; preds = %184
  br label %204

204:                                              ; preds = %203, %174
  br label %282

205:                                              ; preds = %40
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = sitofp i32 %210 to double
  store double %211, double* %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sitofp i32 %213 to double
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sitofp i32 %216 to double
  %218 = fdiv double %214, %217
  %219 = load double, double* %13, align 8
  %220 = fcmp oge double %218, %219
  br i1 %220, label %221, label %242

221:                                              ; preds = %205
  store i32 0, i32* %14, align 4
  br label %222

222:                                              ; preds = %238, %221
  %223 = load i32, i32* %14, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ult i32 %223, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %229, i32 %236)
  br label %238

238:                                              ; preds = %228
  %239 = load i32, i32* %14, align 4
  %240 = add i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %222

241:                                              ; preds = %222
  br label %242

242:                                              ; preds = %241, %205
  br label %282

243:                                              ; preds = %40
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sitofp i32 %248 to double
  store double %249, double* %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = sitofp i32 %251 to double
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sitofp i32 %254 to double
  %256 = fdiv double %252, %255
  %257 = load double, double* %15, align 8
  %258 = fcmp olt double %256, %257
  br i1 %258, label %259, label %280

259:                                              ; preds = %243
  store i32 0, i32* %16, align 4
  br label %260

260:                                              ; preds = %276, %259
  %261 = load i32, i32* %16, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp ult i32 %261, %264
  br i1 %265, label %266, label %279

266:                                              ; preds = %260
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rofi_theme, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %16, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__* %267, i32 %274)
  br label %276

276:                                              ; preds = %266
  %277 = load i32, i32* %16, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %16, align 4
  br label %260

279:                                              ; preds = %260
  br label %280

280:                                              ; preds = %279, %243
  br label %282

281:                                              ; preds = %40
  br label %282

282:                                              ; preds = %281, %280, %242, %204, %173, %141, %109, %77
  br label %283

283:                                              ; preds = %282, %28
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %2, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %2, align 4
  br label %22

287:                                              ; preds = %20, %22
  ret void
}

declare dso_local i32 @monitor_active(%struct.TYPE_8__*) #1

declare dso_local i32 @rofi_theme_parse_merge_widgets(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

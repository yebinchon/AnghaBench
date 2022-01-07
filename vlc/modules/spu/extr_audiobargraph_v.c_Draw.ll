; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_Draw.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_audiobargraph_v.c_Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32*, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32 }

@black = common dso_local global %struct.TYPE_22__* null, align 8
@white = common dso_local global %struct.TYPE_22__* null, align 8
@Draw.pixmap = internal constant [6 x [5 x %struct.TYPE_22__]] [[5 x %struct.TYPE_22__] [%struct.TYPE_22__ { i32 23, i32 21, i32 21, i32 21, i32 23 }, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer], [5 x %struct.TYPE_22__] [%struct.TYPE_22__ { i32 119, i32 69, i32 117, i32 21, i32 119 }, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer], [5 x %struct.TYPE_22__] [%struct.TYPE_22__ { i32 119, i32 21, i32 117, i32 21, i32 119 }, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer], [5 x %struct.TYPE_22__] [%struct.TYPE_22__ { i32 23, i32 21, i32 117, i32 85, i32 87 }, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer], [5 x %struct.TYPE_22__] [%struct.TYPE_22__ { i32 119, i32 21, i32 117, i32 69, i32 119 }, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer], [5 x %struct.TYPE_22__] [%struct.TYPE_22__ { i32 119, i32 85, i32 117, i32 69, i32 119 }, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer, %struct.TYPE_22__ zeroinitializer]], align 16
@bright_red = common dso_local global %struct.TYPE_22__* null, align 8
@bright_green = common dso_local global %struct.TYPE_22__* null, align 8
@bright_yellow = common dso_local global %struct.TYPE_22__* null, align 8
@green = common dso_local global %struct.TYPE_22__* null, align 8
@yellow = common dso_local global %struct.TYPE_22__* null, align 8
@red = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Draw(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  store i32 40, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, 30
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %1
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 30
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %57, %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 6
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  %48 = sub nsw i32 0, %47
  %49 = mul nsw i32 %48, 10
  %50 = call i32 @iec_scale(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = mul nsw i32 %50, %51
  %53 = add nsw i32 %52, 20
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %42

60:                                               ; preds = %42
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = icmp ne %struct.TYPE_24__* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = call i32 @picture_Release(%struct.TYPE_24__* %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = call i32 @VLC_FOURCC(i8 signext 89, i8 zeroext 85, i8 signext 86, i8 signext 65)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.TYPE_24__* @picture_New(i32 %71, i32 %72, i32 %73, i32 1, i32 1)
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 5
  store %struct.TYPE_24__* %74, %struct.TYPE_24__** %76, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  %80 = icmp ne %struct.TYPE_24__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %318

82:                                               ; preds = %70
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %84, align 8
  store %struct.TYPE_24__* %85, %struct.TYPE_24__** %10, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %87, align 8
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %116, %82
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %89
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %107, %113
  %115 = call i32 @memset(i32 %101, i32 0, i32 %114)
  br label %116

116:                                              ; preds = %95
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %89

119:                                              ; preds = %89
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** @black, align 8
  %123 = call i32 @Draw2VLines(%struct.TYPE_23__* %120, i32 %121, i32 20, %struct.TYPE_22__* %122)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** @white, align 8
  %127 = call i32 @Draw2VLines(%struct.TYPE_23__* %124, i32 %125, i32 22, %struct.TYPE_22__* %126)
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %164, %119
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %129, 6
  br i1 %130, label %131, label %167

131:                                              ; preds = %128
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %134, %138
  %140 = sub nsw i32 %139, 1
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** @white, align 8
  %142 = call i32 @DrawHLines(%struct.TYPE_23__* %132, i32 %140, i32 24, %struct.TYPE_22__* %141, i32 1, i32 3)
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %145, %149
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** @black, align 8
  %152 = call i32 @DrawHLines(%struct.TYPE_23__* %143, i32 %150, i32 24, %struct.TYPE_22__* %151, i32 2, i32 3)
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [6 x [5 x %struct.TYPE_22__]], [6 x [5 x %struct.TYPE_22__]]* @Draw.pixmap, i64 0, i64 %156
  %158 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %157, i64 0, i64 0
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @DrawNumber(%struct.TYPE_23__* %153, i32 %154, %struct.TYPE_22__* %158, i32 %162)
  br label %164

164:                                              ; preds = %131
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %128

167:                                              ; preds = %128
  %168 = call i32 @iec_scale(i32 -8)
  %169 = load i32, i32* %4, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %170, 20
  store i32 %171, i32* %14, align 4
  %172 = call i32 @iec_scale(i32 -18)
  %173 = load i32, i32* %4, align 4
  %174 = mul nsw i32 %172, %173
  %175 = add nsw i32 %174, 20
  store i32 %175, i32* %15, align 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %16, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %167
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bright_red, align 8
  br label %187

185:                                              ; preds = %167
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** @black, align 8
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi %struct.TYPE_22__* [ %184, %183 ], [ %186, %185 ]
  store %struct.TYPE_22__* %188, %struct.TYPE_22__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %315, %187
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %3, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %318

193:                                              ; preds = %189
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 5, %195
  %197 = mul nsw i32 %194, %196
  %198 = add nsw i32 30, %197
  store i32 %198, i32* %19, align 4
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sub nsw i32 %200, 20
  %202 = sub nsw i32 %201, 1
  %203 = load i32, i32* %19, align 4
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @DrawHLines(%struct.TYPE_23__* %199, i32 %202, i32 %203, %struct.TYPE_22__* %204, i32 8, i32 %205)
  store i32 20, i32* %20, align 4
  br label %207

207:                                              ; preds = %256, %193
  %208 = load i32, i32* %20, align 4
  %209 = load i32*, i32** %16, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 20
  %215 = icmp slt i32 %208, %214
  br i1 %215, label %216, label %259

216:                                              ; preds = %207
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %216
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %20, align 4
  %224 = sub nsw i32 %222, %223
  %225 = sub nsw i32 %224, 1
  %226 = load i32, i32* %19, align 4
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bright_green, align 8
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @DrawHLines(%struct.TYPE_23__* %221, i32 %225, i32 %226, %struct.TYPE_22__* %227, i32 1, i32 %228)
  br label %255

230:                                              ; preds = %216
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %236, %237
  %239 = sub nsw i32 %238, 1
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bright_yellow, align 8
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @DrawHLines(%struct.TYPE_23__* %235, i32 %239, i32 %240, %struct.TYPE_22__* %241, i32 1, i32 %242)
  br label %254

244:                                              ; preds = %230
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %20, align 4
  %248 = sub nsw i32 %246, %247
  %249 = sub nsw i32 %248, 1
  %250 = load i32, i32* %19, align 4
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** @bright_red, align 8
  %252 = load i32, i32* %5, align 4
  %253 = call i32 @DrawHLines(%struct.TYPE_23__* %245, i32 %249, i32 %250, %struct.TYPE_22__* %251, i32 1, i32 %252)
  br label %254

254:                                              ; preds = %244, %234
  br label %255

255:                                              ; preds = %254, %220
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %20, align 4
  br label %207

259:                                              ; preds = %207
  %260 = load i32*, i32** %16, align 8
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 20
  store i32 %265, i32* %21, align 4
  br label %266

266:                                              ; preds = %311, %259
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %4, align 4
  %269 = add nsw i32 %268, 20
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %314

271:                                              ; preds = %266
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %271
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %21, align 4
  %279 = sub nsw i32 %277, %278
  %280 = sub nsw i32 %279, 1
  %281 = load i32, i32* %19, align 4
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** @green, align 8
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @DrawHLines(%struct.TYPE_23__* %276, i32 %280, i32 %281, %struct.TYPE_22__* %282, i32 1, i32 %283)
  br label %310

285:                                              ; preds = %271
  %286 = load i32, i32* %21, align 4
  %287 = load i32, i32* %14, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %21, align 4
  %293 = sub nsw i32 %291, %292
  %294 = sub nsw i32 %293, 1
  %295 = load i32, i32* %19, align 4
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** @yellow, align 8
  %297 = load i32, i32* %5, align 4
  %298 = call i32 @DrawHLines(%struct.TYPE_23__* %290, i32 %294, i32 %295, %struct.TYPE_22__* %296, i32 1, i32 %297)
  br label %309

299:                                              ; preds = %285
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %21, align 4
  %303 = sub nsw i32 %301, %302
  %304 = sub nsw i32 %303, 1
  %305 = load i32, i32* %19, align 4
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** @red, align 8
  %307 = load i32, i32* %5, align 4
  %308 = call i32 @DrawHLines(%struct.TYPE_23__* %300, i32 %304, i32 %305, %struct.TYPE_22__* %306, i32 1, i32 %307)
  br label %309

309:                                              ; preds = %299, %289
  br label %310

310:                                              ; preds = %309, %275
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %21, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %21, align 4
  br label %266

314:                                              ; preds = %266
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %18, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %18, align 4
  br label %189

318:                                              ; preds = %81, %189
  ret void
}

declare dso_local i32 @iec_scale(i32) #1

declare dso_local i32 @picture_Release(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @picture_New(i32, i32, i32, i32, i32) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 zeroext, i8 signext, i8 signext) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @Draw2VLines(%struct.TYPE_23__*, i32, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @DrawHLines(%struct.TYPE_23__*, i32, i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @DrawNumber(%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

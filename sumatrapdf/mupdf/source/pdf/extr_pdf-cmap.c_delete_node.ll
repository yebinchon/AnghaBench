; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_delete_node.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-cmap.c_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @delete_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_node(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EMPTY, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EMPTY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %102

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EMPTY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 %41, i32* %7, align 4
  br label %88

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32 %59, i32* %64, align 4
  store i32 %59, i32* %7, align 4
  br label %87

65:                                               ; preds = %44
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  store i32 %81, i32* %7, align 4
  br label %87

87:                                               ; preds = %65, %53
  br label %88

88:                                               ; preds = %87, %35
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @EMPTY, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  br label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %92
  br label %397

102:                                              ; preds = %2
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @EMPTY, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %182

111:                                              ; preds = %102
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @EMPTY, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  store i32 %121, i32* %7, align 4
  br label %168

124:                                              ; preds = %111
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %124
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = load i32, i32* %4, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  store i32 %139, i32* %144, align 4
  store i32 %139, i32* %7, align 4
  br label %167

145:                                              ; preds = %124
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = load i32, i32* %4, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 4
  store i32 %161, i32* %7, align 4
  br label %167

167:                                              ; preds = %145, %133
  br label %168

168:                                              ; preds = %167, %115
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @EMPTY, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i32 %173, i32* %178, align 4
  br label %181

179:                                              ; preds = %168
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %179, %172
  br label %396

182:                                              ; preds = %102
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %8, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = load i32, i32* %4, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %199, %182
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = load i32, i32* %7, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @EMPTY, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %190
  %200 = load i32, i32* %7, align 4
  store i32 %200, i32* %8, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %202 = load i32, i32* %7, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %7, align 4
  br label %190

207:                                              ; preds = %190
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %4, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %244

211:                                              ; preds = %207
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %213 = load i32, i32* %7, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %219 = load i32, i32* %8, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  store i32 %217, i32* %222, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = load i32, i32* %8, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @EMPTY, align 4
  %230 = icmp ne i32 %228, %229
  br i1 %230, label %231, label %243

231:                                              ; preds = %211
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %235 = load i32, i32* %8, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  store i32 %232, i32* %242, align 4
  br label %243

243:                                              ; preds = %231, %211
  br label %277

244:                                              ; preds = %207
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %246 = load i32, i32* %7, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = load i32, i32* %8, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  store i32 %250, i32* %255, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %257 = load i32, i32* %8, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @EMPTY, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %244
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %268 = load i32, i32* %8, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  store i32 %265, i32* %275, align 4
  br label %276

276:                                              ; preds = %264, %244
  br label %277

277:                                              ; preds = %276, %243
  %278 = load i32, i32* %6, align 4
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %280 = load i32, i32* %7, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  store i32 %278, i32* %283, align 4
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* @EMPTY, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %297

287:                                              ; preds = %277
  %288 = load i32, i32* @EMPTY, align 4
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %290 = load i32, i32* %7, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 0
  store i32 %288, i32* %293, align 4
  %294 = load i32, i32* %7, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  br label %331

297:                                              ; preds = %277
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %299 = load i32, i32* %6, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %4, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %297
  %307 = load i32, i32* %7, align 4
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 2
  store i32 %307, i32* %312, align 4
  br label %330

313:                                              ; preds = %297
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %315 = load i32, i32* %6, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %4, align 4
  %321 = icmp eq i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = call i32 @assert(i32 %322)
  %324 = load i32, i32* %7, align 4
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %326 = load i32, i32* %6, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %328, i32 0, i32 1
  store i32 %324, i32* %329, align 4
  br label %330

330:                                              ; preds = %313, %306
  br label %331

331:                                              ; preds = %330, %287
  %332 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %333 = load i32, i32* %4, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %339 = load i32, i32* %7, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 2
  store i32 %337, i32* %342, align 4
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %344 = load i32, i32* %7, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @EMPTY, align 4
  %350 = icmp ne i32 %348, %349
  br i1 %350, label %351, label %363

351:                                              ; preds = %331
  %352 = load i32, i32* %7, align 4
  %353 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %355 = load i32, i32* %7, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 0
  store i32 %352, i32* %362, align 4
  br label %363

363:                                              ; preds = %351, %331
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %365 = load i32, i32* %4, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %371 = load i32, i32* %7, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 1
  store i32 %369, i32* %374, align 4
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %376 = load i32, i32* %7, align 4
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @EMPTY, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %395

383:                                              ; preds = %363
  %384 = load i32, i32* %7, align 4
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %387 = load i32, i32* %7, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 0
  store i32 %384, i32* %394, align 4
  br label %395

395:                                              ; preds = %383, %363
  br label %396

396:                                              ; preds = %395, %181
  br label %397

397:                                              ; preds = %396, %101
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 1
  %400 = load i64, i64* %399, align 8
  %401 = add i64 %400, -1
  store i64 %401, i64* %399, align 8
  %402 = load i32, i32* %4, align 4
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = trunc i64 %405 to i32
  %407 = icmp ne i32 %402, %406
  br i1 %407, label %408, label %561

408:                                              ; preds = %397
  %409 = load i32, i32* %7, align 4
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = trunc i64 %412 to i32
  %414 = icmp eq i32 %409, %413
  br i1 %414, label %415, label %417

415:                                              ; preds = %408
  %416 = load i32, i32* %4, align 4
  store i32 %416, i32* %7, align 4
  br label %417

417:                                              ; preds = %415, %408
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %419 = load i32, i32* %4, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i64 %420
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i64 %425
  %427 = bitcast %struct.TYPE_5__* %421 to i8*
  %428 = bitcast %struct.TYPE_5__* %426 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %427, i8* align 4 %428, i64 12, i1 false)
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %430 = load i32, i32* %4, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* %6, align 4
  %435 = load i32, i32* %6, align 4
  %436 = load i32, i32* @EMPTY, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %442

438:                                              ; preds = %417
  %439 = load i32, i32* %4, align 4
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 0
  store i32 %439, i32* %441, align 8
  br label %482

442:                                              ; preds = %417
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %444 = load i32, i32* %6, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = trunc i64 %451 to i32
  %453 = icmp eq i32 %448, %452
  br i1 %453, label %454, label %461

454:                                              ; preds = %442
  %455 = load i32, i32* %4, align 4
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %457 = load i32, i32* %6, align 4
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 2
  store i32 %455, i32* %460, align 4
  br label %481

461:                                              ; preds = %442
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %463 = load i32, i32* %6, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = trunc i64 %470 to i32
  %472 = icmp eq i32 %467, %471
  %473 = zext i1 %472 to i32
  %474 = call i32 @assert(i32 %473)
  %475 = load i32, i32* %4, align 4
  %476 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %477 = load i32, i32* %6, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %476, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 1
  store i32 %475, i32* %480, align 4
  br label %481

481:                                              ; preds = %461, %454
  br label %482

482:                                              ; preds = %481, %438
  %483 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %484 = load i32, i32* %4, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* @EMPTY, align 4
  %490 = icmp ne i32 %488, %489
  br i1 %490, label %491, label %521

491:                                              ; preds = %482
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %493 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %494 = load i32, i32* %4, align 4
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 1
  %505 = load i64, i64* %504, align 8
  %506 = trunc i64 %505 to i32
  %507 = icmp eq i32 %502, %506
  %508 = zext i1 %507 to i32
  %509 = call i32 @assert(i32 %508)
  %510 = load i32, i32* %4, align 4
  %511 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %512 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %513 = load i32, i32* %4, align 4
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %511, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 0
  store i32 %510, i32* %520, align 4
  br label %521

521:                                              ; preds = %491, %482
  %522 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %523 = load i32, i32* %4, align 4
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @EMPTY, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %560

530:                                              ; preds = %521
  %531 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %532 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %533 = load i32, i32* %4, align 4
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %532, i64 %534
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %531, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 1
  %544 = load i64, i64* %543, align 8
  %545 = trunc i64 %544 to i32
  %546 = icmp eq i32 %541, %545
  %547 = zext i1 %546 to i32
  %548 = call i32 @assert(i32 %547)
  %549 = load i32, i32* %4, align 4
  %550 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %551 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %552 = load i32, i32* %4, align 4
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %550, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i32 0, i32 0
  store i32 %549, i32* %559, align 4
  br label %560

560:                                              ; preds = %530, %521
  br label %561

561:                                              ; preds = %560, %397
  %562 = load i32, i32* %7, align 4
  ret i32 %562
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

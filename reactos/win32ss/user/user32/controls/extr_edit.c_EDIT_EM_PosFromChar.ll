; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_PosFromChar.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_EM_PosFromChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i64, i64, i32, i64, %struct.TYPE_11__, i64, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@END_WRAP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ES_RIGHT = common dso_local global i32 0, align 4
@ES_CENTER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i64)* @EDIT_EM_PosFromChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_EM_PosFromChar(%struct.TYPE_14__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i64 @get_text_length(%struct.TYPE_14__* %21)
  store i64 %22, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @min(i64 %23, i64 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ES_MULTILINE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %172

32:                                               ; preds = %3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @EDIT_EM_LineFromChar(%struct.TYPE_14__* %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @EDIT_UpdateUniscribeData(%struct.TYPE_14__* %36, i32* null, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = mul nsw i64 %43, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_14__* %48, i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %32
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = sub nsw i64 %61, 1
  store i64 %62, i64* %15, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %14, align 8
  br label %66

66:                                               ; preds = %69, %60
  %67 = load i64, i64* %15, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %15, align 8
  br label %66

75:                                               ; preds = %66
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @END_WRAP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %11, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @EDIT_EM_LineIndex(%struct.TYPE_14__* %89, i64 %90)
  store i64 %91, i64* %9, align 8
  br label %92

92:                                               ; preds = %81, %75
  br label %93

93:                                               ; preds = %92, %57, %53, %32
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %14, align 8
  br label %97

97:                                               ; preds = %103, %93
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  store %struct.TYPE_13__* %106, %struct.TYPE_13__** %14, align 8
  br label %97

107:                                              ; preds = %97
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %13, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %114, %118
  store i64 %119, i64* %12, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %107
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = sub nsw i64 %128, 1
  %130 = load i64, i64* %9, align 8
  %131 = sub nsw i64 %129, %130
  %132 = load i32, i32* @TRUE, align 4
  %133 = call i32 @ScriptStringCPtoX(i64 %127, i64 %131, i32 %132, i64* %10)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = sub nsw i64 %137, %136
  store i64 %138, i64* %10, align 8
  br label %143

139:                                              ; preds = %107
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %139, %124
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ES_RIGHT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* %10, align 8
  %154 = sub nsw i64 %152, %153
  %155 = sub nsw i64 %151, %154
  store i64 %155, i64* %10, align 8
  br label %171

156:                                              ; preds = %143
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ES_CENTER, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = sub nsw i64 %164, %165
  %167 = sdiv i64 %166, 2
  %168 = load i64, i64* %10, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %10, align 8
  br label %170

170:                                              ; preds = %163, %156
  br label %171

171:                                              ; preds = %170, %150
  br label %345

172:                                              ; preds = %3
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = call i32 @EDIT_UpdateUniscribeData(%struct.TYPE_14__* %173, i32* null, i64 0)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %233

179:                                              ; preds = %172
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %231

184:                                              ; preds = %179
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = call i64 @get_text_length(%struct.TYPE_14__* %188)
  %190 = icmp sge i64 %187, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %184
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %196 = call i64 @get_text_length(%struct.TYPE_14__* %195)
  %197 = sub nsw i64 %194, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %18, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %191
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = call %struct.TYPE_12__* @ScriptString_pSize(i64 %206)
  store %struct.TYPE_12__* %207, %struct.TYPE_12__** %19, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %16, align 8
  br label %212

211:                                              ; preds = %191
  store i64 0, i64* %16, align 8
  br label %212

212:                                              ; preds = %211, %203
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %18, align 4
  %217 = mul nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %16, align 8
  %220 = add nsw i64 %219, %218
  store i64 %220, i64* %16, align 8
  br label %230

221:                                              ; preds = %184
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* @FALSE, align 4
  %229 = call i32 @ScriptStringCPtoX(i64 %224, i64 %227, i32 %228, i64* %16)
  br label %230

230:                                              ; preds = %221, %212
  br label %232

231:                                              ; preds = %179
  store i64 0, i64* %16, align 8
  br label %232

232:                                              ; preds = %231, %230
  br label %233

233:                                              ; preds = %232, %172
  %234 = load i64, i64* %5, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %233
  %237 = load i64, i64* %5, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = call i64 @get_text_length(%struct.TYPE_14__* %238)
  %240 = icmp sge i64 %237, %239
  br i1 %240, label %241, label %256

241:                                              ; preds = %236
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = call %struct.TYPE_12__* @ScriptString_pSize(i64 %249)
  store %struct.TYPE_12__* %250, %struct.TYPE_12__** %20, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %17, align 8
  br label %255

254:                                              ; preds = %241
  store i64 0, i64* %17, align 8
  br label %255

255:                                              ; preds = %254, %246
  br label %270

256:                                              ; preds = %236
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 7
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %5, align 8
  %266 = load i32, i32* @FALSE, align 4
  %267 = call i32 @ScriptStringCPtoX(i64 %264, i64 %265, i32 %266, i64* %17)
  br label %269

268:                                              ; preds = %256
  store i64 0, i64* %17, align 8
  br label %269

269:                                              ; preds = %268, %261
  br label %270

270:                                              ; preds = %269, %255
  br label %271

271:                                              ; preds = %270, %233
  %272 = load i64, i64* %17, align 8
  %273 = load i64, i64* %16, align 8
  %274 = sub nsw i64 %272, %273
  store i64 %274, i64* %10, align 8
  %275 = load i64, i64* %5, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = icmp sge i64 %275, %278
  br i1 %279, label %280, label %344

280:                                              ; preds = %271
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %343, label %285

285:                                              ; preds = %280
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @ES_RIGHT, align 4
  %290 = load i32, i32* @ES_CENTER, align 4
  %291 = or i32 %289, %290
  %292 = and i32 %288, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %343

294:                                              ; preds = %285
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 6
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = sub nsw i64 %298, %302
  store i64 %303, i64* %12, align 8
  %304 = load i64, i64* %12, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = icmp sgt i64 %304, %307
  br i1 %308, label %309, label %342

309:                                              ; preds = %294
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @ES_RIGHT, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %309
  %317 = load i64, i64* %12, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 5
  %320 = load i64, i64* %319, align 8
  %321 = sub nsw i64 %317, %320
  %322 = load i64, i64* %10, align 8
  %323 = add nsw i64 %322, %321
  store i64 %323, i64* %10, align 8
  br label %341

324:                                              ; preds = %309
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @ES_CENTER, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %324
  %332 = load i64, i64* %12, align 8
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 5
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %332, %335
  %337 = sdiv i64 %336, 2
  %338 = load i64, i64* %10, align 8
  %339 = add nsw i64 %338, %337
  store i64 %339, i64* %10, align 8
  br label %340

340:                                              ; preds = %331, %324
  br label %341

341:                                              ; preds = %340, %316
  br label %342

342:                                              ; preds = %341, %294
  br label %343

343:                                              ; preds = %342, %285, %280
  br label %344

344:                                              ; preds = %343, %271
  store i64 0, i64* %11, align 8
  br label %345

345:                                              ; preds = %344, %171
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 6
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* %10, align 8
  %351 = add nsw i64 %350, %349
  store i64 %351, i64* %10, align 8
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 6
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* %11, align 8
  %357 = add nsw i64 %356, %355
  store i64 %357, i64* %11, align 8
  %358 = load i64, i64* %10, align 8
  %359 = trunc i64 %358 to i32
  %360 = load i64, i64* %11, align 8
  %361 = trunc i64 %360 to i32
  %362 = call i32 @MAKELONG(i32 %359, i32 %361)
  ret i32 %362
}

declare dso_local i64 @get_text_length(%struct.TYPE_14__*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @EDIT_EM_LineFromChar(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @EDIT_UpdateUniscribeData(%struct.TYPE_14__*, i32*, i64) #1

declare dso_local i64 @EDIT_EM_LineIndex(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ScriptStringCPtoX(i64, i64, i32, i64*) #1

declare dso_local %struct.TYPE_12__* @ScriptString_pSize(i64) #1

declare dso_local i32 @MAKELONG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

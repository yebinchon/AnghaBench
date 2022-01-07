; ModuleID = '/home/carl/AnghaBench/tmux/extr_menu.c_menu_key_cb.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_menu.c_menu_key_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.menu_data* }
%struct.menu_data = type { i32, i32, i64, i32, i32, %struct.TYPE_4__*, i32 (%struct.menu*, i64, i64, i32)*, i32, %struct.menu.0* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mouse_event }
%struct.mouse_event = type { i64, i32, i32 }
%struct.menu = type opaque
%struct.menu.0 = type { i32, i64, %struct.menu_item* }
%struct.menu_item = type { i8*, i64, i32 }
%struct.key_event = type { i64, %struct.mouse_event }
%struct.cmdq_item = type { i32 }
%struct.cmd_parse_result = type { i32, i32, i32 }

@MENU_NOMOUSE = common dso_local global i32 0, align 4
@CLIENT_REDRAWOVERLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*, %struct.key_event*)* @menu_key_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_key_cb(%struct.client* %0, %struct.key_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client*, align 8
  %5 = alloca %struct.key_event*, align 8
  %6 = alloca %struct.menu_data*, align 8
  %7 = alloca %struct.menu.0*, align 8
  %8 = alloca %struct.mouse_event*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.menu_item*, align 8
  %13 = alloca %struct.cmdq_item*, align 8
  %14 = alloca %struct.cmd_parse_result*, align 8
  %15 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store %struct.key_event* %1, %struct.key_event** %5, align 8
  %16 = load %struct.client*, %struct.client** %4, align 8
  %17 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 1
  %18 = load %struct.menu_data*, %struct.menu_data** %17, align 8
  store %struct.menu_data* %18, %struct.menu_data** %6, align 8
  %19 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %20 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %19, i32 0, i32 8
  %21 = load %struct.menu.0*, %struct.menu.0** %20, align 8
  store %struct.menu.0* %21, %struct.menu.0** %7, align 8
  %22 = load %struct.key_event*, %struct.key_event** %5, align 8
  %23 = getelementptr inbounds %struct.key_event, %struct.key_event* %22, i32 0, i32 1
  store %struct.mouse_event* %23, %struct.mouse_event** %8, align 8
  %24 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %25 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %28 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.key_event*, %struct.key_event** %5, align 8
  %31 = getelementptr inbounds %struct.key_event, %struct.key_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @KEYC_IS_MOUSE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %143

35:                                               ; preds = %2
  %36 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %37 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MENU_NOMOUSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %44 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @MOUSE_BUTTONS(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %412

49:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %412

50:                                               ; preds = %35
  %51 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %52 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %55 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %92, label %58

58:                                               ; preds = %50
  %59 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %60 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %63 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 4
  %66 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %67 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = icmp sgt i64 %61, %69
  br i1 %70, label %92, label %71

71:                                               ; preds = %58
  %72 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %73 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %76 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %71
  %81 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %82 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %85 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = sub nsw i32 %89, 1
  %91 = icmp sgt i32 %83, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %80, %71, %58, %50
  %93 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %94 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @MOUSE_RELEASE(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %412

99:                                               ; preds = %92
  %100 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %101 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %106 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load i32, i32* @CLIENT_REDRAWOVERLAY, align 4
  %108 = load %struct.client*, %struct.client** %4, align 8
  %109 = getelementptr inbounds %struct.client, %struct.client* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %104, %99
  store i32 0, i32* %3, align 4
  br label %412

113:                                              ; preds = %80
  %114 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %115 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @MOUSE_RELEASE(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %309

120:                                              ; preds = %113
  %121 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %122 = getelementptr inbounds %struct.mouse_event, %struct.mouse_event* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %125 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  %128 = sub nsw i32 %123, %127
  %129 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %130 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %132 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %120
  %137 = load i32, i32* @CLIENT_REDRAWOVERLAY, align 4
  %138 = load %struct.client*, %struct.client** %4, align 8
  %139 = getelementptr inbounds %struct.client, %struct.client* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %120
  store i32 0, i32* %3, align 4
  br label %412

143:                                              ; preds = %2
  store i64 0, i64* %9, align 8
  br label %144

144:                                              ; preds = %183, %143
  %145 = load i64, i64* %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ult i64 %145, %147
  br i1 %148, label %149, label %186

149:                                              ; preds = %144
  %150 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %151 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %150, i32 0, i32 2
  %152 = load %struct.menu_item*, %struct.menu_item** %151, align 8
  %153 = load i64, i64* %9, align 8
  %154 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %152, i64 %153
  %155 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %15, align 8
  %157 = load i8*, i8** %15, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %149
  %160 = load i8*, i8** %15, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 45
  br i1 %163, label %164, label %165

164:                                              ; preds = %159, %149
  br label %183

165:                                              ; preds = %159
  %166 = load %struct.key_event*, %struct.key_event** %5, align 8
  %167 = getelementptr inbounds %struct.key_event, %struct.key_event* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %170 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %169, i32 0, i32 2
  %171 = load %struct.menu_item*, %struct.menu_item** %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %171, i64 %172
  %174 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %168, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %165
  %178 = load i64, i64* %9, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %181 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %309

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182, %164
  %184 = load i64, i64* %9, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %9, align 8
  br label %144

186:                                              ; preds = %144
  %187 = load %struct.key_event*, %struct.key_event** %5, align 8
  %188 = getelementptr inbounds %struct.key_event, %struct.key_event* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  switch i64 %189, label %308 [
    i64 128, label %190
    i64 107, label %190
    i64 129, label %248
    i64 106, label %248
    i64 13, label %306
    i64 27, label %307
    i64 3, label %307
    i64 7, label %307
    i64 113, label %307
  ]

190:                                              ; preds = %186, %186
  %191 = load i32, i32* %11, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %193, %190
  br label %195

195:                                              ; preds = %240, %194
  %196 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %197 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %202 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200, %195
  %206 = load i32, i32* %10, align 4
  %207 = sub nsw i32 %206, 1
  %208 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %209 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  br label %215

210:                                              ; preds = %200
  %211 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %212 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %210, %205
  %216 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %217 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %216, i32 0, i32 2
  %218 = load %struct.menu_item*, %struct.menu_item** %217, align 8
  %219 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %220 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %218, i64 %222
  %224 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  store i8* %225, i8** %15, align 8
  br label %226

226:                                              ; preds = %215
  %227 = load i8*, i8** %15, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %234, label %229

229:                                              ; preds = %226
  %230 = load i8*, i8** %15, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 45
  br i1 %233, label %234, label %240

234:                                              ; preds = %229, %226
  %235 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %236 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %237, %238
  br label %240

240:                                              ; preds = %234, %229
  %241 = phi i1 [ false, %229 ], [ %239, %234 ]
  br i1 %241, label %195, label %242

242:                                              ; preds = %240
  %243 = load i32, i32* @CLIENT_REDRAWOVERLAY, align 4
  %244 = load %struct.client*, %struct.client** %4, align 8
  %245 = getelementptr inbounds %struct.client, %struct.client* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  store i32 0, i32* %3, align 4
  br label %412

248:                                              ; preds = %186, %186
  %249 = load i32, i32* %11, align 4
  %250 = icmp eq i32 %249, -1
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 0, i32* %11, align 4
  br label %252

252:                                              ; preds = %251, %248
  br label %253

253:                                              ; preds = %298, %252
  %254 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %255 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %265, label %258

258:                                              ; preds = %253
  %259 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %260 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sub nsw i32 %262, 1
  %264 = icmp eq i32 %261, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %258, %253
  %266 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %267 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  br label %273

268:                                              ; preds = %258
  %269 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %270 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  br label %273

273:                                              ; preds = %268, %265
  %274 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %275 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %274, i32 0, i32 2
  %276 = load %struct.menu_item*, %struct.menu_item** %275, align 8
  %277 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %278 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %276, i64 %280
  %282 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %281, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  store i8* %283, i8** %15, align 8
  br label %284

284:                                              ; preds = %273
  %285 = load i8*, i8** %15, align 8
  %286 = icmp eq i8* %285, null
  br i1 %286, label %292, label %287

287:                                              ; preds = %284
  %288 = load i8*, i8** %15, align 8
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp eq i32 %290, 45
  br i1 %291, label %292, label %298

292:                                              ; preds = %287, %284
  %293 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %294 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %295, %296
  br label %298

298:                                              ; preds = %292, %287
  %299 = phi i1 [ false, %287 ], [ %297, %292 ]
  br i1 %299, label %253, label %300

300:                                              ; preds = %298
  %301 = load i32, i32* @CLIENT_REDRAWOVERLAY, align 4
  %302 = load %struct.client*, %struct.client** %4, align 8
  %303 = getelementptr inbounds %struct.client, %struct.client* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %301
  store i32 %305, i32* %303, align 8
  store i32 0, i32* %3, align 4
  br label %412

306:                                              ; preds = %186
  br label %309

307:                                              ; preds = %186, %186, %186, %186
  store i32 1, i32* %3, align 4
  br label %412

308:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %412

309:                                              ; preds = %306, %177, %119
  %310 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %311 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %315

314:                                              ; preds = %309
  store i32 1, i32* %3, align 4
  br label %412

315:                                              ; preds = %309
  %316 = load %struct.menu.0*, %struct.menu.0** %7, align 8
  %317 = getelementptr inbounds %struct.menu.0, %struct.menu.0* %316, i32 0, i32 2
  %318 = load %struct.menu_item*, %struct.menu_item** %317, align 8
  %319 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %320 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %318, i64 %322
  store %struct.menu_item* %323, %struct.menu_item** %12, align 8
  %324 = load %struct.menu_item*, %struct.menu_item** %12, align 8
  %325 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %324, i32 0, i32 0
  %326 = load i8*, i8** %325, align 8
  %327 = icmp eq i8* %326, null
  br i1 %327, label %335, label %328

328:                                              ; preds = %315
  %329 = load %struct.menu_item*, %struct.menu_item** %12, align 8
  %330 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 45
  br i1 %334, label %335, label %336

335:                                              ; preds = %328, %315
  store i32 1, i32* %3, align 4
  br label %412

336:                                              ; preds = %328
  %337 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %338 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %337, i32 0, i32 6
  %339 = load i32 (%struct.menu*, i64, i64, i32)*, i32 (%struct.menu*, i64, i64, i32)** %338, align 8
  %340 = icmp ne i32 (%struct.menu*, i64, i64, i32)* %339, null
  br i1 %340, label %341, label %362

341:                                              ; preds = %336
  %342 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %343 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %342, i32 0, i32 6
  %344 = load i32 (%struct.menu*, i64, i64, i32)*, i32 (%struct.menu*, i64, i64, i32)** %343, align 8
  %345 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %346 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %345, i32 0, i32 8
  %347 = load %struct.menu.0*, %struct.menu.0** %346, align 8
  %348 = bitcast %struct.menu.0* %347 to %struct.menu*
  %349 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %350 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = load %struct.menu_item*, %struct.menu_item** %12, align 8
  %354 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %357 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %356, i32 0, i32 7
  %358 = load i32, i32* %357, align 8
  %359 = call i32 %344(%struct.menu* %348, i64 %352, i64 %355, i32 %358)
  %360 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %361 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %360, i32 0, i32 6
  store i32 (%struct.menu*, i64, i64, i32)* null, i32 (%struct.menu*, i64, i64, i32)** %361, align 8
  store i32 1, i32* %3, align 4
  br label %412

362:                                              ; preds = %336
  %363 = load %struct.menu_item*, %struct.menu_item** %12, align 8
  %364 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = call %struct.cmd_parse_result* @cmd_parse_from_string(i32 %365, i32* null)
  store %struct.cmd_parse_result* %366, %struct.cmd_parse_result** %14, align 8
  %367 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %368 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  switch i32 %369, label %411 [
    i32 132, label %370
    i32 131, label %371
    i32 130, label %383
  ]

370:                                              ; preds = %362
  store %struct.cmdq_item* null, %struct.cmdq_item** %13, align 8
  br label %411

371:                                              ; preds = %362
  %372 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %373 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = call %struct.cmdq_item* @cmdq_get_error(i32 %374)
  store %struct.cmdq_item* %375, %struct.cmdq_item** %13, align 8
  %376 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %377 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @free(i32 %378)
  %380 = load %struct.client*, %struct.client** %4, align 8
  %381 = load %struct.cmdq_item*, %struct.cmdq_item** %13, align 8
  %382 = call i32 @cmdq_append(%struct.client* %380, %struct.cmdq_item* %381)
  br label %411

383:                                              ; preds = %362
  %384 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %385 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %384, i32 0, i32 5
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** %385, align 8
  %387 = icmp ne %struct.TYPE_4__* %386, null
  br i1 %387, label %388, label %395

388:                                              ; preds = %383
  %389 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %390 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %389, i32 0, i32 5
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_3__*, %struct.TYPE_3__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 0
  store %struct.mouse_event* %394, %struct.mouse_event** %8, align 8
  br label %396

395:                                              ; preds = %383
  store %struct.mouse_event* null, %struct.mouse_event** %8, align 8
  br label %396

396:                                              ; preds = %395, %388
  %397 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %398 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.menu_data*, %struct.menu_data** %6, align 8
  %401 = getelementptr inbounds %struct.menu_data, %struct.menu_data* %400, i32 0, i32 4
  %402 = load %struct.mouse_event*, %struct.mouse_event** %8, align 8
  %403 = call %struct.cmdq_item* @cmdq_get_command(i32 %399, i32* %401, %struct.mouse_event* %402, i32 0)
  store %struct.cmdq_item* %403, %struct.cmdq_item** %13, align 8
  %404 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %14, align 8
  %405 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @cmd_list_free(i32 %406)
  %408 = load %struct.client*, %struct.client** %4, align 8
  %409 = load %struct.cmdq_item*, %struct.cmdq_item** %13, align 8
  %410 = call i32 @cmdq_append(%struct.client* %408, %struct.cmdq_item* %409)
  br label %411

411:                                              ; preds = %362, %396, %371, %370
  store i32 1, i32* %3, align 4
  br label %412

412:                                              ; preds = %411, %341, %335, %314, %308, %307, %300, %242, %142, %112, %98, %49, %48
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i64 @KEYC_IS_MOUSE(i64) #1

declare dso_local i64 @MOUSE_BUTTONS(i32) #1

declare dso_local i64 @MOUSE_RELEASE(i32) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_string(i32, i32*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_error(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @cmdq_append(%struct.client*, %struct.cmdq_item*) #1

declare dso_local %struct.cmdq_item* @cmdq_get_command(i32, i32*, %struct.mouse_event*, i32) #1

declare dso_local i32 @cmd_list_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

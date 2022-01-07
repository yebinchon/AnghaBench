; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_app.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, %struct.TYPE_4__*, i32, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mark = type { i32 }

@ui = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KEY_F4 = common dso_local global i32 0, align 4
@GLUT_ACTIVE_ALT = common dso_local global i64 0, align 8
@showinfo = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i32* null, align 8
@help_dialog = common dso_local global i32 0, align 4
@showlinks = common dso_local global i32 0, align 4
@showform = common dso_local global i32 0, align 4
@number = common dso_local global i32 0, align 4
@layout_em = common dso_local global i32 0, align 4
@currenttint = common dso_local global i32 0, align 4
@currentinvert = common dso_local global i32 0, align 4
@currentseparations = common dso_local global i32 0, align 4
@currenticc = common dso_local global i32 0, align 4
@DEFRES = common dso_local global i32 0, align 4
@canvas_w = common dso_local global i32 0, align 4
@canvas_h = common dso_local global i32 0, align 4
@currentzoom = common dso_local global i32 0, align 4
@currentrotate = common dso_local global i32 0, align 4
@scroll_y = common dso_local global i32 0, align 4
@scroll_x = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@currentpage = common dso_local global i8* null, align 8
@currentaa = common dso_local global i32 0, align 4
@marks = common dso_local global %struct.mark* null, align 8
@history_count = common dso_local global i32 0, align 4
@future_count = common dso_local global i32 0, align 4
@search_dir = common dso_local global i32 0, align 4
@showsearch = common dso_local global i32 0, align 4
@search_input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@search_needle = common dso_local global i32 0, align 4
@search_active = common dso_local global i32 0, align 4
@search_hit_page = common dso_local global i32 0, align 4
@search_page = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_app() #0 {
  %1 = alloca %struct.mark, align 4
  %2 = alloca %struct.mark, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %4 = load i32, i32* @KEY_F4, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 1), align 8
  %8 = load i64, i64* @GLUT_ACTIVE_ALT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @glutLeaveMainLoop()
  br label %12

12:                                               ; preds = %10, %6, %0
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 9), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 8), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 7), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %12
  store i32 0, i32* @showinfo, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 4), align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %390, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %390

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 6), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %390

34:                                               ; preds = %31
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  switch i32 %35, label %351 [
    i32 134, label %36
    i32 133, label %38
    i32 97, label %40
    i32 111, label %42
    i32 76, label %44
    i32 70, label %49
    i32 105, label %54
    i32 114, label %59
    i32 113, label %61
    i32 83, label %63
    i32 62, label %65
    i32 60, label %76
    i32 67, label %87
    i32 73, label %92
    i32 101, label %97
    i32 69, label %102
    i32 102, label %107
    i32 119, label %109
    i32 87, label %111
    i32 72, label %113
    i32 90, label %115
    i32 122, label %117
    i32 43, label %131
    i32 45, label %137
    i32 91, label %143
    i32 93, label %146
    i32 107, label %149
    i32 128, label %149
    i32 106, label %152
    i32 135, label %152
    i32 104, label %155
    i32 132, label %155
    i32 108, label %158
    i32 129, label %158
    i32 98, label %161
    i32 32, label %171
    i32 103, label %181
    i32 71, label %185
    i32 44, label %190
    i32 130, label %190
    i32 46, label %203
    i32 131, label %203
    i32 65, label %216
    i32 109, label %227
    i32 116, label %252
    i32 84, label %285
    i32 47, label %295
    i32 63, label %299
    i32 78, label %303
    i32 110, label %327
  ]

36:                                               ; preds = %34
  %37 = call i32 (...) @clear_search()
  store i32* null, i32** @selected_annot, align 8
  br label %351

38:                                               ; preds = %34
  %39 = load i32, i32* @help_dialog, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 5), align 8
  br label %351

40:                                               ; preds = %34
  %41 = call i32 (...) @toggle_annotate()
  br label %351

42:                                               ; preds = %34
  %43 = call i32 (...) @toggle_outline()
  br label %351

44:                                               ; preds = %34
  %45 = load i32, i32* @showlinks, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* @showlinks, align 4
  br label %351

49:                                               ; preds = %34
  %50 = load i32, i32* @showform, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* @showform, align 4
  br label %351

54:                                               ; preds = %34
  %55 = load i32, i32* @showinfo, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* @showinfo, align 4
  br label %351

59:                                               ; preds = %34
  %60 = call i32 (...) @reload()
  br label %351

61:                                               ; preds = %34
  %62 = call i32 (...) @glutLeaveMainLoop()
  br label %351

63:                                               ; preds = %34
  %64 = call i32 (...) @do_save_pdf_file()
  br label %351

65:                                               ; preds = %34
  %66 = load i32, i32* @number, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @number, align 4
  br label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @layout_em, align 4
  %72 = add nsw i32 %71, 1
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ]
  store i32 %74, i32* @layout_em, align 4
  %75 = call i32 (...) @relayout()
  br label %351

76:                                               ; preds = %34
  %77 = load i32, i32* @number, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @number, align 4
  br label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @layout_em, align 4
  %83 = sub nsw i32 %82, 1
  br label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %83, %81 ]
  store i32 %85, i32* @layout_em, align 4
  %86 = call i32 (...) @relayout()
  br label %351

87:                                               ; preds = %34
  %88 = load i32, i32* @currenttint, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* @currenttint, align 4
  br label %351

92:                                               ; preds = %34
  %93 = load i32, i32* @currentinvert, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  store i32 %96, i32* @currentinvert, align 4
  br label %351

97:                                               ; preds = %34
  %98 = load i32, i32* @currentseparations, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  store i32 %101, i32* @currentseparations, align 4
  br label %351

102:                                              ; preds = %34
  %103 = load i32, i32* @currenticc, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* @currenticc, align 4
  br label %351

107:                                              ; preds = %34
  %108 = call i32 (...) @toggle_fullscreen()
  br label %351

109:                                              ; preds = %34
  %110 = call i32 (...) @shrinkwrap()
  br label %351

111:                                              ; preds = %34
  %112 = call i32 (...) @auto_zoom_w()
  br label %351

113:                                              ; preds = %34
  %114 = call i32 (...) @auto_zoom_h()
  br label %351

115:                                              ; preds = %34
  %116 = call i32 (...) @auto_zoom()
  br label %351

117:                                              ; preds = %34
  %118 = load i32, i32* @number, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @number, align 4
  br label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @DEFRES, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = load i32, i32* @canvas_w, align 4
  %127 = sdiv i32 %126, 2
  %128 = load i32, i32* @canvas_h, align 4
  %129 = sdiv i32 %128, 2
  %130 = call i32 @set_zoom(i32 %125, i32 %127, i32 %129)
  br label %351

131:                                              ; preds = %34
  %132 = load i32, i32* @currentzoom, align 4
  %133 = call i32 @zoom_in(i32 %132)
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 2), align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 3), align 4
  %136 = call i32 @set_zoom(i32 %133, i32 %134, i32 %135)
  br label %351

137:                                              ; preds = %34
  %138 = load i32, i32* @currentzoom, align 4
  %139 = call i32 @zoom_out(i32 %138)
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 2), align 8
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 3), align 4
  %142 = call i32 @set_zoom(i32 %139, i32 %140, i32 %141)
  br label %351

143:                                              ; preds = %34
  %144 = load i32, i32* @currentrotate, align 4
  %145 = sub nsw i32 %144, 90
  store i32 %145, i32* @currentrotate, align 4
  br label %351

146:                                              ; preds = %34
  %147 = load i32, i32* @currentrotate, align 4
  %148 = add nsw i32 %147, 90
  store i32 %148, i32* @currentrotate, align 4
  br label %351

149:                                              ; preds = %34, %34
  %150 = load i32, i32* @scroll_y, align 4
  %151 = sub nsw i32 %150, 10
  store i32 %151, i32* @scroll_y, align 4
  br label %351

152:                                              ; preds = %34, %34
  %153 = load i32, i32* @scroll_y, align 4
  %154 = add nsw i32 %153, 10
  store i32 %154, i32* @scroll_y, align 4
  br label %351

155:                                              ; preds = %34, %34
  %156 = load i32, i32* @scroll_x, align 4
  %157 = sub nsw i32 %156, 10
  store i32 %157, i32* @scroll_x, align 4
  br label %351

158:                                              ; preds = %34, %34
  %159 = load i32, i32* @scroll_x, align 4
  %160 = add nsw i32 %159, 10
  store i32 %160, i32* @scroll_x, align 4
  br label %351

161:                                              ; preds = %34
  %162 = load i32, i32* @number, align 4
  %163 = call i32 @fz_maxi(i32 %162, i32 1)
  store i32 %163, i32* @number, align 4
  br label %164

164:                                              ; preds = %168, %161
  %165 = load i32, i32* @number, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* @number, align 4
  %167 = icmp ne i32 %165, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = call i32 (...) @smart_move_backward()
  br label %164

170:                                              ; preds = %164
  br label %351

171:                                              ; preds = %34
  %172 = load i32, i32* @number, align 4
  %173 = call i32 @fz_maxi(i32 %172, i32 1)
  store i32 %173, i32* @number, align 4
  br label %174

174:                                              ; preds = %178, %171
  %175 = load i32, i32* @number, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* @number, align 4
  %177 = icmp ne i32 %175, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 (...) @smart_move_forward()
  br label %174

180:                                              ; preds = %174
  br label %351

181:                                              ; preds = %34
  %182 = load i32, i32* @number, align 4
  %183 = sub nsw i32 %182, 1
  %184 = call i32 @jump_to_page(i32 %183)
  br label %351

185:                                              ; preds = %34
  %186 = load i32, i32* @ctx, align 4
  %187 = load i32, i32* @doc, align 4
  %188 = call i32 @fz_last_page(i32 %186, i32 %187)
  %189 = call i32 @jump_to_location(i32 %188)
  br label %351

190:                                              ; preds = %34, %34
  %191 = load i32, i32* @number, align 4
  %192 = call i32 @fz_maxi(i32 %191, i32 1)
  store i32 %192, i32* @number, align 4
  br label %193

193:                                              ; preds = %197, %190
  %194 = load i32, i32* @number, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* @number, align 4
  %196 = icmp ne i32 %194, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i32, i32* @ctx, align 4
  %199 = load i32, i32* @doc, align 4
  %200 = load i8*, i8** @currentpage, align 8
  %201 = call i8* @fz_previous_page(i32 %198, i32 %199, i8* %200)
  store i8* %201, i8** @currentpage, align 8
  br label %193

202:                                              ; preds = %193
  br label %351

203:                                              ; preds = %34, %34
  %204 = load i32, i32* @number, align 4
  %205 = call i32 @fz_maxi(i32 %204, i32 1)
  store i32 %205, i32* @number, align 4
  br label %206

206:                                              ; preds = %210, %203
  %207 = load i32, i32* @number, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* @number, align 4
  %209 = icmp ne i32 %207, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32, i32* @ctx, align 4
  %212 = load i32, i32* @doc, align 4
  %213 = load i8*, i8** @currentpage, align 8
  %214 = call i8* @fz_next_page(i32 %211, i32 %212, i8* %213)
  store i8* %214, i8** @currentpage, align 8
  br label %206

215:                                              ; preds = %206
  br label %351

216:                                              ; preds = %34
  %217 = load i32, i32* @number, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load i32, i32* @currentaa, align 4
  %221 = icmp eq i32 %220, 8
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 0, i32 8
  store i32 %223, i32* @currentaa, align 4
  br label %226

224:                                              ; preds = %216
  %225 = load i32, i32* @number, align 4
  store i32 %225, i32* @currentaa, align 4
  br label %226

226:                                              ; preds = %224, %219
  br label %351

227:                                              ; preds = %34
  %228 = load i32, i32* @number, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = call i32 (...) @push_history()
  br label %251

232:                                              ; preds = %227
  %233 = load i32, i32* @number, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load i32, i32* @number, align 4
  %237 = load %struct.mark*, %struct.mark** @marks, align 8
  %238 = call i64 @nelem(%struct.mark* %237)
  %239 = trunc i64 %238 to i32
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %235
  %242 = load %struct.mark*, %struct.mark** @marks, align 8
  %243 = load i32, i32* @number, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.mark, %struct.mark* %242, i64 %244
  %246 = call i32 (...) @save_mark()
  %247 = getelementptr inbounds %struct.mark, %struct.mark* %1, i32 0, i32 0
  store i32 %246, i32* %247, align 4
  %248 = bitcast %struct.mark* %245 to i8*
  %249 = bitcast %struct.mark* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %248, i8* align 4 %249, i64 4, i1 false)
  br label %250

250:                                              ; preds = %241, %235, %232
  br label %251

251:                                              ; preds = %250, %230
  br label %351

252:                                              ; preds = %34
  %253 = load i32, i32* @number, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load i32, i32* @history_count, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = call i32 (...) @pop_history()
  br label %260

260:                                              ; preds = %258, %255
  br label %284

261:                                              ; preds = %252
  %262 = load i32, i32* @number, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %261
  %265 = load i32, i32* @number, align 4
  %266 = load %struct.mark*, %struct.mark** @marks, align 8
  %267 = call i64 @nelem(%struct.mark* %266)
  %268 = trunc i64 %267 to i32
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = load %struct.mark*, %struct.mark** @marks, align 8
  %272 = load i32, i32* @number, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.mark, %struct.mark* %271, i64 %273
  %275 = bitcast %struct.mark* %2 to i8*
  %276 = bitcast %struct.mark* %274 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %275, i8* align 4 %276, i64 4, i1 false)
  %277 = getelementptr inbounds %struct.mark, %struct.mark* %2, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @restore_mark(i32 %278)
  %280 = getelementptr inbounds %struct.mark, %struct.mark* %2, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @jump_to_location(i32 %281)
  br label %283

283:                                              ; preds = %270, %264, %261
  br label %284

284:                                              ; preds = %283, %260
  br label %351

285:                                              ; preds = %34
  %286 = load i32, i32* @number, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = load i32, i32* @future_count, align 4
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = call i32 (...) @pop_future()
  br label %293

293:                                              ; preds = %291, %288
  br label %294

294:                                              ; preds = %293, %285
  br label %351

295:                                              ; preds = %34
  %296 = call i32 (...) @clear_search()
  store i32 1, i32* @search_dir, align 4
  store i32 1, i32* @showsearch, align 4
  store %struct.TYPE_4__* @search_input, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 4), align 8
  %297 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 2), align 4
  store i32 %297, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 3), align 4
  %298 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 0), align 4
  store i32 %298, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 1), align 4
  br label %351

299:                                              ; preds = %34
  %300 = call i32 (...) @clear_search()
  store i32 -1, i32* @search_dir, align 4
  store i32 1, i32* @showsearch, align 4
  store %struct.TYPE_4__* @search_input, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 4), align 8
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 2), align 4
  store i32 %301, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 3), align 4
  %302 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 0), align 4
  store i32 %302, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @search_input, i32 0, i32 1), align 4
  br label %351

303:                                              ; preds = %34
  store i32 -1, i32* @search_dir, align 4
  %304 = load i32, i32* @search_needle, align 4
  %305 = icmp ne i32 %304, 0
  %306 = xor i1 %305, true
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  store i32 %308, i32* @search_active, align 4
  %309 = load i32, i32* @search_hit_page, align 4
  %310 = load i8*, i8** @currentpage, align 8
  %311 = call i64 @eqloc(i32 %309, i8* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %323

313:                                              ; preds = %303
  %314 = load i32, i32* @ctx, align 4
  %315 = load i32, i32* @doc, align 4
  %316 = load i8*, i8** @currentpage, align 8
  %317 = call i8* @fz_previous_page(i32 %314, i32 %315, i8* %316)
  store i8* %317, i8** @search_page, align 8
  %318 = load i8*, i8** @search_page, align 8
  %319 = call i32 @is_first_page(i8* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %313
  store i32 0, i32* @search_active, align 4
  br label %322

322:                                              ; preds = %321, %313
  br label %325

323:                                              ; preds = %303
  %324 = load i8*, i8** @currentpage, align 8
  store i8* %324, i8** @search_page, align 8
  br label %325

325:                                              ; preds = %323, %322
  %326 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %326, i32* @search_hit_page, align 4
  br label %351

327:                                              ; preds = %34
  store i32 1, i32* @search_dir, align 4
  %328 = load i32, i32* @search_needle, align 4
  %329 = icmp ne i32 %328, 0
  %330 = xor i1 %329, true
  %331 = xor i1 %330, true
  %332 = zext i1 %331 to i32
  store i32 %332, i32* @search_active, align 4
  %333 = load i32, i32* @search_hit_page, align 4
  %334 = load i8*, i8** @currentpage, align 8
  %335 = call i64 @eqloc(i32 %333, i8* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %327
  %338 = load i32, i32* @ctx, align 4
  %339 = load i32, i32* @doc, align 4
  %340 = load i8*, i8** @currentpage, align 8
  %341 = call i8* @fz_next_page(i32 %338, i32 %339, i8* %340)
  store i8* %341, i8** @search_page, align 8
  %342 = load i8*, i8** @search_page, align 8
  %343 = call i32 @is_last_page(i8* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %337
  store i32 0, i32* @search_active, align 4
  br label %346

346:                                              ; preds = %345, %337
  br label %349

347:                                              ; preds = %327
  %348 = load i8*, i8** @currentpage, align 8
  store i8* %348, i8** @search_page, align 8
  br label %349

349:                                              ; preds = %347, %346
  %350 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %350, i32* @search_hit_page, align 4
  br label %351

351:                                              ; preds = %34, %349, %325, %299, %295, %294, %284, %251, %226, %215, %202, %185, %181, %180, %170, %158, %155, %152, %149, %146, %143, %137, %131, %124, %115, %113, %111, %109, %107, %102, %97, %92, %87, %84, %73, %63, %61, %59, %54, %49, %44, %42, %40, %38, %36
  %352 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %353 = icmp sge i32 %352, 48
  br i1 %353, label %354, label %363

354:                                              ; preds = %351
  %355 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %356 = icmp sle i32 %355, 57
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = load i32, i32* @number, align 4
  %359 = mul nsw i32 %358, 10
  %360 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  %361 = add nsw i32 %359, %360
  %362 = sub nsw i32 %361, 48
  store i32 %362, i32* @number, align 4
  br label %364

363:                                              ; preds = %354, %351
  store i32 0, i32* @number, align 4
  br label %364

364:                                              ; preds = %363, %357
  %365 = load i32, i32* @ctx, align 4
  %366 = load i32, i32* @doc, align 4
  %367 = load i8*, i8** @currentpage, align 8
  %368 = call i8* @fz_clamp_location(i32 %365, i32 %366, i8* %367)
  store i8* %368, i8** @currentpage, align 8
  br label %369

369:                                              ; preds = %372, %364
  %370 = load i32, i32* @currentrotate, align 4
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i32, i32* @currentrotate, align 4
  %374 = add nsw i32 %373, 360
  store i32 %374, i32* @currentrotate, align 4
  br label %369

375:                                              ; preds = %369
  br label %376

376:                                              ; preds = %379, %375
  %377 = load i32, i32* @currentrotate, align 4
  %378 = icmp sge i32 %377, 360
  br i1 %378, label %379, label %382

379:                                              ; preds = %376
  %380 = load i32, i32* @currentrotate, align 4
  %381 = sub nsw i32 %380, 360
  store i32 %381, i32* @currentrotate, align 4
  br label %376

382:                                              ; preds = %376
  %383 = load i32, i32* @search_hit_page, align 4
  %384 = load i8*, i8** @currentpage, align 8
  %385 = call i64 @eqloc(i32 %383, i8* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %382
  %388 = call i32 @fz_make_location(i32 -1, i32 -1)
  store i32 %388, i32* @search_hit_page, align 4
  br label %389

389:                                              ; preds = %387, %382
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 8
  br label %390

390:                                              ; preds = %389, %31, %28, %25
  ret void
}

declare dso_local i32 @glutLeaveMainLoop(...) #1

declare dso_local i32 @clear_search(...) #1

declare dso_local i32 @toggle_annotate(...) #1

declare dso_local i32 @toggle_outline(...) #1

declare dso_local i32 @reload(...) #1

declare dso_local i32 @do_save_pdf_file(...) #1

declare dso_local i32 @relayout(...) #1

declare dso_local i32 @toggle_fullscreen(...) #1

declare dso_local i32 @shrinkwrap(...) #1

declare dso_local i32 @auto_zoom_w(...) #1

declare dso_local i32 @auto_zoom_h(...) #1

declare dso_local i32 @auto_zoom(...) #1

declare dso_local i32 @set_zoom(i32, i32, i32) #1

declare dso_local i32 @zoom_in(i32) #1

declare dso_local i32 @zoom_out(i32) #1

declare dso_local i32 @fz_maxi(i32, i32) #1

declare dso_local i32 @smart_move_backward(...) #1

declare dso_local i32 @smart_move_forward(...) #1

declare dso_local i32 @jump_to_page(i32) #1

declare dso_local i32 @jump_to_location(i32) #1

declare dso_local i32 @fz_last_page(i32, i32) #1

declare dso_local i8* @fz_previous_page(i32, i32, i8*) #1

declare dso_local i8* @fz_next_page(i32, i32, i8*) #1

declare dso_local i32 @push_history(...) #1

declare dso_local i64 @nelem(%struct.mark*) #1

declare dso_local i32 @save_mark(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pop_history(...) #1

declare dso_local i32 @restore_mark(i32) #1

declare dso_local i32 @pop_future(...) #1

declare dso_local i64 @eqloc(i32, i8*) #1

declare dso_local i32 @is_first_page(i8*) #1

declare dso_local i32 @fz_make_location(i32, i32) #1

declare dso_local i32 @is_last_page(i8*) #1

declare dso_local i8* @fz_clamp_location(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

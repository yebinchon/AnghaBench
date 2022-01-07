; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_HandleScrollEvent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_ncscrollbar.c_SCROLL_HandleScrollEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64, i64 }
%struct.TYPE_36__ = type { i32, i32, i32, i64, i32, i64, i64 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32*, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_38__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32, i32 }

@SCROLL_HandleScrollEvent.prevPt = internal global %struct.TYPE_37__ zeroinitializer, align 8
@SCROLL_HandleScrollEvent.trackThumbPos = internal global i32 0, align 4
@SCROLL_HandleScrollEvent.lastClickPos = internal global i64 0, align 8
@SCROLL_HandleScrollEvent.lastMousePos = internal global i64 0, align 8
@SIF_ALL = common dso_local global i32 0, align 4
@STATE_SYSTEM_UNAVAILABLE = common dso_local global i32 0, align 4
@SB_CTL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WM_VSCROLL = common dso_local global i32 0, align 4
@WM_HSCROLL = common dso_local global i32 0, align 4
@SB_LINEUP = common dso_local global i32 0, align 4
@SCROLL_TIMER = common dso_local global i32 0, align 4
@SCROLL_FIRST_DELAY = common dso_local global i32 0, align 4
@SCROLL_REPEAT_DELAY = common dso_local global i32 0, align 4
@SB_PAGEUP = common dso_local global i32 0, align 4
@SB_THUMBTRACK = common dso_local global i32 0, align 4
@SB_PAGEDOWN = common dso_local global i32 0, align 4
@SB_LINEDOWN = common dso_local global i32 0, align 4
@SB_THUMBPOSITION = common dso_local global i32 0, align 4
@SB_ENDSCROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_36__*, i64, i64, i32, i64, i64)* @SCROLL_HandleScrollEvent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SCROLL_HandleScrollEvent(%struct.TYPE_36__* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_37__, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_34__, align 4
  %17 = alloca %struct.TYPE_35__, align 8
  %18 = alloca %struct.TYPE_38__, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_37__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = bitcast %struct.TYPE_37__* %7 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  store i64 %4, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  store i64 %5, i64* %25, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  %26 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  store i32 8, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 0
  store i32 40, i32* %27, align 8
  %28 = load i32, i32* @SIF_ALL, align 4
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @GetScrollInfo(i64 %30, i64 %31, %struct.TYPE_34__* %16)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @SCROLL_getObjectId(i64 %34)
  %36 = call i32 @GetScrollBarInfo(i64 %33, i32 %35, %struct.TYPE_35__* %17)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @SCROLL_IsVertical(i64 %37, i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 133
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STATE_SYSTEM_UNAVAILABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %6
  %48 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 137
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @STATE_SYSTEM_UNAVAILABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %640

56:                                               ; preds = %47, %6
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 135
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 131
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %640

65:                                               ; preds = %61, %56
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @ThemeInitDrawContext(%struct.TYPE_38__* %18, i64 %66, i32 0)
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %18, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 0, %72
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %18, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @OffsetRect(%struct.TYPE_31__* %68, i32 %73, i32 %78)
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @SB_CTL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %65
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @GetParent(i64 %84)
  br label %88

86:                                               ; preds = %65
  %87 = load i64, i64* %9, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i64 [ %85, %83 ], [ %87, %86 ]
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @SB_CTL, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i64, i64* %9, align 8
  br label %96

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i64 [ %94, %93 ], [ 0, %95 ]
  store i64 %97, i64* %14, align 8
  %98 = load i32, i32* %11, align 4
  switch i32 %98, label %171 [
    i32 131, label %99
    i32 129, label %140
    i32 130, label %151
    i32 128, label %160
  ]

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @HideCaret(i64 %100)
  %102 = load i64, i64* %15, align 8
  %103 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %103, i32 0, i32 6
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i32, i32* @FALSE, align 4
  %108 = bitcast %struct.TYPE_37__* %7 to { i64, i64 }*
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %108, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @SCROLL_HitTest(i64 %105, %struct.TYPE_35__* %17, i64 %106, i64 %110, i64 %112, i32 %107)
  store i32 %113, i32* %12, align 4
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  br label %132

125:                                              ; preds = %99
  %126 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = sub nsw i64 %127, %130
  br label %132

132:                                              ; preds = %125, %118
  %133 = phi i64 [ %124, %118 ], [ %131, %125 ]
  store i64 %133, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  %134 = load i64, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  store i64 %134, i64* @SCROLL_HandleScrollEvent.lastMousePos, align 8
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* @SCROLL_HandleScrollEvent.trackThumbPos, align 4
  %137 = bitcast %struct.TYPE_37__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_37__* @SCROLL_HandleScrollEvent.prevPt to i8*), i8* align 8 %137, i64 16, i1 false)
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @SetCapture(i64 %138)
  br label %172

140:                                              ; preds = %96
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i32, i32* @TRUE, align 4
  %144 = bitcast %struct.TYPE_37__* %7 to { i64, i64 }*
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @SCROLL_HitTest(i64 %141, %struct.TYPE_35__* %17, i64 %142, i64 %146, i64 %148, i32 %143)
  store i32 %149, i32* %12, align 4
  %150 = bitcast %struct.TYPE_37__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_37__* @SCROLL_HandleScrollEvent.prevPt to i8*), i8* align 8 %150, i64 16, i1 false)
  br label %172

151:                                              ; preds = %96
  store i32 135, i32* %12, align 4
  %152 = call i32 (...) @ReleaseCapture()
  %153 = load i64, i64* %9, align 8
  %154 = call i64 (...) @GetFocus()
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @ShowCaret(i64 %157)
  br label %159

159:                                              ; preds = %156, %151
  br label %172

160:                                              ; preds = %96
  %161 = bitcast %struct.TYPE_37__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 bitcast (%struct.TYPE_37__* @SCROLL_HandleScrollEvent.prevPt to i8*), i64 16, i1 false)
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load i32, i32* @FALSE, align 4
  %165 = bitcast %struct.TYPE_37__* %7 to { i64, i64 }*
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @SCROLL_HitTest(i64 %162, %struct.TYPE_35__* %17, i64 %163, i64 %167, i64 %169, i32 %164)
  store i32 %170, i32* %12, align 4
  br label %172

171:                                              ; preds = %96
  br label %640

172:                                              ; preds = %160, %159, %140, %132
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %550 [
    i32 135, label %176
    i32 133, label %177
    i32 132, label %227
    i32 134, label %277
    i32 136, label %446
    i32 137, label %500
  ]

176:                                              ; preds = %172
  br label %550

177:                                              ; preds = %172
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %220

183:                                              ; preds = %177
  %184 = load i64, i64* %15, align 8
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @SCROLL_DrawArrows(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %184, i32 %187, i32 0)
  %189 = load i32, i32* %11, align 4
  %190 = icmp eq i32 %189, 131
  br i1 %190, label %194, label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %11, align 4
  %193 = icmp eq i32 %192, 128
  br i1 %193, label %194, label %208

194:                                              ; preds = %191, %183
  %195 = load i64, i64* %13, align 8
  %196 = load i64, i64* %15, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @WM_VSCROLL, align 4
  br label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @WM_HSCROLL, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  %204 = load i32, i32* @SB_LINEUP, align 4
  %205 = load i64, i64* %14, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @SendMessageW(i64 %195, i32 %203, i32 %204, i32 %206)
  br label %208

208:                                              ; preds = %202, %191
  %209 = load i64, i64* %9, align 8
  %210 = load i32, i32* @SCROLL_TIMER, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp eq i32 %211, 131
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @SCROLL_FIRST_DELAY, align 4
  br label %217

215:                                              ; preds = %208
  %216 = load i32, i32* @SCROLL_REPEAT_DELAY, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = call i32 @SetSystemTimer(i64 %209, i32 %210, i32 %218, i32* null)
  br label %226

220:                                              ; preds = %177
  %221 = load i64, i64* %15, align 8
  %222 = call i32 @SCROLL_DrawArrows(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %221, i32 0, i32 0)
  %223 = load i64, i64* %9, align 8
  %224 = load i32, i32* @SCROLL_TIMER, align 4
  %225 = call i32 @KillSystemTimer(i64 %223, i32 %224)
  br label %226

226:                                              ; preds = %220, %217
  br label %550

227:                                              ; preds = %172
  %228 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @SCROLL_DrawInterior(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i32 %229, i64 %230, i32 %233, i32 0)
  %235 = load i32, i32* %12, align 4
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %235, %238
  br i1 %239, label %240, label %272

240:                                              ; preds = %227
  %241 = load i32, i32* %11, align 4
  %242 = icmp eq i32 %241, 131
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %244, 128
  br i1 %245, label %246, label %260

246:                                              ; preds = %243, %240
  %247 = load i64, i64* %13, align 8
  %248 = load i64, i64* %15, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i32, i32* @WM_VSCROLL, align 4
  br label %254

252:                                              ; preds = %246
  %253 = load i32, i32* @WM_HSCROLL, align 4
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  %256 = load i32, i32* @SB_PAGEUP, align 4
  %257 = load i64, i64* %14, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @SendMessageW(i64 %247, i32 %255, i32 %256, i32 %258)
  br label %260

260:                                              ; preds = %254, %243
  %261 = load i64, i64* %9, align 8
  %262 = load i32, i32* @SCROLL_TIMER, align 4
  %263 = load i32, i32* %11, align 4
  %264 = icmp eq i32 %263, 131
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* @SCROLL_FIRST_DELAY, align 4
  br label %269

267:                                              ; preds = %260
  %268 = load i32, i32* @SCROLL_REPEAT_DELAY, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  %271 = call i32 @SetSystemTimer(i64 %261, i32 %262, i32 %270, i32* null)
  br label %276

272:                                              ; preds = %227
  %273 = load i64, i64* %9, align 8
  %274 = load i32, i32* @SCROLL_TIMER, align 4
  %275 = call i32 @KillSystemTimer(i64 %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %269
  br label %550

277:                                              ; preds = %172
  %278 = load i32, i32* %11, align 4
  %279 = icmp eq i32 %278, 131
  br i1 %279, label %280, label %314

280:                                              ; preds = %277
  %281 = load i64, i64* %9, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 3
  store i64 %281, i64* %283, align 8
  %284 = load i64, i64* %10, align 8
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %285, i32 0, i32 5
  store i64 %284, i64* %286, align 8
  %287 = load i32, i32* @SCROLL_HandleScrollEvent.trackThumbPos, align 4
  %288 = sext i32 %287 to i64
  %289 = load i64, i64* @SCROLL_HandleScrollEvent.lastMousePos, align 8
  %290 = add nsw i64 %288, %289
  %291 = load i64, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  %292 = sub nsw i64 %290, %291
  %293 = trunc i64 %292 to i32
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %297 = load i64, i64* %15, align 8
  %298 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i8* @SCROLL_GetThumbVal(%struct.TYPE_34__* %16, %struct.TYPE_31__* %296, i64 %297, i32 %300)
  %302 = ptrtoint i8* %301 to i32
  %303 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %280
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %311 = load i64, i64* %15, align 8
  %312 = call i32 @SCROLL_DrawMovingThumb(%struct.TYPE_36__* %310, %struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %311)
  br label %313

313:                                              ; preds = %309, %280
  br label %445

314:                                              ; preds = %277
  %315 = load i32, i32* %11, align 4
  %316 = icmp eq i32 %315, 130
  br i1 %316, label %317, label %334

317:                                              ; preds = %314
  %318 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %324 = load i64, i64* %15, align 8
  %325 = call i32 @SCROLL_DrawMovingThumb(%struct.TYPE_36__* %323, %struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %324)
  br label %326

326:                                              ; preds = %322, %317
  %327 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load i64, i64* %15, align 8
  %330 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @SCROLL_DrawInterior(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i32 %328, i64 %329, i32 0, i32 %332)
  br label %444

334:                                              ; preds = %314
  %335 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %336 = load i64, i64* %15, align 8
  %337 = bitcast %struct.TYPE_37__* %7 to { i64, i64 }*
  %338 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %337, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @SCROLL_PtInRectEx(%struct.TYPE_31__* %335, i64 %339, i64 %341, i64 %336)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %334
  %345 = load i64, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  store i64 %345, i64* %19, align 8
  br label %379

346:                                              ; preds = %334
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %348 = bitcast %struct.TYPE_37__* %7 to { i64, i64 }*
  %349 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %348, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = call { i64, i64 } @SCROLL_ClipPos(%struct.TYPE_31__* %347, i64 %350, i64 %352)
  %354 = bitcast %struct.TYPE_37__* %20 to { i64, i64 }*
  %355 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %354, i32 0, i32 0
  %356 = extractvalue { i64, i64 } %353, 0
  store i64 %356, i64* %355, align 8
  %357 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %354, i32 0, i32 1
  %358 = extractvalue { i64, i64 } %353, 1
  store i64 %358, i64* %357, align 8
  %359 = bitcast %struct.TYPE_37__* %7 to i8*
  %360 = bitcast %struct.TYPE_37__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %359, i8* align 8 %360, i64 16, i1 false)
  %361 = load i64, i64* %15, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %346
  %364 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = sub nsw i64 %365, %368
  br label %377

370:                                              ; preds = %346
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = sub nsw i64 %372, %375
  br label %377

377:                                              ; preds = %370, %363
  %378 = phi i64 [ %369, %363 ], [ %376, %370 ]
  store i64 %378, i64* %19, align 8
  br label %379

379:                                              ; preds = %377, %344
  %380 = load i64, i64* %19, align 8
  %381 = load i64, i64* @SCROLL_HandleScrollEvent.lastMousePos, align 8
  %382 = icmp ne i64 %380, %381
  br i1 %382, label %388, label %383

383:                                              ; preds = %379
  %384 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %443, label %388

388:                                              ; preds = %383, %379
  %389 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %390 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %388
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %395 = load i64, i64* %15, align 8
  %396 = call i32 @SCROLL_DrawMovingThumb(%struct.TYPE_36__* %394, %struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %395)
  br label %397

397:                                              ; preds = %393, %388
  %398 = load i64, i64* %19, align 8
  store i64 %398, i64* @SCROLL_HandleScrollEvent.lastMousePos, align 8
  %399 = load i32, i32* @SCROLL_HandleScrollEvent.trackThumbPos, align 4
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %19, align 8
  %402 = add nsw i64 %400, %401
  %403 = load i64, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  %404 = sub nsw i64 %402, %403
  %405 = trunc i64 %404 to i32
  %406 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %406, i32 0, i32 1
  store i32 %405, i32* %407, align 4
  %408 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %409 = load i64, i64* %15, align 8
  %410 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i8* @SCROLL_GetThumbVal(%struct.TYPE_34__* %16, %struct.TYPE_31__* %408, i64 %409, i32 %412)
  %414 = ptrtoint i8* %413 to i32
  %415 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  %417 = load i64, i64* %13, align 8
  %418 = load i64, i64* %15, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %397
  %421 = load i32, i32* @WM_VSCROLL, align 4
  br label %424

422:                                              ; preds = %397
  %423 = load i32, i32* @WM_HSCROLL, align 4
  br label %424

424:                                              ; preds = %422, %420
  %425 = phi i32 [ %421, %420 ], [ %423, %422 ]
  %426 = load i32, i32* @SB_THUMBTRACK, align 4
  %427 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @MAKEWPARAM(i32 %426, i32 %429)
  %431 = load i64, i64* %14, align 8
  %432 = trunc i64 %431 to i32
  %433 = call i32 @SendMessageW(i64 %417, i32 %425, i32 %430, i32 %432)
  %434 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 8
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %442, label %438

438:                                              ; preds = %424
  %439 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %440 = load i64, i64* %15, align 8
  %441 = call i32 @SCROLL_DrawMovingThumb(%struct.TYPE_36__* %439, %struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %440)
  br label %442

442:                                              ; preds = %438, %424
  br label %443

443:                                              ; preds = %442, %383
  br label %444

444:                                              ; preds = %443, %326
  br label %445

445:                                              ; preds = %444, %313
  br label %550

446:                                              ; preds = %172
  %447 = load i32, i32* %12, align 4
  %448 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = icmp eq i32 %447, %450
  br i1 %451, label %452, label %491

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = load i64, i64* %15, align 8
  %456 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = call i32 @SCROLL_DrawInterior(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i32 %454, i64 %455, i32 %458, i32 0)
  %460 = load i32, i32* %11, align 4
  %461 = icmp eq i32 %460, 131
  br i1 %461, label %465, label %462

462:                                              ; preds = %452
  %463 = load i32, i32* %11, align 4
  %464 = icmp eq i32 %463, 128
  br i1 %464, label %465, label %479

465:                                              ; preds = %462, %452
  %466 = load i64, i64* %13, align 8
  %467 = load i64, i64* %15, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %465
  %470 = load i32, i32* @WM_VSCROLL, align 4
  br label %473

471:                                              ; preds = %465
  %472 = load i32, i32* @WM_HSCROLL, align 4
  br label %473

473:                                              ; preds = %471, %469
  %474 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %475 = load i32, i32* @SB_PAGEDOWN, align 4
  %476 = load i64, i64* %14, align 8
  %477 = trunc i64 %476 to i32
  %478 = call i32 @SendMessageW(i64 %466, i32 %474, i32 %475, i32 %477)
  br label %479

479:                                              ; preds = %473, %462
  %480 = load i64, i64* %9, align 8
  %481 = load i32, i32* @SCROLL_TIMER, align 4
  %482 = load i32, i32* %11, align 4
  %483 = icmp eq i32 %482, 131
  br i1 %483, label %484, label %486

484:                                              ; preds = %479
  %485 = load i32, i32* @SCROLL_FIRST_DELAY, align 4
  br label %488

486:                                              ; preds = %479
  %487 = load i32, i32* @SCROLL_REPEAT_DELAY, align 4
  br label %488

488:                                              ; preds = %486, %484
  %489 = phi i32 [ %485, %484 ], [ %487, %486 ]
  %490 = call i32 @SetSystemTimer(i64 %480, i32 %481, i32 %489, i32* null)
  br label %499

491:                                              ; preds = %446
  %492 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = load i64, i64* %15, align 8
  %495 = call i32 @SCROLL_DrawInterior(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i32 %493, i64 %494, i32 0, i32 0)
  %496 = load i64, i64* %9, align 8
  %497 = load i32, i32* @SCROLL_TIMER, align 4
  %498 = call i32 @KillSystemTimer(i64 %496, i32 %497)
  br label %499

499:                                              ; preds = %491, %488
  br label %550

500:                                              ; preds = %172
  %501 = load i32, i32* %12, align 4
  %502 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %503 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp eq i32 %501, %504
  br i1 %505, label %506, label %543

506:                                              ; preds = %500
  %507 = load i64, i64* %15, align 8
  %508 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = call i32 @SCROLL_DrawArrows(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %507, i32 %510, i32 0)
  %512 = load i32, i32* %11, align 4
  %513 = icmp eq i32 %512, 131
  br i1 %513, label %517, label %514

514:                                              ; preds = %506
  %515 = load i32, i32* %11, align 4
  %516 = icmp eq i32 %515, 128
  br i1 %516, label %517, label %531

517:                                              ; preds = %514, %506
  %518 = load i64, i64* %13, align 8
  %519 = load i64, i64* %15, align 8
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %517
  %522 = load i32, i32* @WM_VSCROLL, align 4
  br label %525

523:                                              ; preds = %517
  %524 = load i32, i32* @WM_HSCROLL, align 4
  br label %525

525:                                              ; preds = %523, %521
  %526 = phi i32 [ %522, %521 ], [ %524, %523 ]
  %527 = load i32, i32* @SB_LINEDOWN, align 4
  %528 = load i64, i64* %14, align 8
  %529 = trunc i64 %528 to i32
  %530 = call i32 @SendMessageW(i64 %518, i32 %526, i32 %527, i32 %529)
  br label %531

531:                                              ; preds = %525, %514
  %532 = load i64, i64* %9, align 8
  %533 = load i32, i32* @SCROLL_TIMER, align 4
  %534 = load i32, i32* %11, align 4
  %535 = icmp eq i32 %534, 131
  br i1 %535, label %536, label %538

536:                                              ; preds = %531
  %537 = load i32, i32* @SCROLL_FIRST_DELAY, align 4
  br label %540

538:                                              ; preds = %531
  %539 = load i32, i32* @SCROLL_REPEAT_DELAY, align 4
  br label %540

540:                                              ; preds = %538, %536
  %541 = phi i32 [ %537, %536 ], [ %539, %538 ]
  %542 = call i32 @SetSystemTimer(i64 %532, i32 %533, i32 %541, i32* null)
  br label %549

543:                                              ; preds = %500
  %544 = load i64, i64* %15, align 8
  %545 = call i32 @SCROLL_DrawArrows(%struct.TYPE_38__* %18, %struct.TYPE_35__* %17, i64 %544, i32 0, i32 0)
  %546 = load i64, i64* %9, align 8
  %547 = load i32, i32* @SCROLL_TIMER, align 4
  %548 = call i32 @KillSystemTimer(i64 %546, i32 %547)
  br label %549

549:                                              ; preds = %543, %540
  br label %550

550:                                              ; preds = %172, %549, %499, %445, %276, %226, %176
  %551 = load i32, i32* %11, align 4
  %552 = icmp eq i32 %551, 131
  br i1 %552, label %553, label %584

553:                                              ; preds = %550
  %554 = load i32, i32* %12, align 4
  %555 = icmp eq i32 %554, 134
  br i1 %555, label %556, label %583

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %558 = load i64, i64* %15, align 8
  %559 = load i32, i32* @SCROLL_HandleScrollEvent.trackThumbPos, align 4
  %560 = sext i32 %559 to i64
  %561 = load i64, i64* @SCROLL_HandleScrollEvent.lastMousePos, align 8
  %562 = add nsw i64 %560, %561
  %563 = load i64, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  %564 = sub nsw i64 %562, %563
  %565 = trunc i64 %564 to i32
  %566 = call i8* @SCROLL_GetThumbVal(%struct.TYPE_34__* %16, %struct.TYPE_31__* %557, i64 %558, i32 %565)
  %567 = ptrtoint i8* %566 to i32
  store i32 %567, i32* %21, align 4
  %568 = load i64, i64* %13, align 8
  %569 = load i64, i64* %15, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %573

571:                                              ; preds = %556
  %572 = load i32, i32* @WM_VSCROLL, align 4
  br label %575

573:                                              ; preds = %556
  %574 = load i32, i32* @WM_HSCROLL, align 4
  br label %575

575:                                              ; preds = %573, %571
  %576 = phi i32 [ %572, %571 ], [ %574, %573 ]
  %577 = load i32, i32* @SB_THUMBTRACK, align 4
  %578 = load i32, i32* %21, align 4
  %579 = call i32 @MAKEWPARAM(i32 %577, i32 %578)
  %580 = load i64, i64* %14, align 8
  %581 = trunc i64 %580 to i32
  %582 = call i32 @SendMessageW(i64 %568, i32 %576, i32 %579, i32 %581)
  br label %583

583:                                              ; preds = %575, %553
  br label %584

584:                                              ; preds = %583, %550
  %585 = load i32, i32* %11, align 4
  %586 = icmp eq i32 %585, 130
  br i1 %586, label %587, label %638

587:                                              ; preds = %584
  %588 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %589 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  store i32 %590, i32* %12, align 4
  %591 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %592 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %591, i32 0, i32 0
  store i32 135, i32* %592, align 8
  %593 = load i32, i32* %12, align 4
  %594 = icmp eq i32 %593, 134
  br i1 %594, label %595, label %622

595:                                              ; preds = %587
  %596 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 3
  %597 = load i64, i64* %15, align 8
  %598 = load i32, i32* @SCROLL_HandleScrollEvent.trackThumbPos, align 4
  %599 = sext i32 %598 to i64
  %600 = load i64, i64* @SCROLL_HandleScrollEvent.lastMousePos, align 8
  %601 = add nsw i64 %599, %600
  %602 = load i64, i64* @SCROLL_HandleScrollEvent.lastClickPos, align 8
  %603 = sub nsw i64 %601, %602
  %604 = trunc i64 %603 to i32
  %605 = call i8* @SCROLL_GetThumbVal(%struct.TYPE_34__* %16, %struct.TYPE_31__* %596, i64 %597, i32 %604)
  %606 = ptrtoint i8* %605 to i32
  store i32 %606, i32* %22, align 4
  %607 = load i64, i64* %13, align 8
  %608 = load i64, i64* %15, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %612

610:                                              ; preds = %595
  %611 = load i32, i32* @WM_VSCROLL, align 4
  br label %614

612:                                              ; preds = %595
  %613 = load i32, i32* @WM_HSCROLL, align 4
  br label %614

614:                                              ; preds = %612, %610
  %615 = phi i32 [ %611, %610 ], [ %613, %612 ]
  %616 = load i32, i32* @SB_THUMBPOSITION, align 4
  %617 = load i32, i32* %22, align 4
  %618 = call i32 @MAKEWPARAM(i32 %616, i32 %617)
  %619 = load i64, i64* %14, align 8
  %620 = trunc i64 %619 to i32
  %621 = call i32 @SendMessageW(i64 %607, i32 %615, i32 %618, i32 %620)
  br label %622

622:                                              ; preds = %614, %587
  %623 = load i64, i64* %13, align 8
  %624 = load i64, i64* %15, align 8
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %628

626:                                              ; preds = %622
  %627 = load i32, i32* @WM_VSCROLL, align 4
  br label %630

628:                                              ; preds = %622
  %629 = load i32, i32* @WM_HSCROLL, align 4
  br label %630

630:                                              ; preds = %628, %626
  %631 = phi i32 [ %627, %626 ], [ %629, %628 ]
  %632 = load i32, i32* @SB_ENDSCROLL, align 4
  %633 = load i64, i64* %14, align 8
  %634 = trunc i64 %633 to i32
  %635 = call i32 @SendMessageW(i64 %623, i32 %631, i32 %632, i32 %634)
  %636 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %637 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %636, i32 0, i32 3
  store i64 0, i64* %637, align 8
  br label %638

638:                                              ; preds = %630, %584
  %639 = call i32 @ThemeCleanupDrawContext(%struct.TYPE_38__* %18)
  br label %640

640:                                              ; preds = %638, %171, %64, %55
  ret void
}

declare dso_local i32 @GetScrollInfo(i64, i64, %struct.TYPE_34__*) #1

declare dso_local i32 @GetScrollBarInfo(i64, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @SCROLL_getObjectId(i64) #1

declare dso_local i64 @SCROLL_IsVertical(i64, i64) #1

declare dso_local i32 @ThemeInitDrawContext(%struct.TYPE_38__*, i64, i32) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i32 @HideCaret(i64) #1

declare dso_local i32 @SCROLL_HitTest(i64, %struct.TYPE_35__*, i64, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SetCapture(i64) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i64 @GetFocus(...) #1

declare dso_local i32 @ShowCaret(i64) #1

declare dso_local i32 @SCROLL_DrawArrows(%struct.TYPE_38__*, %struct.TYPE_35__*, i64, i32, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i32 @SetSystemTimer(i64, i32, i32, i32*) #1

declare dso_local i32 @KillSystemTimer(i64, i32) #1

declare dso_local i32 @SCROLL_DrawInterior(%struct.TYPE_38__*, %struct.TYPE_35__*, i32, i64, i32, i32) #1

declare dso_local i8* @SCROLL_GetThumbVal(%struct.TYPE_34__*, %struct.TYPE_31__*, i64, i32) #1

declare dso_local i32 @SCROLL_DrawMovingThumb(%struct.TYPE_36__*, %struct.TYPE_38__*, %struct.TYPE_35__*, i64) #1

declare dso_local i32 @SCROLL_PtInRectEx(%struct.TYPE_31__*, i64, i64, i64) #1

declare dso_local { i64, i64 } @SCROLL_ClipPos(%struct.TYPE_31__*, i64, i64) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @ThemeCleanupDrawContext(%struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_scrollbar.c_IntDrawScrollInterior.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_scrollbar.c_IntDrawScrollInterior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32*, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@SCROLL_TOP_RECT = common dso_local global i64 0, align 8
@STATE_SYSTEM_PRESSED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SCROLL_BOTTOM_RECT = common dso_local global i64 0, align 8
@SB_CTL = common dso_local global i64 0, align 8
@WM_CTLCOLORSCROLLBAR = common dso_local global i32 0, align 4
@COLOR_SCROLLBAR = common dso_local global i32 0, align 4
@CTLCOLOR_SCROLLBAR = common dso_local global i32 0, align 4
@PATCOPY = common dso_local global i32 0, align 4
@BLACKNESS = common dso_local global i32 0, align 4
@EDGE_RAISED = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64, %struct.TYPE_8__*)* @IntDrawScrollInterior to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IntDrawScrollInterior(i32 %0, i32 %1, i64 %2, i64 %3, %struct.TYPE_8__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %17, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @SCROLL_TOP_RECT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @STATE_SYSTEM_PRESSED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %16, align 8
  br label %41

41:                                               ; preds = %39, %5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @SCROLL_BOTTOM_RECT, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STATE_SYSTEM_PRESSED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %17, align 8
  br label %53

53:                                               ; preds = %51, %41
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @SB_CTL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @WM_CTLCOLORSCROLLBAR, align 4
  %61 = call i64 @GetControlBrush(i32 %58, i32 %59, i32 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @COLOR_SCROLLBAR, align 4
  %66 = call i64 @GetSysColorBrush(i32 %65)
  store i64 %66, i64* %15, align 8
  br label %67

67:                                               ; preds = %64, %57
  br label %72

68:                                               ; preds = %53
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @CTLCOLOR_SCROLLBAR, align 4
  %71 = call i64 @DefWndControlColor(i32 %69, i32 %70)
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @SelectObject(i32 %73, i64 %74)
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i64 %95, i64* %96, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i64 %100, i64* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i64 %105, i64* %106, align 8
  br label %136

107:                                              ; preds = %72
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i64 %125, i64* %126, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %107, %78
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %162, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %148, %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %153, %155
  %157 = load i32, i32* @PATCOPY, align 4
  %158 = call i32 @PatBlt(i32 %142, i64 %144, i64 %146, i64 %151, i64 %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = load i64, i64* %14, align 8
  %161 = call i64 @SelectObject(i32 %159, i64 %160)
  br label %360

162:                                              ; preds = %136
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %12, align 8
  %167 = sub nsw i64 %166, %165
  store i64 %167, i64* %12, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %346

172:                                              ; preds = %162
  %173 = load i64, i64* %9, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %260

175:                                              ; preds = %172
  %176 = load i64, i64* %11, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %236

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %185, %187
  %189 = load i64, i64* %12, align 8
  %190 = load i64, i64* %16, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = load i32, i32* @BLACKNESS, align 4
  br label %196

194:                                              ; preds = %178
  %195 = load i32, i32* @PATCOPY, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  %198 = call i32 @PatBlt(i32 %179, i64 %181, i64 %183, i64 %188, i64 %189, i32 %197)
  %199 = load i64, i64* %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %199
  store i64 %202, i64* %200, align 8
  %203 = load i32, i32* %7, align 4
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %11, align 8
  %209 = add nsw i64 %207, %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %211, %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %216, %218
  %220 = load i64, i64* %11, align 8
  %221 = sub nsw i64 %219, %220
  %222 = load i64, i64* %17, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %196
  %225 = load i32, i32* @BLACKNESS, align 4
  br label %228

226:                                              ; preds = %196
  %227 = load i32, i32* @PATCOPY, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = call i32 @PatBlt(i32 %203, i64 %205, i64 %209, i64 %214, i64 %221, i32 %229)
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %11, align 8
  %234 = add nsw i64 %232, %233
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i64 %234, i64* %235, align 8
  br label %259

236:                                              ; preds = %175
  %237 = load i64, i64* %12, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %247, %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 %252, %254
  %256 = load i32, i32* @PATCOPY, align 4
  %257 = call i32 @PatBlt(i32 %240, i64 %242, i64 %245, i64 %250, i64 %255, i32 %256)
  br label %258

258:                                              ; preds = %239, %236
  br label %259

259:                                              ; preds = %258, %228
  br label %345

260:                                              ; preds = %172
  %261 = load i64, i64* %11, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %321

263:                                              ; preds = %260
  %264 = load i32, i32* %7, align 4
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %271, %273
  %275 = load i64, i64* %16, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %263
  %278 = load i32, i32* @BLACKNESS, align 4
  br label %281

279:                                              ; preds = %263
  %280 = load i32, i32* @PATCOPY, align 4
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ %278, %277 ], [ %280, %279 ]
  %283 = call i32 @PatBlt(i32 %264, i64 %266, i64 %268, i64 %269, i64 %274, i32 %282)
  %284 = load i64, i64* %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %286, %284
  store i64 %287, i64* %285, align 8
  %288 = load i32, i32* %7, align 4
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %11, align 8
  %292 = add nsw i64 %290, %291
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = sub nsw i64 %296, %298
  %300 = load i64, i64* %11, align 8
  %301 = sub nsw i64 %299, %300
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = sub nsw i64 %303, %305
  %307 = load i64, i64* %17, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %281
  %310 = load i32, i32* @BLACKNESS, align 4
  br label %313

311:                                              ; preds = %281
  %312 = load i32, i32* @PATCOPY, align 4
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ %310, %309 ], [ %312, %311 ]
  %315 = call i32 @PatBlt(i32 %288, i64 %292, i64 %294, i64 %301, i64 %306, i32 %314)
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %11, align 8
  %319 = add nsw i64 %317, %318
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i64 %319, i64* %320, align 8
  br label %344

321:                                              ; preds = %260
  %322 = load i64, i64* %12, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %343

324:                                              ; preds = %321
  %325 = load i32, i32* %7, align 4
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = sub nsw i64 %332, %334
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = sub nsw i64 %337, %339
  %341 = load i32, i32* @PATCOPY, align 4
  %342 = call i32 @PatBlt(i32 %325, i64 %328, i64 %330, i64 %335, i64 %340, i32 %341)
  br label %343

343:                                              ; preds = %324, %321
  br label %344

344:                                              ; preds = %343, %313
  br label %345

345:                                              ; preds = %344, %259
  br label %346

346:                                              ; preds = %345, %162
  %347 = load i64, i64* %11, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %356

349:                                              ; preds = %346
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* @EDGE_RAISED, align 4
  %352 = load i32, i32* @BF_RECT, align 4
  %353 = load i32, i32* @BF_MIDDLE, align 4
  %354 = or i32 %352, %353
  %355 = call i32 @DrawEdge(i32 %350, %struct.TYPE_7__* %13, i32 %351, i32 %354)
  br label %356

356:                                              ; preds = %349, %346
  %357 = load i32, i32* %7, align 4
  %358 = load i64, i64* %14, align 8
  %359 = call i64 @SelectObject(i32 %357, i64 %358)
  br label %360

360:                                              ; preds = %356, %141
  ret void
}

declare dso_local i64 @GetControlBrush(i32, i32, i32) #1

declare dso_local i64 @GetSysColorBrush(i32) #1

declare dso_local i64 @DefWndControlColor(i32, i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @PatBlt(i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_draw.c_draw_rect_edge.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_draw.c_draw_rect_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@BDR_INNER = common dso_local global i32 0, align 4
@BDR_OUTER = common dso_local global i32 0, align 4
@BF_FLAT = common dso_local global i32 0, align 4
@BF_MONO = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@NULL_PEN = common dso_local global i32 0, align 4
@LTRBInnerMono = common dso_local global i32* null, align 8
@LTRBOuterMono = common dso_local global i32* null, align 8
@LTRBInnerFlat = common dso_local global i8* null, align 8
@LTRBOuterFlat = common dso_local global i8* null, align 8
@EDGE_FILL = common dso_local global i8 0, align 1
@BF_SOFT = common dso_local global i32 0, align 4
@LTInnerSoft = common dso_local global i8* null, align 8
@LTOuterSoft = common dso_local global i8* null, align 8
@RBInnerSoft = common dso_local global i8* null, align 8
@RBOuterSoft = common dso_local global i8* null, align 8
@LTInnerNormal = common dso_local global i8* null, align 8
@LTOuterNormal = common dso_local global i8* null, align 8
@RBInnerNormal = common dso_local global i8* null, align 8
@RBOuterNormal = common dso_local global i8* null, align 8
@BF_BOTTOMLEFT = common dso_local global i32 0, align 4
@BF_TOPRIGHT = common dso_local global i32 0, align 4
@BF_BOTTOMRIGHT = common dso_local global i32 0, align 4
@BF_TOPLEFT = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i32 0, align 4
@BF_LEFT = common dso_local global i32 0, align 4
@BF_BOTTOM = common dso_local global i32 0, align 4
@BF_RIGHT = common dso_local global i32 0, align 4
@BF_MIDDLE = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@EDGE_WINDOW = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)* @draw_rect_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @draw_rect_edge(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_8__* %4, i32 %5, i32 %6, %struct.TYPE_8__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_8__, align 4
  %26 = alloca %struct.TYPE_9__, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %16, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = bitcast %struct.TYPE_8__* %25 to i8*
  %37 = bitcast %struct.TYPE_8__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 16, i1 false)
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @BDR_INNER, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @BDR_INNER, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @BDR_OUTER, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @BDR_OUTER, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43, %8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @BF_FLAT, align 4
  %52 = load i32, i32* @BF_MONO, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @E_FAIL, align 8
  br label %60

58:                                               ; preds = %49, %43
  %59 = load i64, i64* @S_OK, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  store i64 %61, i64* %32, align 8
  %62 = load i32, i32* @NULL_PEN, align 4
  %63 = call i32 @GetStockObject(i32 %62)
  store i32 %63, i32* %24, align 4
  store i32 %63, i32* %23, align 4
  store i32 %63, i32* %22, align 4
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @SelectObject(i32 %64, i32 %65)
  store i32 %66, i32* %27, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @BF_MONO, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %60
  %72 = load i32*, i32** @LTRBInnerMono, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @BDR_INNER, align 4
  %75 = load i32, i32* @BDR_OUTER, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %19, align 1
  store i8 %81, i8* %17, align 1
  %82 = load i32*, i32** @LTRBOuterMono, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @BDR_INNER, align 4
  %85 = load i32, i32* @BDR_OUTER, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %82, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %20, align 1
  store i8 %91, i8* %18, align 1
  br label %203

92:                                               ; preds = %60
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @BF_FLAT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %92
  %98 = load i8*, i8** @LTRBInnerFlat, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @BDR_INNER, align 4
  %101 = load i32, i32* @BDR_OUTER, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %98, i64 %104
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* %19, align 1
  store i8 %106, i8* %17, align 1
  %107 = load i8*, i8** @LTRBOuterFlat, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @BDR_INNER, align 4
  %110 = load i32, i32* @BDR_OUTER, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %107, i64 %113
  %115 = load i8, i8* %114, align 1
  store i8 %115, i8* %20, align 1
  store i8 %115, i8* %18, align 1
  %116 = load i8, i8* %17, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %121

119:                                              ; preds = %97
  %120 = load i8, i8* @EDGE_FILL, align 1
  store i8 %120, i8* %19, align 1
  store i8 %120, i8* %17, align 1
  br label %121

121:                                              ; preds = %119, %97
  br label %202

122:                                              ; preds = %92
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @BF_SOFT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %122
  %128 = load i8*, i8** @LTInnerSoft, align 8
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @BDR_INNER, align 4
  %131 = load i32, i32* @BDR_OUTER, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = load i8, i8* %135, align 1
  store i8 %136, i8* %17, align 1
  %137 = load i8*, i8** @LTOuterSoft, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @BDR_INNER, align 4
  %140 = load i32, i32* @BDR_OUTER, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %137, i64 %143
  %145 = load i8, i8* %144, align 1
  store i8 %145, i8* %18, align 1
  %146 = load i8*, i8** @RBInnerSoft, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* @BDR_INNER, align 4
  %149 = load i32, i32* @BDR_OUTER, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %146, i64 %152
  %154 = load i8, i8* %153, align 1
  store i8 %154, i8* %19, align 1
  %155 = load i8*, i8** @RBOuterSoft, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @BDR_INNER, align 4
  %158 = load i32, i32* @BDR_OUTER, align 4
  %159 = or i32 %157, %158
  %160 = and i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %155, i64 %161
  %163 = load i8, i8* %162, align 1
  store i8 %163, i8* %20, align 1
  br label %201

164:                                              ; preds = %122
  %165 = load i8*, i8** @LTInnerNormal, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @BDR_INNER, align 4
  %168 = load i32, i32* @BDR_OUTER, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %165, i64 %171
  %173 = load i8, i8* %172, align 1
  store i8 %173, i8* %17, align 1
  %174 = load i8*, i8** @LTOuterNormal, align 8
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* @BDR_INNER, align 4
  %177 = load i32, i32* @BDR_OUTER, align 4
  %178 = or i32 %176, %177
  %179 = and i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %174, i64 %180
  %182 = load i8, i8* %181, align 1
  store i8 %182, i8* %18, align 1
  %183 = load i8*, i8** @RBInnerNormal, align 8
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @BDR_INNER, align 4
  %186 = load i32, i32* @BDR_OUTER, align 4
  %187 = or i32 %185, %186
  %188 = and i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %183, i64 %189
  %191 = load i8, i8* %190, align 1
  store i8 %191, i8* %19, align 1
  %192 = load i8*, i8** @RBOuterNormal, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @BDR_INNER, align 4
  %195 = load i32, i32* @BDR_OUTER, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %192, i64 %198
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %20, align 1
  br label %201

201:                                              ; preds = %164, %127
  br label %202

202:                                              ; preds = %201, %121
  br label %203

203:                                              ; preds = %202, %71
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @BF_BOTTOMLEFT, align 4
  %206 = and i32 %204, %205
  %207 = load i32, i32* @BF_BOTTOMLEFT, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  store i32 1, i32* %28, align 4
  br label %210

210:                                              ; preds = %209, %203
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* @BF_TOPRIGHT, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* @BF_TOPRIGHT, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  store i32 1, i32* %30, align 4
  br label %217

217:                                              ; preds = %216, %210
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @BF_BOTTOMRIGHT, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @BF_BOTTOMRIGHT, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  store i32 1, i32* %31, align 4
  br label %224

224:                                              ; preds = %223, %217
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @BF_TOPLEFT, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* @BF_TOPLEFT, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i32 1, i32* %29, align 4
  br label %231

231:                                              ; preds = %230, %224
  %232 = load i8, i8* %17, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, -1
  br i1 %234, label %235, label %241

235:                                              ; preds = %231
  %236 = load i8, i8* %17, align 1
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @get_edge_pen(i8 signext %236, i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %21, align 4
  br label %241

241:                                              ; preds = %235, %231
  %242 = load i8, i8* %18, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, -1
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load i8, i8* %18, align 1
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @get_edge_pen(i8 signext %246, i32 %247, i32 %248, i32 %249)
  store i32 %250, i32* %22, align 4
  br label %251

251:                                              ; preds = %245, %241
  %252 = load i8, i8* %19, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, -1
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i8, i8* %19, align 1
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @get_edge_pen(i8 signext %256, i32 %257, i32 %258, i32 %259)
  store i32 %260, i32* %23, align 4
  br label %261

261:                                              ; preds = %255, %251
  %262 = load i8, i8* %20, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, -1
  br i1 %264, label %265, label %271

265:                                              ; preds = %261
  %266 = load i8, i8* %20, align 1
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* %12, align 4
  %270 = call i32 @get_edge_pen(i8 signext %266, i32 %267, i32 %268, i32 %269)
  store i32 %270, i32* %24, align 4
  br label %271

271:                                              ; preds = %265, %261
  %272 = load i32, i32* %9, align 4
  %273 = call i32 @MoveToEx(i32 %272, i32 0, i32 0, %struct.TYPE_9__* %26)
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %22, align 4
  %276 = call i32 @SelectObject(i32 %274, i32 %275)
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* @BF_TOP, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %271
  %282 = load i32, i32* %9, align 4
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @MoveToEx(i32 %282, i32 %284, i32 %286, %struct.TYPE_9__* null)
  %288 = load i32, i32* %9, align 4
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @LineTo(i32 %288, i32 %290, i32 %292)
  br label %294

294:                                              ; preds = %281, %271
  %295 = load i32, i32* %15, align 4
  %296 = load i32, i32* @BF_LEFT, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %312

299:                                              ; preds = %294
  %300 = load i32, i32* %9, align 4
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @MoveToEx(i32 %300, i32 %302, i32 %304, %struct.TYPE_9__* null)
  %306 = load i32, i32* %9, align 4
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @LineTo(i32 %306, i32 %308, i32 %310)
  br label %312

312:                                              ; preds = %299, %294
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %24, align 4
  %315 = call i32 @SelectObject(i32 %313, i32 %314)
  %316 = load i32, i32* %15, align 4
  %317 = load i32, i32* @BF_BOTTOM, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %337

320:                                              ; preds = %312
  %321 = load i32, i32* %9, align 4
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %323, 1
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %326, 1
  %328 = call i32 @MoveToEx(i32 %321, i32 %324, i32 %327, %struct.TYPE_9__* null)
  %329 = load i32, i32* %9, align 4
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %331, 1
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 %334, 1
  %336 = call i32 @LineTo(i32 %329, i32 %332, i32 %335)
  br label %337

337:                                              ; preds = %320, %312
  %338 = load i32, i32* %15, align 4
  %339 = load i32, i32* @BF_RIGHT, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %359

342:                                              ; preds = %337
  %343 = load i32, i32* %9, align 4
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %345, 1
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %348, 1
  %350 = call i32 @MoveToEx(i32 %343, i32 %346, i32 %349, %struct.TYPE_9__* null)
  %351 = load i32, i32* %9, align 4
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = sub nsw i32 %353, 1
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %356, 1
  %358 = call i32 @LineTo(i32 %351, i32 %354, i32 %357)
  br label %359

359:                                              ; preds = %342, %337
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* %21, align 4
  %362 = call i32 @SelectObject(i32 %360, i32 %361)
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* @BF_TOP, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %386

367:                                              ; preds = %359
  %368 = load i32, i32* %9, align 4
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %29, align 4
  %372 = add nsw i32 %370, %371
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = add nsw i32 %374, 1
  %376 = call i32 @MoveToEx(i32 %368, i32 %372, i32 %375, %struct.TYPE_9__* null)
  %377 = load i32, i32* %9, align 4
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %30, align 4
  %381 = sub nsw i32 %379, %380
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %383, 1
  %385 = call i32 @LineTo(i32 %377, i32 %381, i32 %384)
  br label %386

386:                                              ; preds = %367, %359
  %387 = load i32, i32* %15, align 4
  %388 = load i32, i32* @BF_LEFT, align 4
  %389 = and i32 %387, %388
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %410

391:                                              ; preds = %386
  %392 = load i32, i32* %9, align 4
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, 1
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %29, align 4
  %399 = add nsw i32 %397, %398
  %400 = call i32 @MoveToEx(i32 %392, i32 %395, i32 %399, %struct.TYPE_9__* null)
  %401 = load i32, i32* %9, align 4
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, 1
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %28, align 4
  %408 = sub nsw i32 %406, %407
  %409 = call i32 @LineTo(i32 %401, i32 %404, i32 %408)
  br label %410

410:                                              ; preds = %391, %386
  %411 = load i32, i32* %9, align 4
  %412 = load i32, i32* %23, align 4
  %413 = call i32 @SelectObject(i32 %411, i32 %412)
  %414 = load i32, i32* %15, align 4
  %415 = load i32, i32* @BF_BOTTOM, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %439

418:                                              ; preds = %410
  %419 = load i32, i32* %9, align 4
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = sub nsw i32 %421, 1
  %423 = load i32, i32* %31, align 4
  %424 = sub nsw i32 %422, %423
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = sub nsw i32 %426, 2
  %428 = call i32 @MoveToEx(i32 %419, i32 %424, i32 %427, %struct.TYPE_9__* null)
  %429 = load i32, i32* %9, align 4
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = sub nsw i32 %431, 1
  %433 = load i32, i32* %28, align 4
  %434 = add nsw i32 %432, %433
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = sub nsw i32 %436, 2
  %438 = call i32 @LineTo(i32 %429, i32 %434, i32 %437)
  br label %439

439:                                              ; preds = %418, %410
  %440 = load i32, i32* %15, align 4
  %441 = load i32, i32* @BF_RIGHT, align 4
  %442 = and i32 %440, %441
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %465

444:                                              ; preds = %439
  %445 = load i32, i32* %9, align 4
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %447 = load i32, i32* %446, align 4
  %448 = sub nsw i32 %447, 2
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %450 = load i32, i32* %449, align 4
  %451 = sub nsw i32 %450, 1
  %452 = load i32, i32* %31, align 4
  %453 = sub nsw i32 %451, %452
  %454 = call i32 @MoveToEx(i32 %445, i32 %448, i32 %453, %struct.TYPE_9__* null)
  %455 = load i32, i32* %9, align 4
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = sub nsw i32 %457, 2
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 %460, 1
  %462 = load i32, i32* %30, align 4
  %463 = add nsw i32 %461, %462
  %464 = call i32 @LineTo(i32 %455, i32 %458, i32 %463)
  br label %465

465:                                              ; preds = %444, %439
  %466 = load i32, i32* %15, align 4
  %467 = load i32, i32* @BF_MIDDLE, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %465
  %471 = load i64, i64* %32, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %478, label %473

473:                                              ; preds = %470, %465
  %474 = load i32, i32* %15, align 4
  %475 = load i32, i32* @BF_ADJUST, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %584

478:                                              ; preds = %473, %470
  %479 = load i32*, i32** @LTRBInnerMono, align 8
  %480 = load i32, i32* %14, align 4
  %481 = load i32, i32* @BDR_INNER, align 4
  %482 = load i32, i32* @BDR_OUTER, align 4
  %483 = or i32 %481, %482
  %484 = and i32 %480, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %479, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %487, -1
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i32 1, i32 0
  %491 = load i32*, i32** @LTRBOuterMono, align 8
  %492 = load i32, i32* %14, align 4
  %493 = load i32, i32* @BDR_INNER, align 4
  %494 = load i32, i32* @BDR_OUTER, align 4
  %495 = or i32 %493, %494
  %496 = and i32 %492, %495
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %491, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = icmp ne i32 %499, -1
  %501 = zext i1 %500 to i64
  %502 = select i1 %500, i32 1, i32 0
  %503 = add nsw i32 %490, %502
  store i32 %503, i32* %33, align 4
  %504 = load i32, i32* %15, align 4
  %505 = load i32, i32* @BF_LEFT, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %513

508:                                              ; preds = %478
  %509 = load i32, i32* %33, align 4
  %510 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 %511, %509
  store i32 %512, i32* %510, align 4
  br label %513

513:                                              ; preds = %508, %478
  %514 = load i32, i32* %15, align 4
  %515 = load i32, i32* @BF_RIGHT, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %523

518:                                              ; preds = %513
  %519 = load i32, i32* %33, align 4
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %521 = load i32, i32* %520, align 4
  %522 = sub nsw i32 %521, %519
  store i32 %522, i32* %520, align 4
  br label %523

523:                                              ; preds = %518, %513
  %524 = load i32, i32* %15, align 4
  %525 = load i32, i32* @BF_TOP, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %533

528:                                              ; preds = %523
  %529 = load i32, i32* %33, align 4
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = add nsw i32 %531, %529
  store i32 %532, i32* %530, align 4
  br label %533

533:                                              ; preds = %528, %523
  %534 = load i32, i32* %15, align 4
  %535 = load i32, i32* @BF_BOTTOM, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %533
  %539 = load i32, i32* %33, align 4
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = sub nsw i32 %541, %539
  store i32 %542, i32* %540, align 4
  br label %543

543:                                              ; preds = %538, %533
  %544 = load i32, i32* %15, align 4
  %545 = load i32, i32* @BF_MIDDLE, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %574

548:                                              ; preds = %543
  %549 = load i64, i64* %32, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %574

551:                                              ; preds = %548
  %552 = load i32, i32* %15, align 4
  %553 = load i32, i32* @BF_MONO, align 4
  %554 = and i32 %552, %553
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %551
  %557 = load i8, i8* @EDGE_WINDOW, align 1
  %558 = sext i8 %557 to i32
  br label %562

559:                                              ; preds = %551
  %560 = load i8, i8* @EDGE_FILL, align 1
  %561 = sext i8 %560 to i32
  br label %562

562:                                              ; preds = %559, %556
  %563 = phi i32 [ %558, %556 ], [ %561, %559 ]
  %564 = trunc i32 %563 to i8
  %565 = load i32, i32* %10, align 4
  %566 = load i32, i32* %11, align 4
  %567 = load i32, i32* %12, align 4
  %568 = call i32 @get_edge_brush(i8 signext %564, i32 %565, i32 %566, i32 %567)
  store i32 %568, i32* %34, align 4
  %569 = load i32, i32* %9, align 4
  %570 = load i32, i32* %34, align 4
  %571 = call i32 @FillRect(i32 %569, %struct.TYPE_8__* %25, i32 %570)
  %572 = load i32, i32* %34, align 4
  %573 = call i32 @DeleteObject(i32 %572)
  br label %574

574:                                              ; preds = %562, %548, %543
  %575 = load i32, i32* %15, align 4
  %576 = load i32, i32* @BF_ADJUST, align 4
  %577 = and i32 %575, %576
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %583

579:                                              ; preds = %574
  %580 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %581 = bitcast %struct.TYPE_8__* %580 to i8*
  %582 = bitcast %struct.TYPE_8__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %581, i8* align 4 %582, i64 16, i1 false)
  br label %583

583:                                              ; preds = %579, %574
  br label %584

584:                                              ; preds = %583, %473
  %585 = load i32, i32* %9, align 4
  %586 = load i32, i32* %27, align 4
  %587 = call i32 @SelectObject(i32 %585, i32 %586)
  %588 = load i32, i32* %9, align 4
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @MoveToEx(i32 %588, i32 %590, i32 %592, %struct.TYPE_9__* null)
  %594 = load i8, i8* %17, align 1
  %595 = sext i8 %594 to i32
  %596 = icmp ne i32 %595, -1
  br i1 %596, label %597, label %600

597:                                              ; preds = %584
  %598 = load i32, i32* %21, align 4
  %599 = call i32 @DeleteObject(i32 %598)
  br label %600

600:                                              ; preds = %597, %584
  %601 = load i8, i8* %18, align 1
  %602 = sext i8 %601 to i32
  %603 = icmp ne i32 %602, -1
  br i1 %603, label %604, label %607

604:                                              ; preds = %600
  %605 = load i32, i32* %22, align 4
  %606 = call i32 @DeleteObject(i32 %605)
  br label %607

607:                                              ; preds = %604, %600
  %608 = load i8, i8* %19, align 1
  %609 = sext i8 %608 to i32
  %610 = icmp ne i32 %609, -1
  br i1 %610, label %611, label %614

611:                                              ; preds = %607
  %612 = load i32, i32* %23, align 4
  %613 = call i32 @DeleteObject(i32 %612)
  br label %614

614:                                              ; preds = %611, %607
  %615 = load i8, i8* %20, align 1
  %616 = sext i8 %615 to i32
  %617 = icmp ne i32 %616, -1
  br i1 %617, label %618, label %621

618:                                              ; preds = %614
  %619 = load i32, i32* %24, align 4
  %620 = call i32 @DeleteObject(i32 %619)
  br label %621

621:                                              ; preds = %618, %614
  %622 = load i64, i64* %32, align 8
  ret i64 %622
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @get_edge_pen(i8 signext, i32, i32, i32) #2

declare dso_local i32 @MoveToEx(i32, i32, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @LineTo(i32, i32, i32) #2

declare dso_local i32 @get_edge_brush(i8 signext, i32, i32, i32) #2

declare dso_local i32 @FillRect(i32, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @DeleteObject(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

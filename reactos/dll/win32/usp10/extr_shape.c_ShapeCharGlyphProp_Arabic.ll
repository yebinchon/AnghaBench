; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Arabic.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_ShapeCharGlyphProp_Arabic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }

@SCRIPT_JUSTIFY_ARABIC_BLANK = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_KASHIDA = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_SEEN_M = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_SEEN = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_NONE = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_BA = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_RA = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_HA = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_ALEF = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_NORMAL = common dso_local global i8* null, align 8
@SCRIPT_JUSTIFY_ARABIC_BARA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_13__*, i32*, i32, i32*, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*)* @ShapeCharGlyphProp_Arabic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ShapeCharGlyphProp_Arabic(i32 %0, i32* %1, %struct.TYPE_13__* %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7, %struct.TYPE_12__* %8, %struct.TYPE_11__* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca [20 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %20, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i32* @heap_alloc(i32 %32)
  store i32* %33, i32** %27, align 8
  %34 = load i32*, i32** %27, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @memset(i32* %34, i32 0, i32 %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %10
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  store i32 0, i32* %23, align 4
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  store i32 1, i32* %26, align 4
  br label %52

49:                                               ; preds = %41, %10
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %21, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  store i32 0, i32* %22, align 4
  br label %58

58:                                               ; preds = %84, %57
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %21, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i32*, i32** %27, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %70
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %22, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %22, align 4
  br label %58

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %53

91:                                               ; preds = %53
  store i32 0, i32* %21, align 4
  br label %92

92:                                               ; preds = %491, %91
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %494

96:                                               ; preds = %92
  store i32 0, i32* %29, align 4
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %21, align 4
  %100 = call i32 @USP10_FindGlyphInLogClust(i32* %97, i32 %98, i32 %99)
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %124, %103
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load i32*, i32** %18, align 8
  %110 = load i32, i32* %22, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp eq i32 %113, %114
  br label %116

116:                                              ; preds = %108, %104
  %117 = phi i1 [ false, %104 ], [ %115, %108 ]
  br i1 %117, label %118, label %127

118:                                              ; preds = %116
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %29, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %29, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %22, align 4
  br label %104

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %96
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %23, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %154, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %25, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load i32*, i32** %27, align 8
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %25, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br label %152

152:                                              ; preds = %143, %137, %132
  %153 = phi i1 [ false, %137 ], [ false, %132 ], [ %151, %143 ]
  br label %154

154:                                              ; preds = %152, %128
  %155 = phi i1 [ true, %128 ], [ %153, %152 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %30, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %24, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %182, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %26, align 4
  %163 = add nsw i32 %161, %162
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %26, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %17, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load i32*, i32** %27, align 8
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %26, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br label %180

180:                                              ; preds = %171, %165, %160
  %181 = phi i1 [ false, %165 ], [ false, %160 ], [ %179, %171 ]
  br label %182

182:                                              ; preds = %180, %154
  %183 = phi i1 [ true, %154 ], [ %181, %180 ]
  %184 = zext i1 %183 to i32
  store i32 %184, i32* %31, align 4
  %185 = load i32, i32* %29, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %491

188:                                              ; preds = %182
  %189 = load i32, i32* %29, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %402

191:                                              ; preds = %188
  %192 = load i32*, i32** %14, align 8
  %193 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %194 = load i32, i32* %193, align 16
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 32
  br i1 %198, label %199, label %213

199:                                              ; preds = %191
  %200 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_BLANK, align 8
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i8* %200, i8** %206, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %208 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %209 = load i32, i32* %208, align 16
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  br label %401

213:                                              ; preds = %191
  %214 = load i32*, i32** %14, align 8
  %215 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %216 = load i32, i32* %215, align 16
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 1600
  br i1 %220, label %221, label %229

221:                                              ; preds = %213
  %222 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_KASHIDA, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %224 = load i32, i32* %21, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  store i8* %222, i8** %228, align 8
  br label %400

229:                                              ; preds = %213
  %230 = load i32*, i32** %14, align 8
  %231 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %232 = load i32, i32* %231, align 16
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 1587
  br i1 %236, label %237, label %272

237:                                              ; preds = %229
  %238 = load i32, i32* %30, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %251, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %31, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %240
  %244 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_SEEN_M, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %246 = load i32, i32* %21, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  store i8* %244, i8** %250, align 8
  br label %271

251:                                              ; preds = %240, %237
  %252 = load i32, i32* %30, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %251
  %255 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_SEEN, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %257 = load i32, i32* %21, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  store i8* %255, i8** %261, align 8
  br label %270

262:                                              ; preds = %251
  %263 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %265 = load i32, i32* %21, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i8* %263, i8** %269, align 8
  br label %270

270:                                              ; preds = %262, %254
  br label %271

271:                                              ; preds = %270, %243
  br label %399

272:                                              ; preds = %229
  %273 = load i32, i32* %30, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %375, label %275

275:                                              ; preds = %272
  %276 = load i32*, i32** %14, align 8
  %277 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %278 = load i32, i32* %277, align 16
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %276, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, 1576
  br i1 %282, label %283, label %291

283:                                              ; preds = %275
  %284 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_BA, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  store i8* %284, i8** %290, align 8
  br label %374

291:                                              ; preds = %275
  %292 = load i32*, i32** %14, align 8
  %293 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %294 = load i32, i32* %293, align 16
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 1585
  br i1 %298, label %299, label %307

299:                                              ; preds = %291
  %300 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_RA, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  store i8* %300, i8** %306, align 8
  br label %373

307:                                              ; preds = %291
  %308 = load i32*, i32** %14, align 8
  %309 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %310 = load i32, i32* %309, align 16
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %313, 1607
  br i1 %314, label %315, label %323

315:                                              ; preds = %307
  %316 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_HA, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %318 = load i32, i32* %21, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 0
  store i8* %316, i8** %322, align 8
  br label %372

323:                                              ; preds = %307
  %324 = load i32*, i32** %14, align 8
  %325 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %326 = load i32, i32* %325, align 16
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 1575
  br i1 %330, label %355, label %331

331:                                              ; preds = %323
  %332 = load i32*, i32** %14, align 8
  %333 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %334 = load i32, i32* %333, align 16
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 1573
  br i1 %338, label %355, label %339

339:                                              ; preds = %331
  %340 = load i32*, i32** %14, align 8
  %341 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %342 = load i32, i32* %341, align 16
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 1571
  br i1 %346, label %355, label %347

347:                                              ; preds = %339
  %348 = load i32*, i32** %14, align 8
  %349 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %350 = load i32, i32* %349, align 16
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 1570
  br i1 %354, label %355, label %363

355:                                              ; preds = %347, %339, %331, %323
  %356 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_ALEF, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %358 = load i32, i32* %21, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  store i8* %356, i8** %362, align 8
  br label %371

363:                                              ; preds = %347
  %364 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %366 = load i32, i32* %21, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  store i8* %364, i8** %370, align 8
  br label %371

371:                                              ; preds = %363, %355
  br label %372

372:                                              ; preds = %371, %315
  br label %373

373:                                              ; preds = %372, %299
  br label %374

374:                                              ; preds = %373, %283
  br label %398

375:                                              ; preds = %272
  %376 = load i32, i32* %30, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %389, label %378

378:                                              ; preds = %375
  %379 = load i32, i32* %31, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %389, label %381

381:                                              ; preds = %378
  %382 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_NORMAL, align 8
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %384 = load i32, i32* %21, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 0
  store i8* %382, i8** %388, align 8
  br label %397

389:                                              ; preds = %378, %375
  %390 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %392 = load i32, i32* %21, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  store i8* %390, i8** %396, align 8
  br label %397

397:                                              ; preds = %389, %381
  br label %398

398:                                              ; preds = %397, %374
  br label %399

399:                                              ; preds = %398, %271
  br label %400

400:                                              ; preds = %399, %221
  br label %401

401:                                              ; preds = %400, %199
  br label %490

402:                                              ; preds = %188
  %403 = load i32, i32* %29, align 4
  %404 = icmp eq i32 %403, 2
  br i1 %404, label %405, label %466

405:                                              ; preds = %402
  %406 = load i32*, i32** %14, align 8
  %407 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %408 = load i32, i32* %407, align 16
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %406, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 1576
  br i1 %412, label %413, label %421

413:                                              ; preds = %405
  %414 = load i32*, i32** %14, align 8
  %415 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 1
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 1585
  br i1 %420, label %437, label %421

421:                                              ; preds = %413, %405
  %422 = load i32*, i32** %14, align 8
  %423 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 0
  %424 = load i32, i32* %423, align 16
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = icmp eq i32 %427, 1585
  br i1 %428, label %429, label %445

429:                                              ; preds = %421
  %430 = load i32*, i32** %14, align 8
  %431 = getelementptr inbounds [20 x i32], [20 x i32]* %28, i64 0, i64 1
  %432 = load i32, i32* %431, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 1576
  br i1 %436, label %437, label %445

437:                                              ; preds = %429, %413
  %438 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_BARA, align 8
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %440 = load i32, i32* %21, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 0
  store i8* %438, i8** %444, align 8
  br label %465

445:                                              ; preds = %429, %421
  %446 = load i32, i32* %30, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %456, label %448

448:                                              ; preds = %445
  %449 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_NORMAL, align 8
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %451 = load i32, i32* %21, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i64 %452
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 0
  store i8* %449, i8** %455, align 8
  br label %464

456:                                              ; preds = %445
  %457 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %459 = load i32, i32* %21, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 0
  store i8* %457, i8** %463, align 8
  br label %464

464:                                              ; preds = %456, %448
  br label %465

465:                                              ; preds = %464, %437
  br label %489

466:                                              ; preds = %402
  %467 = load i32, i32* %30, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %480, label %469

469:                                              ; preds = %466
  %470 = load i32, i32* %31, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %480, label %472

472:                                              ; preds = %469
  %473 = load i8*, i8** @SCRIPT_JUSTIFY_ARABIC_NORMAL, align 8
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %475 = load i32, i32* %21, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 0
  store i8* %473, i8** %479, align 8
  br label %488

480:                                              ; preds = %469, %466
  %481 = load i8*, i8** @SCRIPT_JUSTIFY_NONE, align 8
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %483 = load i32, i32* %21, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 0
  store i8* %481, i8** %487, align 8
  br label %488

488:                                              ; preds = %480, %472
  br label %489

489:                                              ; preds = %488, %465
  br label %490

490:                                              ; preds = %489, %401
  br label %491

491:                                              ; preds = %490, %187
  %492 = load i32, i32* %21, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %21, align 4
  br label %92

494:                                              ; preds = %92
  %495 = load i32*, i32** %12, align 8
  %496 = load i32*, i32** %16, align 8
  %497 = load i32, i32* %17, align 4
  %498 = load i32*, i32** %18, align 8
  %499 = load i32, i32* %15, align 4
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %501 = call i32 @OpenType_GDEF_UpdateGlyphProps(i32* %495, i32* %496, i32 %497, i32* %498, i32 %499, %struct.TYPE_11__* %500)
  %502 = load i32, i32* %17, align 4
  %503 = load i32, i32* %15, align 4
  %504 = load i32*, i32** %18, align 8
  %505 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %506 = call i32 @UpdateClustersFromGlyphProp(i32 %502, i32 %503, i32* %504, %struct.TYPE_11__* %505)
  %507 = load i32*, i32** %27, align 8
  %508 = call i32 @heap_free(i32* %507)
  ret void
}

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @USP10_FindGlyphInLogClust(i32*, i32, i32) #1

declare dso_local i32 @OpenType_GDEF_UpdateGlyphProps(i32*, i32*, i32, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @UpdateClustersFromGlyphProp(i32, i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

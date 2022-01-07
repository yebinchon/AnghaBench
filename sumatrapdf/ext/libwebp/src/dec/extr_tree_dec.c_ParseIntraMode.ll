; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_tree_dec.c_ParseIntraMode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_tree_dec.c_ParseIntraMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i64*, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"pred-modes\00", align 1
@TM_PRED = common dso_local global i8* null, align 8
@H_PRED = common dso_local global i8* null, align 8
@V_PRED = common dso_local global i8* null, align 8
@DC_PRED = common dso_local global i8* null, align 8
@kBModesProba = common dso_local global i64*** null, align 8
@B_DC_PRED = common dso_local global i32 0, align 4
@B_TM_PRED = common dso_local global i32 0, align 4
@B_VE_PRED = common dso_local global i32 0, align 4
@B_HE_PRED = common dso_local global i32 0, align 4
@B_RD_PRED = common dso_local global i32 0, align 4
@B_VR_PRED = common dso_local global i32 0, align 4
@B_LD_PRED = common dso_local global i32 0, align 4
@B_VL_PRED = common dso_local global i32 0, align 4
@B_HD_PRED = common dso_local global i32 0, align 4
@B_HU_PRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"pred-modes-uv\00", align 1
@kYModesIntra4 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32)* @ParseIntraMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseIntraMode(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 4, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  store i64* %22, i64** %7, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %9, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %3
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = call i32 @VP8GetBit(i32* %38, i64 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %37
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @VP8GetBit(i32* %49, i64 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %69

58:                                               ; preds = %37
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = call i32 @VP8GetBit(i32* %59, i64 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %68 = add nsw i32 %67, 2
  br label %69

69:                                               ; preds = %58, %48
  %70 = phi i32 [ %57, %48 ], [ %68, %58 ]
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %76

73:                                               ; preds = %3
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = call i32 @VP8GetBit(i32* %82, i64 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %76
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @VP8GetBit(i32* %91, i64 145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %90
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @VP8GetBit(i32* %103, i64 156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @VP8GetBit(i32* %107, i64 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8*, i8** @TM_PRED, align 8
  br label %114

112:                                              ; preds = %106
  %113 = load i8*, i8** @H_PRED, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i8* [ %111, %110 ], [ %113, %112 ]
  br label %126

116:                                              ; preds = %102
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @VP8GetBit(i32* %117, i64 163, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i8*, i8** @V_PRED, align 8
  br label %124

122:                                              ; preds = %116
  %123 = load i8*, i8** @DC_PRED, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i8* [ %121, %120 ], [ %123, %122 ]
  br label %126

126:                                              ; preds = %124, %114
  %127 = phi i8* [ %115, %114 ], [ %125, %124 ]
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 %129, i32* %133, align 4
  %134 = load i64*, i64** %7, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @memset(i64* %134, i32 %135, i32 32)
  %137 = load i64*, i64** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @memset(i64* %137, i32 %138, i32 32)
  br label %296

140:                                              ; preds = %90
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = bitcast i32* %143 to i64*
  store i64* %144, i64** %11, align 8
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %292, %140
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %295

148:                                              ; preds = %145
  %149 = load i64*, i64** %8, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %277, %148
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %280

158:                                              ; preds = %155
  %159 = load i64***, i64**** @kBModesProba, align 8
  %160 = load i64*, i64** %7, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64**, i64*** %159, i64 %164
  %166 = load i64**, i64*** %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64*, i64** %166, i64 %168
  %170 = load i64*, i64** %169, align 8
  store i64* %170, i64** %15, align 8
  %171 = load i32*, i32** %4, align 8
  %172 = load i64*, i64** %15, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @VP8GetBit(i32* %171, i64 %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %158
  %178 = load i32, i32* @B_DC_PRED, align 4
  br label %269

179:                                              ; preds = %158
  %180 = load i32*, i32** %4, align 8
  %181 = load i64*, i64** %15, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @VP8GetBit(i32* %180, i64 %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* @B_TM_PRED, align 4
  br label %267

188:                                              ; preds = %179
  %189 = load i32*, i32** %4, align 8
  %190 = load i64*, i64** %15, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 2
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @VP8GetBit(i32* %189, i64 %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* @B_VE_PRED, align 4
  br label %265

197:                                              ; preds = %188
  %198 = load i32*, i32** %4, align 8
  %199 = load i64*, i64** %15, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 3
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @VP8GetBit(i32* %198, i64 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %228, label %204

204:                                              ; preds = %197
  %205 = load i32*, i32** %4, align 8
  %206 = load i64*, i64** %15, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 4
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @VP8GetBit(i32* %205, i64 %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* @B_HE_PRED, align 4
  br label %226

213:                                              ; preds = %204
  %214 = load i32*, i32** %4, align 8
  %215 = load i64*, i64** %15, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 5
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @VP8GetBit(i32* %214, i64 %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %213
  %221 = load i32, i32* @B_RD_PRED, align 4
  br label %224

222:                                              ; preds = %213
  %223 = load i32, i32* @B_VR_PRED, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  br label %226

226:                                              ; preds = %224, %211
  %227 = phi i32 [ %212, %211 ], [ %225, %224 ]
  br label %263

228:                                              ; preds = %197
  %229 = load i32*, i32** %4, align 8
  %230 = load i64*, i64** %15, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 6
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @VP8GetBit(i32* %229, i64 %232, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %237, label %235

235:                                              ; preds = %228
  %236 = load i32, i32* @B_LD_PRED, align 4
  br label %261

237:                                              ; preds = %228
  %238 = load i32*, i32** %4, align 8
  %239 = load i64*, i64** %15, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 7
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @VP8GetBit(i32* %238, i64 %241, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %237
  %245 = load i32, i32* @B_VL_PRED, align 4
  br label %259

246:                                              ; preds = %237
  %247 = load i32*, i32** %4, align 8
  %248 = load i64*, i64** %15, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 8
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @VP8GetBit(i32* %247, i64 %250, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %246
  %254 = load i32, i32* @B_HD_PRED, align 4
  br label %257

255:                                              ; preds = %246
  %256 = load i32, i32* @B_HU_PRED, align 4
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %254, %253 ], [ %256, %255 ]
  br label %259

259:                                              ; preds = %257, %244
  %260 = phi i32 [ %245, %244 ], [ %258, %257 ]
  br label %261

261:                                              ; preds = %259, %235
  %262 = phi i32 [ %236, %235 ], [ %260, %259 ]
  br label %263

263:                                              ; preds = %261, %226
  %264 = phi i32 [ %227, %226 ], [ %262, %261 ]
  br label %265

265:                                              ; preds = %263, %195
  %266 = phi i32 [ %196, %195 ], [ %264, %263 ]
  br label %267

267:                                              ; preds = %265, %186
  %268 = phi i32 [ %187, %186 ], [ %266, %265 ]
  br label %269

269:                                              ; preds = %267, %177
  %270 = phi i32 [ %178, %177 ], [ %268, %267 ]
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = load i64*, i64** %7, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %273, i64 %275
  store i64 %272, i64* %276, align 8
  br label %277

277:                                              ; preds = %269
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %155

280:                                              ; preds = %155
  %281 = load i64*, i64** %11, align 8
  %282 = load i64*, i64** %7, align 8
  %283 = call i32 @memcpy(i64* %281, i64* %282, i32 32)
  %284 = load i64*, i64** %11, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 4
  store i64* %285, i64** %11, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = load i64*, i64** %8, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i64, i64* %288, i64 %290
  store i64 %287, i64* %291, align 8
  br label %292

292:                                              ; preds = %280
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %145

295:                                              ; preds = %145
  br label %296

296:                                              ; preds = %295, %126
  %297 = load i32*, i32** %4, align 8
  %298 = call i32 @VP8GetBit(i32* %297, i64 142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = load i8*, i8** @DC_PRED, align 8
  br label %320

302:                                              ; preds = %296
  %303 = load i32*, i32** %4, align 8
  %304 = call i32 @VP8GetBit(i32* %303, i64 114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = load i8*, i8** @V_PRED, align 8
  br label %318

308:                                              ; preds = %302
  %309 = load i32*, i32** %4, align 8
  %310 = call i32 @VP8GetBit(i32* %309, i64 183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %308
  %313 = load i8*, i8** @TM_PRED, align 8
  br label %316

314:                                              ; preds = %308
  %315 = load i8*, i8** @H_PRED, align 8
  br label %316

316:                                              ; preds = %314, %312
  %317 = phi i8* [ %313, %312 ], [ %315, %314 ]
  br label %318

318:                                              ; preds = %316, %306
  %319 = phi i8* [ %307, %306 ], [ %317, %316 ]
  br label %320

320:                                              ; preds = %318, %300
  %321 = phi i8* [ %301, %300 ], [ %319, %318 ]
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 4
  store i8* %321, i8** %323, align 8
  ret void
}

declare dso_local i32 @VP8GetBit(i32*, i64, i8*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

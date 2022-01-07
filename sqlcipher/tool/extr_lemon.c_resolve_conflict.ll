; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_resolve_conflict.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_resolve_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action = type { i64, %struct.TYPE_4__, %struct.symbol* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.symbol* }
%struct.symbol = type { i64, i64 }

@SHIFT = common dso_local global i64 0, align 8
@SSCONFLICT = common dso_local global i64 0, align 8
@REDUCE = common dso_local global i64 0, align 8
@SRCONFLICT = common dso_local global i64 0, align 8
@RD_RESOLVED = common dso_local global i64 0, align 8
@SH_RESOLVED = common dso_local global i64 0, align 8
@RIGHT = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i64 0, align 8
@RRCONFLICT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.action*, %struct.action*)* @resolve_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_conflict(%struct.action* %0, %struct.action* %1) #0 {
  %3 = alloca %struct.action*, align 8
  %4 = alloca %struct.action*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  store %struct.action* %0, %struct.action** %3, align 8
  store %struct.action* %1, %struct.action** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.action*, %struct.action** %3, align 8
  %9 = getelementptr inbounds %struct.action, %struct.action* %8, i32 0, i32 2
  %10 = load %struct.symbol*, %struct.symbol** %9, align 8
  %11 = load %struct.action*, %struct.action** %4, align 8
  %12 = getelementptr inbounds %struct.action, %struct.action* %11, i32 0, i32 2
  %13 = load %struct.symbol*, %struct.symbol** %12, align 8
  %14 = icmp eq %struct.symbol* %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.action*, %struct.action** %3, align 8
  %18 = getelementptr inbounds %struct.action, %struct.action* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SHIFT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.action*, %struct.action** %4, align 8
  %24 = getelementptr inbounds %struct.action, %struct.action* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SHIFT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* @SSCONFLICT, align 8
  %30 = load %struct.action*, %struct.action** %4, align 8
  %31 = getelementptr inbounds %struct.action, %struct.action* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %28, %22, %2
  %35 = load %struct.action*, %struct.action** %3, align 8
  %36 = getelementptr inbounds %struct.action, %struct.action* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SHIFT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %160

40:                                               ; preds = %34
  %41 = load %struct.action*, %struct.action** %4, align 8
  %42 = getelementptr inbounds %struct.action, %struct.action* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @REDUCE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %160

46:                                               ; preds = %40
  %47 = load %struct.action*, %struct.action** %3, align 8
  %48 = getelementptr inbounds %struct.action, %struct.action* %47, i32 0, i32 2
  %49 = load %struct.symbol*, %struct.symbol** %48, align 8
  store %struct.symbol* %49, %struct.symbol** %5, align 8
  %50 = load %struct.action*, %struct.action** %4, align 8
  %51 = getelementptr inbounds %struct.action, %struct.action* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.symbol*, %struct.symbol** %54, align 8
  store %struct.symbol* %55, %struct.symbol** %6, align 8
  %56 = load %struct.symbol*, %struct.symbol** %6, align 8
  %57 = icmp eq %struct.symbol* %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %46
  %59 = load %struct.symbol*, %struct.symbol** %5, align 8
  %60 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.symbol*, %struct.symbol** %6, align 8
  %65 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63, %58, %46
  %69 = load i64, i64* @SRCONFLICT, align 8
  %70 = load %struct.action*, %struct.action** %4, align 8
  %71 = getelementptr inbounds %struct.action, %struct.action* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %159

74:                                               ; preds = %63
  %75 = load %struct.symbol*, %struct.symbol** %5, align 8
  %76 = getelementptr inbounds %struct.symbol, %struct.symbol* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.symbol*, %struct.symbol** %6, align 8
  %79 = getelementptr inbounds %struct.symbol, %struct.symbol* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i64, i64* @RD_RESOLVED, align 8
  %84 = load %struct.action*, %struct.action** %4, align 8
  %85 = getelementptr inbounds %struct.action, %struct.action* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %158

86:                                               ; preds = %74
  %87 = load %struct.symbol*, %struct.symbol** %5, align 8
  %88 = getelementptr inbounds %struct.symbol, %struct.symbol* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.symbol*, %struct.symbol** %6, align 8
  %91 = getelementptr inbounds %struct.symbol, %struct.symbol* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i64, i64* @SH_RESOLVED, align 8
  %96 = load %struct.action*, %struct.action** %3, align 8
  %97 = getelementptr inbounds %struct.action, %struct.action* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %157

98:                                               ; preds = %86
  %99 = load %struct.symbol*, %struct.symbol** %5, align 8
  %100 = getelementptr inbounds %struct.symbol, %struct.symbol* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.symbol*, %struct.symbol** %6, align 8
  %103 = getelementptr inbounds %struct.symbol, %struct.symbol* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.symbol*, %struct.symbol** %5, align 8
  %108 = getelementptr inbounds %struct.symbol, %struct.symbol* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RIGHT, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i64, i64* @RD_RESOLVED, align 8
  %114 = load %struct.action*, %struct.action** %4, align 8
  %115 = getelementptr inbounds %struct.action, %struct.action* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %156

116:                                              ; preds = %106, %98
  %117 = load %struct.symbol*, %struct.symbol** %5, align 8
  %118 = getelementptr inbounds %struct.symbol, %struct.symbol* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.symbol*, %struct.symbol** %6, align 8
  %121 = getelementptr inbounds %struct.symbol, %struct.symbol* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load %struct.symbol*, %struct.symbol** %5, align 8
  %126 = getelementptr inbounds %struct.symbol, %struct.symbol* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LEFT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i64, i64* @SH_RESOLVED, align 8
  %132 = load %struct.action*, %struct.action** %3, align 8
  %133 = getelementptr inbounds %struct.action, %struct.action* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %155

134:                                              ; preds = %124, %116
  %135 = load %struct.symbol*, %struct.symbol** %5, align 8
  %136 = getelementptr inbounds %struct.symbol, %struct.symbol* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.symbol*, %struct.symbol** %6, align 8
  %139 = getelementptr inbounds %struct.symbol, %struct.symbol* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load %struct.symbol*, %struct.symbol** %5, align 8
  %144 = getelementptr inbounds %struct.symbol, %struct.symbol* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @NONE, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %142, %134
  %149 = phi i1 [ false, %134 ], [ %147, %142 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i64, i64* @ERROR, align 8
  %153 = load %struct.action*, %struct.action** %3, align 8
  %154 = getelementptr inbounds %struct.action, %struct.action* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %148, %130
  br label %156

156:                                              ; preds = %155, %112
  br label %157

157:                                              ; preds = %156, %94
  br label %158

158:                                              ; preds = %157, %82
  br label %159

159:                                              ; preds = %158, %68
  br label %306

160:                                              ; preds = %40, %34
  %161 = load %struct.action*, %struct.action** %3, align 8
  %162 = getelementptr inbounds %struct.action, %struct.action* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @REDUCE, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %241

166:                                              ; preds = %160
  %167 = load %struct.action*, %struct.action** %4, align 8
  %168 = getelementptr inbounds %struct.action, %struct.action* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @REDUCE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %241

172:                                              ; preds = %166
  %173 = load %struct.action*, %struct.action** %3, align 8
  %174 = getelementptr inbounds %struct.action, %struct.action* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load %struct.symbol*, %struct.symbol** %177, align 8
  store %struct.symbol* %178, %struct.symbol** %5, align 8
  %179 = load %struct.action*, %struct.action** %4, align 8
  %180 = getelementptr inbounds %struct.action, %struct.action* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  %184 = load %struct.symbol*, %struct.symbol** %183, align 8
  store %struct.symbol* %184, %struct.symbol** %6, align 8
  %185 = load %struct.symbol*, %struct.symbol** %5, align 8
  %186 = icmp eq %struct.symbol* %185, null
  br i1 %186, label %208, label %187

187:                                              ; preds = %172
  %188 = load %struct.symbol*, %struct.symbol** %6, align 8
  %189 = icmp eq %struct.symbol* %188, null
  br i1 %189, label %208, label %190

190:                                              ; preds = %187
  %191 = load %struct.symbol*, %struct.symbol** %5, align 8
  %192 = getelementptr inbounds %struct.symbol, %struct.symbol* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %190
  %196 = load %struct.symbol*, %struct.symbol** %6, align 8
  %197 = getelementptr inbounds %struct.symbol, %struct.symbol* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %208, label %200

200:                                              ; preds = %195
  %201 = load %struct.symbol*, %struct.symbol** %5, align 8
  %202 = getelementptr inbounds %struct.symbol, %struct.symbol* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.symbol*, %struct.symbol** %6, align 8
  %205 = getelementptr inbounds %struct.symbol, %struct.symbol* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %203, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %200, %195, %190, %187, %172
  %209 = load i64, i64* @RRCONFLICT, align 8
  %210 = load %struct.action*, %struct.action** %4, align 8
  %211 = getelementptr inbounds %struct.action, %struct.action* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %240

214:                                              ; preds = %200
  %215 = load %struct.symbol*, %struct.symbol** %5, align 8
  %216 = getelementptr inbounds %struct.symbol, %struct.symbol* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.symbol*, %struct.symbol** %6, align 8
  %219 = getelementptr inbounds %struct.symbol, %struct.symbol* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %217, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load i64, i64* @RD_RESOLVED, align 8
  %224 = load %struct.action*, %struct.action** %4, align 8
  %225 = getelementptr inbounds %struct.action, %struct.action* %224, i32 0, i32 0
  store i64 %223, i64* %225, align 8
  br label %239

226:                                              ; preds = %214
  %227 = load %struct.symbol*, %struct.symbol** %5, align 8
  %228 = getelementptr inbounds %struct.symbol, %struct.symbol* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.symbol*, %struct.symbol** %6, align 8
  %231 = getelementptr inbounds %struct.symbol, %struct.symbol* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %229, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load i64, i64* @RD_RESOLVED, align 8
  %236 = load %struct.action*, %struct.action** %3, align 8
  %237 = getelementptr inbounds %struct.action, %struct.action* %236, i32 0, i32 0
  store i64 %235, i64* %237, align 8
  br label %238

238:                                              ; preds = %234, %226
  br label %239

239:                                              ; preds = %238, %222
  br label %240

240:                                              ; preds = %239, %208
  br label %305

241:                                              ; preds = %166, %160
  %242 = load %struct.action*, %struct.action** %3, align 8
  %243 = getelementptr inbounds %struct.action, %struct.action* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SH_RESOLVED, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %301, label %247

247:                                              ; preds = %241
  %248 = load %struct.action*, %struct.action** %3, align 8
  %249 = getelementptr inbounds %struct.action, %struct.action* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @RD_RESOLVED, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %301, label %253

253:                                              ; preds = %247
  %254 = load %struct.action*, %struct.action** %3, align 8
  %255 = getelementptr inbounds %struct.action, %struct.action* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @SSCONFLICT, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %301, label %259

259:                                              ; preds = %253
  %260 = load %struct.action*, %struct.action** %3, align 8
  %261 = getelementptr inbounds %struct.action, %struct.action* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @SRCONFLICT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %301, label %265

265:                                              ; preds = %259
  %266 = load %struct.action*, %struct.action** %3, align 8
  %267 = getelementptr inbounds %struct.action, %struct.action* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @RRCONFLICT, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %301, label %271

271:                                              ; preds = %265
  %272 = load %struct.action*, %struct.action** %4, align 8
  %273 = getelementptr inbounds %struct.action, %struct.action* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @SH_RESOLVED, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %301, label %277

277:                                              ; preds = %271
  %278 = load %struct.action*, %struct.action** %4, align 8
  %279 = getelementptr inbounds %struct.action, %struct.action* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @RD_RESOLVED, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %301, label %283

283:                                              ; preds = %277
  %284 = load %struct.action*, %struct.action** %4, align 8
  %285 = getelementptr inbounds %struct.action, %struct.action* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @SSCONFLICT, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %301, label %289

289:                                              ; preds = %283
  %290 = load %struct.action*, %struct.action** %4, align 8
  %291 = getelementptr inbounds %struct.action, %struct.action* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @SRCONFLICT, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %301, label %295

295:                                              ; preds = %289
  %296 = load %struct.action*, %struct.action** %4, align 8
  %297 = getelementptr inbounds %struct.action, %struct.action* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @RRCONFLICT, align 8
  %300 = icmp eq i64 %298, %299
  br label %301

301:                                              ; preds = %295, %289, %283, %277, %271, %265, %259, %253, %247, %241
  %302 = phi i1 [ true, %289 ], [ true, %283 ], [ true, %277 ], [ true, %271 ], [ true, %265 ], [ true, %259 ], [ true, %253 ], [ true, %247 ], [ true, %241 ], [ %300, %295 ]
  %303 = zext i1 %302 to i32
  %304 = call i32 @assert(i32 %303)
  br label %305

305:                                              ; preds = %301, %240
  br label %306

306:                                              ; preds = %305, %159
  %307 = load i32, i32* %7, align 4
  ret i32 %307
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

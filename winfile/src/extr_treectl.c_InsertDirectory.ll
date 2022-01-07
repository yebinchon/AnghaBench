; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_treectl.c_InsertDirectory.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_treectl.c_InsertDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32, i64, %struct.TYPE_9__* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TF_LOWERCASE = common dso_local global i32 0, align 4
@TF_HASCHILDREN = common dso_local global i32 0, align 4
@TF_EXPANDED = common dso_local global i32 0, align 4
@IDCW_TREELISTBOX = common dso_local global i32 0, align 4
@GWL_XTREEMAX = common dso_local global i32 0, align 4
@LB_SETHORIZONTALEXTENT = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@TF_LASTLEVELENTRY = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@LB_INSERTSTRING = common dso_local global i32 0, align 4
@TF_LFN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InsertDirectory(i32 %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, %struct.TYPE_9__** %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca %struct.TYPE_9__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = mul nsw i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %27, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %28, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i64 @lstrlen(i32 %36)
  store i64 %37, i64* %18, align 8
  %38 = load i32, i32* @LPTR, align 4
  %39 = load i64, i64* %18, align 8
  %40 = call i64 @ByteCountOf(i64 %39)
  %41 = add i64 4, %40
  %42 = call i64 @LocalAlloc(i32 %38, i64 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %21, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %8
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %48 = icmp ne %struct.TYPE_9__** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  store i32 0, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %303

52:                                               ; preds = %8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi i64 [ %62, %58 ], [ 0, %63 ]
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  store i64 -1, i64* %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @TF_LOWERCASE, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %64
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @lstrcpy(i32 %83, i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = icmp ne %struct.TYPE_9__* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load i32, i32* @TF_HASCHILDREN, align 4
  %90 = load i32, i32* @TF_EXPANDED, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %88, %80
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @IDCW_TREELISTBOX, align 4
  %99 = call i32 @GetDlgItem(i32 %97, i32 %98)
  store i32 %99, i32* %23, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %101 = load i32, i32* %23, align 4
  %102 = call i64 @GetRealExtent(%struct.TYPE_9__* %100, i32 %101, i32* null, i64* %18)
  store i64 %102, i64* %19, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %104 = call i64 @CALC_EXTENT(%struct.TYPE_9__* %103)
  store i64 %104, i64* %19, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @GWL_XTREEMAX, align 4
  %107 = call i64 @GetWindowLongPtr(i32 %105, i32 %106)
  store i64 %107, i64* %20, align 8
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %20, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %96
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @GWL_XTREEMAX, align 4
  %114 = load i64, i64* %19, align 8
  %115 = call i32 @SetWindowLongPtr(i32 %112, i32 %113, i64 %114)
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* @LB_SETHORIZONTALEXTENT, align 4
  %118 = load i64, i64* %19, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @SendMessage(i32 %116, i32 %117, i32 %119, i64 0)
  br label %121

121:                                              ; preds = %111, %96
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* @LB_GETCOUNT, align 4
  %124 = call i64 @SendMessage(i32 %122, i32 %123, i32 0, i64 0)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %25, align 4
  %126 = load i32, i32* %25, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %208

128:                                              ; preds = %121
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %25, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %25, align 4
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* @LB_GETTEXT, align 4
  %135 = load i32, i32* %25, align 4
  %136 = ptrtoint %struct.TYPE_9__** %22 to i64
  %137 = call i64 @SendMessage(i32 %133, i32 %134, i32 %135, i64 %136)
  %138 = load i64, i64* %16, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %143 = call i32 @CompareNodes(%struct.TYPE_9__* %141, %struct.TYPE_9__* %142)
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32, i32* %25, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %25, align 4
  br label %207

148:                                              ; preds = %140, %128
  br label %149

149:                                              ; preds = %177, %148
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* %24, align 4
  %152 = add nsw i32 %150, %151
  %153 = sdiv i32 %152, 2
  store i32 %153, i32* %26, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* @LB_GETTEXT, align 4
  %156 = load i32, i32* %26, align 4
  %157 = ptrtoint %struct.TYPE_9__** %22 to i64
  %158 = call i64 @SendMessage(i32 %154, i32 %155, i32 %156, i64 %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %161 = call i32 @CompareNodes(%struct.TYPE_9__* %159, %struct.TYPE_9__* %160)
  store i32 %161, i32* %30, align 4
  %162 = load i32, i32* %30, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %149
  %165 = load i32, i32* %26, align 4
  store i32 %165, i32* %24, align 4
  store i32 %165, i32* %25, align 4
  br label %176

166:                                              ; preds = %149
  %167 = load i32, i32* %30, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %26, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %24, align 4
  br label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %26, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %25, align 4
  br label %175

175:                                              ; preds = %172, %169
  br label %176

176:                                              ; preds = %175, %164
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %24, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %149, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* @LB_GETTEXT, align 4
  %184 = load i32, i32* %25, align 4
  %185 = ptrtoint %struct.TYPE_9__** %22 to i64
  %186 = call i64 @SendMessage(i32 %182, i32 %183, i32 %184, i64 %185)
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %189 = call i32 @CompareNodes(%struct.TYPE_9__* %187, %struct.TYPE_9__* %188)
  store i32 %189, i32* %30, align 4
  %190 = load i32, i32* %30, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %181
  %193 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %194 = icmp ne %struct.TYPE_9__** %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %197 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* %196, %struct.TYPE_9__** %197, align 8
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %25, align 4
  store i32 %199, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %303

200:                                              ; preds = %181
  %201 = load i32, i32* %30, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %25, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %25, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %145
  br label %208

208:                                              ; preds = %207, %121
  %209 = load i32, i32* %25, align 4
  %210 = sub nsw i32 %209, 1
  store i32 %210, i32* %26, align 4
  br label %211

211:                                              ; preds = %245, %208
  %212 = load i32, i32* %26, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %246

214:                                              ; preds = %211
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* @LB_GETTEXT, align 4
  %217 = load i32, i32* %26, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %26, align 4
  %219 = ptrtoint %struct.TYPE_9__** %22 to i64
  %220 = call i64 @SendMessage(i32 %215, i32 %216, i32 %217, i64 %219)
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %223, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %214
  %229 = load i32, i32* @TF_LASTLEVELENTRY, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %246

235:                                              ; preds = %214
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp slt i64 %238, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %246

244:                                              ; preds = %235
  br label %245

245:                                              ; preds = %244
  br label %211

246:                                              ; preds = %243, %228, %211
  %247 = load i32, i32* %23, align 4
  %248 = load i32, i32* @LB_GETTEXT, align 4
  %249 = load i32, i32* %25, align 4
  %250 = ptrtoint %struct.TYPE_9__** %22 to i64
  %251 = call i64 @SendMessage(i32 %247, i32 %248, i32 %249, i64 %250)
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* @LB_ERR, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %263, label %255

255:                                              ; preds = %246
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp slt i64 %258, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %255, %246
  %264 = load i32, i32* @TF_LASTLEVELENTRY, align 4
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %263, %255
  %270 = load i64, i64* %17, align 8
  %271 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %285

273:                                              ; preds = %269
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %275 = call i32 @GetTreePath(%struct.TYPE_9__* %274, i32* %35)
  %276 = call i64 @GetFileAttributes(i32* %35)
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 2
  store i64 %276, i64* %278, align 8
  %279 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %280 = icmp eq i64 %276, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %273
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 2
  store i64 0, i64* %283, align 8
  br label %284

284:                                              ; preds = %281, %273
  br label %289

285:                                              ; preds = %269
  %286 = load i64, i64* %17, align 8
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 2
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %285, %284
  %290 = load i32, i32* %23, align 4
  %291 = load i32, i32* @LB_INSERTSTRING, align 4
  %292 = load i32, i32* %25, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %294 = ptrtoint %struct.TYPE_9__* %293 to i64
  %295 = call i64 @SendMessage(i32 %290, i32 %291, i32 %292, i64 %294)
  %296 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %297 = icmp ne %struct.TYPE_9__** %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %289
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %300 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* %299, %struct.TYPE_9__** %300, align 8
  br label %301

301:                                              ; preds = %298, %289
  %302 = load i32, i32* %25, align 4
  store i32 %302, i32* %9, align 4
  store i32 1, i32* %29, align 4
  br label %303

303:                                              ; preds = %301, %198, %51
  %304 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %304)
  %305 = load i32, i32* %9, align 4
  ret i32 %305
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lstrlen(i32) #2

declare dso_local i64 @LocalAlloc(i32, i64) #2

declare dso_local i64 @ByteCountOf(i64) #2

declare dso_local i32 @lstrcpy(i32, i32) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i64 @GetRealExtent(%struct.TYPE_9__*, i32, i32*, i64*) #2

declare dso_local i64 @CALC_EXTENT(%struct.TYPE_9__*) #2

declare dso_local i64 @GetWindowLongPtr(i32, i32) #2

declare dso_local i32 @SetWindowLongPtr(i32, i32, i64) #2

declare dso_local i64 @SendMessage(i32, i32, i32, i64) #2

declare dso_local i32 @CompareNodes(%struct.TYPE_9__*, %struct.TYPE_9__*) #2

declare dso_local i32 @GetTreePath(%struct.TYPE_9__*, i32*) #2

declare dso_local i64 @GetFileAttributes(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

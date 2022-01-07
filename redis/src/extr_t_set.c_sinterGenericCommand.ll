; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_set.c_sinterGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_set.c_sinterGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32* }
%struct.TYPE_42__ = type { i64, %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_41__ = type { i32, i64 }

@server = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@shared = common dso_local global %struct.TYPE_39__ zeroinitializer, align 8
@OBJ_SET = common dso_local global i32 0, align 4
@qsortCompareSetsByCardinality = common dso_local global i32 0, align 4
@OBJ_ENCODING_INTSET = common dso_local global i32 0, align 4
@OBJ_ENCODING_HT = common dso_local global i32 0, align 4
@NOTIFY_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sinterstore\00", align 1
@NOTIFY_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sinterGenericCommand(%struct.TYPE_42__* %0, %struct.TYPE_41__** %1, i64 %2, %struct.TYPE_41__* %3) #0 {
  %5 = alloca %struct.TYPE_42__*, align 8
  %6 = alloca %struct.TYPE_41__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_41__*, align 8
  %9 = alloca %struct.TYPE_41__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_41__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %5, align 8
  store %struct.TYPE_41__** %1, %struct.TYPE_41__*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_41__* %3, %struct.TYPE_41__** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_41__** @zmalloc(i32 %22)
  store %struct.TYPE_41__** %23, %struct.TYPE_41__*** %9, align 8
  store %struct.TYPE_41__* null, %struct.TYPE_41__** %11, align 8
  store i8* null, i8** %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %24

24:                                               ; preds = %101, %4
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %30 = icmp ne %struct.TYPE_41__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_43__*, %struct.TYPE_43__** %33, align 8
  %35 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %6, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %35, i64 %36
  %38 = load %struct.TYPE_41__*, %struct.TYPE_41__** %37, align 8
  %39 = call %struct.TYPE_41__* @lookupKeyWrite(%struct.TYPE_43__* %34, %struct.TYPE_41__* %38)
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_43__*, %struct.TYPE_43__** %42, align 8
  %44 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %6, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %44, i64 %45
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %46, align 8
  %48 = call %struct.TYPE_41__* @lookupKeyRead(%struct.TYPE_43__* %43, %struct.TYPE_41__* %47)
  br label %49

49:                                               ; preds = %40, %31
  %50 = phi %struct.TYPE_41__* [ %39, %31 ], [ %48, %40 ]
  store %struct.TYPE_41__* %50, %struct.TYPE_41__** %18, align 8
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %52 = icmp ne %struct.TYPE_41__* %51, null
  br i1 %52, label %87, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %55 = call i32 @zfree(%struct.TYPE_41__** %54)
  %56 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %57 = icmp ne %struct.TYPE_41__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_43__*, %struct.TYPE_43__** %60, align 8
  %62 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %63 = call i32 @dbDelete(%struct.TYPE_43__* %61, %struct.TYPE_41__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_43__*, %struct.TYPE_43__** %67, align 8
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %70 = call i32 @signalModifiedKey(%struct.TYPE_43__* %68, %struct.TYPE_41__* %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 4
  br label %73

73:                                               ; preds = %65, %58
  %74 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @shared, i32 0, i32 0), align 8
  %76 = call i32 @addReply(%struct.TYPE_42__* %74, i32 %75)
  br label %86

77:                                               ; preds = %53
  %78 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @shared, i32 0, i32 1), align 8
  %80 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @addReply(%struct.TYPE_42__* %78, i32 %84)
  br label %86

86:                                               ; preds = %77, %73
  br label %321

87:                                               ; preds = %49
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %89 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %90 = load i32, i32* @OBJ_SET, align 4
  %91 = call i64 @checkType(%struct.TYPE_42__* %88, %struct.TYPE_41__* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %95 = call i32 @zfree(%struct.TYPE_41__** %94)
  br label %321

96:                                               ; preds = %87
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  %98 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %98, i64 %99
  store %struct.TYPE_41__* %97, %struct.TYPE_41__** %100, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %15, align 8
  br label %24

104:                                              ; preds = %24
  %105 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* @qsortCompareSetsByCardinality, align 4
  %108 = call i32 @qsort(%struct.TYPE_41__** %105, i64 %106, i32 8, i32 %107)
  %109 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %110 = icmp ne %struct.TYPE_41__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %113 = call i8* @addReplyDeferredLen(%struct.TYPE_42__* %112)
  store i8* %113, i8** %14, align 8
  br label %116

114:                                              ; preds = %104
  %115 = call %struct.TYPE_41__* (...) @createIntsetObject()
  store %struct.TYPE_41__* %115, %struct.TYPE_41__** %11, align 8
  br label %116

116:                                              ; preds = %114, %111
  %117 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %117, i64 0
  %119 = load %struct.TYPE_41__*, %struct.TYPE_41__** %118, align 8
  %120 = call i32* @setTypeInitIterator(%struct.TYPE_41__* %119)
  store i32* %120, i32** %10, align 8
  br label %121

121:                                              ; preds = %253, %116
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @setTypeNext(i32* %122, i32* %12, i32* %13)
  store i32 %123, i32* %17, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %254

125:                                              ; preds = %121
  store i64 1, i64* %15, align 8
  br label %126

126:                                              ; preds = %208, %125
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %7, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %211

130:                                              ; preds = %126
  %131 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %132 = load i64, i64* %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %131, i64 %132
  %134 = load %struct.TYPE_41__*, %struct.TYPE_41__** %133, align 8
  %135 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %135, i64 0
  %137 = load %struct.TYPE_41__*, %struct.TYPE_41__** %136, align 8
  %138 = icmp eq %struct.TYPE_41__* %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %208

140:                                              ; preds = %130
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %192

144:                                              ; preds = %140
  %145 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %145, i64 %146
  %148 = load %struct.TYPE_41__*, %struct.TYPE_41__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %144
  %154 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %154, i64 %155
  %157 = load %struct.TYPE_41__*, %struct.TYPE_41__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i32*
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @intsetFind(i32* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %153
  br label %211

165:                                              ; preds = %153, %144
  %166 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %167 = load i64, i64* %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %166, i64 %167
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %190

174:                                              ; preds = %165
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @sdsfromlonglong(i32 %175)
  store i32 %176, i32* %12, align 4
  %177 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %178 = load i64, i64* %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %177, i64 %178
  %180 = load %struct.TYPE_41__*, %struct.TYPE_41__** %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @setTypeIsMember(%struct.TYPE_41__* %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %174
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @sdsfree(i32 %185)
  br label %211

187:                                              ; preds = %174
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @sdsfree(i32 %188)
  br label %190

190:                                              ; preds = %187, %165
  br label %191

191:                                              ; preds = %190
  br label %207

192:                                              ; preds = %140
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %198 = load i64, i64* %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %197, i64 %198
  %200 = load %struct.TYPE_41__*, %struct.TYPE_41__** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @setTypeIsMember(%struct.TYPE_41__* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  br label %211

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %139
  %209 = load i64, i64* %15, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %15, align 8
  br label %126

211:                                              ; preds = %204, %184, %164, %126
  %212 = load i64, i64* %15, align 8
  %213 = load i64, i64* %7, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %253

215:                                              ; preds = %211
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %217 = icmp ne %struct.TYPE_41__* %216, null
  br i1 %217, label %235, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @OBJ_ENCODING_HT, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @sdslen(i32 %225)
  %227 = call i32 @addReplyBulkCBuffer(%struct.TYPE_42__* %223, i32 %224, i32 %226)
  br label %232

228:                                              ; preds = %218
  %229 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @addReplyBulkLongLong(%struct.TYPE_42__* %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %222
  %233 = load i64, i64* %16, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %16, align 8
  br label %252

235:                                              ; preds = %215
  %236 = load i32, i32* %17, align 4
  %237 = load i32, i32* @OBJ_ENCODING_INTSET, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %235
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @sdsfromlonglong(i32 %240)
  store i32 %241, i32* %12, align 4
  %242 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @setTypeAdd(%struct.TYPE_41__* %242, i32 %243)
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @sdsfree(i32 %245)
  br label %251

247:                                              ; preds = %235
  %248 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @setTypeAdd(%struct.TYPE_41__* %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %239
  br label %252

252:                                              ; preds = %251, %232
  br label %253

253:                                              ; preds = %252, %211
  br label %121

254:                                              ; preds = %121
  %255 = load i32*, i32** %10, align 8
  %256 = call i32 @setTypeReleaseIterator(i32* %255)
  %257 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %258 = icmp ne %struct.TYPE_41__* %257, null
  br i1 %258, label %259, label %313

259:                                              ; preds = %254
  %260 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_43__*, %struct.TYPE_43__** %261, align 8
  %263 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %264 = call i32 @dbDelete(%struct.TYPE_43__* %262, %struct.TYPE_41__* %263)
  store i32 %264, i32* %19, align 4
  %265 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %266 = call i64 @setTypeSize(%struct.TYPE_41__* %265)
  %267 = icmp sgt i64 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %259
  %269 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_43__*, %struct.TYPE_43__** %270, align 8
  %272 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %274 = call i32 @dbAdd(%struct.TYPE_43__* %271, %struct.TYPE_41__* %272, %struct.TYPE_41__* %273)
  %275 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %276 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %277 = call i64 @setTypeSize(%struct.TYPE_41__* %276)
  %278 = call i32 @addReplyLongLong(%struct.TYPE_42__* %275, i64 %277)
  %279 = load i32, i32* @NOTIFY_SET, align 4
  %280 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %281 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_43__*, %struct.TYPE_43__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @notifyKeyspaceEvent(i32 %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_41__* %280, i32 %285)
  br label %305

287:                                              ; preds = %259
  %288 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %289 = call i32 @decrRefCount(%struct.TYPE_41__* %288)
  %290 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @shared, i32 0, i32 0), align 8
  %292 = call i32 @addReply(%struct.TYPE_42__* %290, i32 %291)
  %293 = load i32, i32* %19, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %287
  %296 = load i32, i32* @NOTIFY_GENERIC, align 4
  %297 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %298 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_43__*, %struct.TYPE_43__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @notifyKeyspaceEvent(i32 %296, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_41__* %297, i32 %302)
  br label %304

304:                                              ; preds = %295, %287
  br label %305

305:                                              ; preds = %304, %268
  %306 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_43__*, %struct.TYPE_43__** %307, align 8
  %309 = load %struct.TYPE_41__*, %struct.TYPE_41__** %8, align 8
  %310 = call i32 @signalModifiedKey(%struct.TYPE_43__* %308, %struct.TYPE_41__* %309)
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @server, i32 0, i32 0), align 4
  br label %318

313:                                              ; preds = %254
  %314 = load %struct.TYPE_42__*, %struct.TYPE_42__** %5, align 8
  %315 = load i8*, i8** %14, align 8
  %316 = load i64, i64* %16, align 8
  %317 = call i32 @setDeferredSetLen(%struct.TYPE_42__* %314, i8* %315, i64 %316)
  br label %318

318:                                              ; preds = %313, %305
  %319 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %9, align 8
  %320 = call i32 @zfree(%struct.TYPE_41__** %319)
  br label %321

321:                                              ; preds = %318, %93, %86
  ret void
}

declare dso_local %struct.TYPE_41__** @zmalloc(i32) #1

declare dso_local %struct.TYPE_41__* @lookupKeyWrite(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local %struct.TYPE_41__* @lookupKeyRead(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local i32 @zfree(%struct.TYPE_41__**) #1

declare dso_local i32 @dbDelete(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_43__*, %struct.TYPE_41__*) #1

declare dso_local i32 @addReply(%struct.TYPE_42__*, i32) #1

declare dso_local i64 @checkType(%struct.TYPE_42__*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_41__**, i64, i32, i32) #1

declare dso_local i8* @addReplyDeferredLen(%struct.TYPE_42__*) #1

declare dso_local %struct.TYPE_41__* @createIntsetObject(...) #1

declare dso_local i32* @setTypeInitIterator(%struct.TYPE_41__*) #1

declare dso_local i32 @setTypeNext(i32*, i32*, i32*) #1

declare dso_local i32 @intsetFind(i32*, i32) #1

declare dso_local i32 @sdsfromlonglong(i32) #1

declare dso_local i32 @setTypeIsMember(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_42__*, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @addReplyBulkLongLong(%struct.TYPE_42__*, i32) #1

declare dso_local i32 @setTypeAdd(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @setTypeReleaseIterator(i32*) #1

declare dso_local i64 @setTypeSize(%struct.TYPE_41__*) #1

declare dso_local i32 @dbAdd(%struct.TYPE_43__*, %struct.TYPE_41__*, %struct.TYPE_41__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_42__*, i64) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_41__*, i32) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_41__*) #1

declare dso_local i32 @setDeferredSetLen(%struct.TYPE_42__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

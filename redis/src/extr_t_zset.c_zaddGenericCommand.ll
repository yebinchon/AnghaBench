; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zaddGenericCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zaddGenericCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_29__ = type { i64, i64, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_25__** }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i8*, i64 }

@zaddGenericCommand.nanerr = internal global i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [38 x i8] c"resulting score is not a number (NaN)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@ZADD_NX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@ZADD_XX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@ZADD_CH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"incr\00", align 1
@ZADD_INCR = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"XX and NX options at the same time are not compatible\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"INCR option supports a single increment-element pair\00", align 1
@C_OK = common dso_local global i64 0, align 8
@server = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@OBJ_ZSET = common dso_local global i64 0, align 8
@ZADD_ADDED = common dso_local global i32 0, align 4
@ZADD_UPDATED = common dso_local global i32 0, align 4
@ZADD_NOP = common dso_local global i32 0, align 4
@NOTIFY_ZSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"zincr\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"zadd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zaddGenericCommand(%struct.TYPE_26__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i32 %1, i32* %4, align 4
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %26, i64 1
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %5, align 8
  store double 0.000000e+00, double* %8, align 8
  store double* null, double** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 2, i32* %12, align 4
  br label %29

29:                                               ; preds = %80, %2
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %29
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %38, i64 %40
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ZADD_NX, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %80

52:                                               ; preds = %35
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ZADD_XX, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %79

60:                                               ; preds = %52
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @ZADD_CH, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %60
  %69 = load i8*, i8** %16, align 8
  %70 = call i32 @strcasecmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @ZADD_INCR, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %68
  br label %83

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %64
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %29

83:                                               ; preds = %76, %29
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @ZADD_INCR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @ZADD_NX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @ZADD_XX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @ZADD_CH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %20, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = srem i32 %109, 2
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %83
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112, %83
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 1), align 4
  %118 = call i32 @addReply(%struct.TYPE_26__* %116, i32 %117)
  br label %348

119:                                              ; preds = %112
  %120 = load i32, i32* %11, align 4
  %121 = sdiv i32 %120, 2
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %129 = call i32 @addReplyError(%struct.TYPE_26__* %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %348

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %138 = call i32 @addReplyError(%struct.TYPE_26__* %137, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %348

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 8, %141
  %143 = trunc i64 %142 to i32
  %144 = call double* @zmalloc(i32 %143)
  store double* %144, double** %9, align 8
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %170, %139
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %145
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %10, align 4
  %156 = mul nsw i32 %155, 2
  %157 = add nsw i32 %154, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %153, i64 %158
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = load double*, double** %9, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  %165 = call i64 @getDoubleFromObjectOrReply(%struct.TYPE_26__* %150, %struct.TYPE_25__* %160, double* %164, i32* null)
  %166 = load i64, i64* @C_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %149
  br label %322

169:                                              ; preds = %149
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %145

173:                                              ; preds = %145
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %175, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %178 = call %struct.TYPE_25__* @lookupKeyWrite(%struct.TYPE_27__* %176, %struct.TYPE_25__* %177)
  store %struct.TYPE_25__* %178, %struct.TYPE_25__** %6, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = icmp eq %struct.TYPE_25__* %179, null
  br i1 %180, label %181, label %213

181:                                              ; preds = %173
  %182 = load i32, i32* %19, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %294

185:                                              ; preds = %181
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 0), align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %185
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 1), align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %192, i64 %195
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @sdslen(i8* %199)
  %201 = icmp slt i64 %189, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %188, %185
  %203 = call %struct.TYPE_25__* (...) @createZsetObject()
  store %struct.TYPE_25__* %203, %struct.TYPE_25__** %6, align 8
  br label %206

204:                                              ; preds = %188
  %205 = call %struct.TYPE_25__* (...) @createZsetZiplistObject()
  store %struct.TYPE_25__* %205, %struct.TYPE_25__** %6, align 8
  br label %206

206:                                              ; preds = %204, %202
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %208, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %212 = call i32 @dbAdd(%struct.TYPE_27__* %209, %struct.TYPE_25__* %210, %struct.TYPE_25__* %211)
  br label %224

213:                                              ; preds = %173
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @OBJ_ZSET, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 0), align 4
  %222 = call i32 @addReply(%struct.TYPE_26__* %220, i32 %221)
  br label %322

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %206
  store i32 0, i32* %10, align 4
  br label %225

225:                                              ; preds = %285, %224
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %288

229:                                              ; preds = %225
  %230 = load double*, double** %9, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %230, i64 %232
  %234 = load double, double* %233, align 8
  store double %234, double* %8, align 8
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %22, align 4
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  %241 = load i32, i32* %10, align 4
  %242 = mul nsw i32 %241, 2
  %243 = add nsw i32 %240, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %238, i64 %244
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  store i8* %248, i8** %7, align 8
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %250 = load double, double* %8, align 8
  %251 = load i8*, i8** %7, align 8
  %252 = call i32 @zsetAdd(%struct.TYPE_25__* %249, double %250, i8* %251, i32* %22, double* %21)
  store i32 %252, i32* %23, align 4
  %253 = load i32, i32* %23, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %229
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %257 = load i8*, i8** @zaddGenericCommand.nanerr, align 8
  %258 = call i32 @addReplyError(%struct.TYPE_26__* %256, i8* %257)
  br label %322

259:                                              ; preds = %229
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* @ZADD_ADDED, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %267

267:                                              ; preds = %264, %259
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* @ZADD_UPDATED, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i32, i32* %14, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %14, align 4
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i32, i32* %22, align 4
  %277 = load i32, i32* @ZADD_NOP, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* %15, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %15, align 4
  br label %283

283:                                              ; preds = %280, %275
  %284 = load double, double* %21, align 8
  store double %284, double* %8, align 8
  br label %285

285:                                              ; preds = %283
  %286 = load i32, i32* %10, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %10, align 4
  br label %225

288:                                              ; preds = %225
  %289 = load i32, i32* %13, align 4
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %289, %290
  %292 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 2), align 8
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 2), align 8
  br label %294

294:                                              ; preds = %288, %184
  %295 = load i32, i32* %17, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load i32, i32* %15, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %302 = load double, double* %8, align 8
  %303 = call i32 @addReplyDouble(%struct.TYPE_26__* %301, double %302)
  br label %307

304:                                              ; preds = %297
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %306 = call i32 @addReplyNull(%struct.TYPE_26__* %305)
  br label %307

307:                                              ; preds = %304, %300
  br label %321

308:                                              ; preds = %294
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %310 = load i32, i32* %20, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %14, align 4
  %315 = add nsw i32 %313, %314
  br label %318

316:                                              ; preds = %308
  %317 = load i32, i32* %13, align 4
  br label %318

318:                                              ; preds = %316, %312
  %319 = phi i32 [ %315, %312 ], [ %317, %316 ]
  %320 = call i32 @addReplyLongLong(%struct.TYPE_26__* %309, i32 %319)
  br label %321

321:                                              ; preds = %318, %307
  br label %322

322:                                              ; preds = %321, %255, %219, %168
  %323 = load double*, double** %9, align 8
  %324 = call i32 @zfree(double* %323)
  %325 = load i32, i32* %13, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %322
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %348

330:                                              ; preds = %327, %322
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_27__*, %struct.TYPE_27__** %332, align 8
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %335 = call i32 @signalModifiedKey(%struct.TYPE_27__* %333, %struct.TYPE_25__* %334)
  %336 = load i32, i32* @NOTIFY_ZSET, align 4
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @notifyKeyspaceEvent(i32 %336, i8* %340, %struct.TYPE_25__* %341, i32 %346)
  br label %348

348:                                              ; preds = %115, %127, %136, %330, %327
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_26__*, i8*) #1

declare dso_local double* @zmalloc(i32) #1

declare dso_local i64 @getDoubleFromObjectOrReply(%struct.TYPE_26__*, %struct.TYPE_25__*, double*, i32*) #1

declare dso_local %struct.TYPE_25__* @lookupKeyWrite(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local %struct.TYPE_25__* @createZsetObject(...) #1

declare dso_local %struct.TYPE_25__* @createZsetZiplistObject(...) #1

declare dso_local i32 @dbAdd(%struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @zsetAdd(%struct.TYPE_25__*, double, i8*, i32*, double*) #1

declare dso_local i32 @addReplyDouble(%struct.TYPE_26__*, double) #1

declare dso_local i32 @addReplyNull(%struct.TYPE_26__*) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @zfree(double*) #1

declare dso_local i32 @signalModifiedKey(%struct.TYPE_27__*, %struct.TYPE_25__*) #1

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

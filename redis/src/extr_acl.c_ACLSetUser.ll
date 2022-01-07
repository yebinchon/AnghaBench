; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLSetUser.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLSetUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@USER_FLAG_ENABLED = common dso_local global i32 0, align 4
@USER_FLAG_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"allkeys\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"~*\00", align 1
@USER_FLAG_ALLKEYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"resetkeys\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"allcommands\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"+@all\00", align 1
@USER_FLAG_ALLCOMMANDS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"nocommands\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-@all\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"nopass\00", align 1
@USER_FLAG_NOPASS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"resetpass\00", align 1
@HASH_PASSWORD_LEN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLSetUser(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @USER_FLAG_ENABLED, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @USER_FLAG_DISABLED, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %563

44:                                               ; preds = %28
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @USER_FLAG_DISABLED, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @USER_FLAG_ENABLED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %562

60:                                               ; preds = %44
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @strcasecmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @listEmpty(i32 %76)
  br label %561

78:                                               ; preds = %64
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @strcasecmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @listEmpty(i32 %91)
  br label %560

93:                                               ; preds = %78
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @strcasecmp(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memset(i32 %104, i32 255, i32 4)
  %106 = load i32, i32* @USER_FLAG_ALLCOMMANDS, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = call i32 @ACLResetSubcommands(%struct.TYPE_9__* %111)
  br label %559

113:                                              ; preds = %97
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strcasecmp(i8* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @strcasecmp(i8* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memset(i32 %124, i32 0, i32 4)
  %126 = load i32, i32* @USER_FLAG_ALLCOMMANDS, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = call i32 @ACLResetSubcommands(%struct.TYPE_9__* %132)
  br label %558

134:                                              ; preds = %117
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @strcasecmp(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @USER_FLAG_NOPASS, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @listEmpty(i32 %146)
  br label %557

148:                                              ; preds = %134
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @strcasecmp(i8* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @USER_FLAG_NOPASS, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @listEmpty(i32 %161)
  br label %556

163:                                              ; preds = %148
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 62
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 35
  br i1 %174, label %175, label %259

175:                                              ; preds = %169, %163
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 62
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i32, i32* %7, align 4
  %185 = sub nsw i32 %184, 1
  %186 = call i32 @ACLHashPassword(i8* %183, i32 %185)
  store i32 %186, i32* %8, align 4
  br label %235

187:                                              ; preds = %175
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @HASH_PASSWORD_LEN, align 4
  %190 = add nsw i32 %189, 1
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i32, i32* @EBADMSG, align 4
  store i32 %193, i32* @errno, align 4
  %194 = load i32, i32* @C_ERR, align 4
  store i32 %194, i32* %4, align 4
  br label %566

195:                                              ; preds = %187
  store i32 1, i32* %9, align 4
  br label %196

196:                                              ; preds = %226, %195
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* @HASH_PASSWORD_LEN, align 4
  %199 = add nsw i32 %198, 1
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %229

201:                                              ; preds = %196
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  store i8 %206, i8* %10, align 1
  %207 = load i8, i8* %10, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp slt i32 %208, 97
  br i1 %209, label %214, label %210

210:                                              ; preds = %201
  %211 = load i8, i8* %10, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp sgt i32 %212, 102
  br i1 %213, label %214, label %225

214:                                              ; preds = %210, %201
  %215 = load i8, i8* %10, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp slt i32 %216, 48
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i8, i8* %10, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp sgt i32 %220, 57
  br i1 %221, label %222, label %225

222:                                              ; preds = %218, %214
  %223 = load i32, i32* @EBADMSG, align 4
  store i32 %223, i32* @errno, align 4
  %224 = load i32, i32* @C_ERR, align 4
  store i32 %224, i32* %4, align 4
  br label %566

225:                                              ; preds = %218, %210
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %9, align 4
  br label %196

229:                                              ; preds = %196
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i32, i32* %7, align 4
  %233 = sub nsw i32 %232, 1
  %234 = call i32 @sdsnewlen(i8* %231, i32 %233)
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %229, %181
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32* @listSearchKey(i32 %238, i32 %239)
  store i32* %240, i32** %11, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %249

243:                                              ; preds = %235
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @listAddNodeTail(i32 %246, i32 %247)
  br label %252

249:                                              ; preds = %235
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @sdsfree(i32 %250)
  br label %252

252:                                              ; preds = %249, %243
  %253 = load i32, i32* @USER_FLAG_NOPASS, align 4
  %254 = xor i32 %253, -1
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, %254
  store i32 %258, i32* %256, align 4
  br label %555

259:                                              ; preds = %169
  %260 = load i8*, i8** %6, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 60
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 0
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 33
  br i1 %270, label %271, label %317

271:                                              ; preds = %265, %259
  %272 = load i8*, i8** %6, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 60
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = load i8*, i8** %6, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = load i32, i32* %7, align 4
  %281 = sub nsw i32 %280, 1
  %282 = call i32 @ACLHashPassword(i8* %279, i32 %281)
  store i32 %282, i32* %12, align 4
  br label %297

283:                                              ; preds = %271
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* @HASH_PASSWORD_LEN, align 4
  %286 = add nsw i32 %285, 1
  %287 = icmp ne i32 %284, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %283
  %289 = load i32, i32* @EBADMSG, align 4
  store i32 %289, i32* @errno, align 4
  %290 = load i32, i32* @C_ERR, align 4
  store i32 %290, i32* %4, align 4
  br label %566

291:                                              ; preds = %283
  %292 = load i8*, i8** %6, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 1
  %294 = load i32, i32* %7, align 4
  %295 = sub nsw i32 %294, 1
  %296 = call i32 @sdsnewlen(i8* %293, i32 %295)
  store i32 %296, i32* %12, align 4
  br label %297

297:                                              ; preds = %291, %277
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %12, align 4
  %302 = call i32* @listSearchKey(i32 %300, i32 %301)
  store i32* %302, i32** %13, align 8
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @sdsfree(i32 %303)
  %305 = load i32*, i32** %13, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %313

307:                                              ; preds = %297
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %13, align 8
  %312 = call i32 @listDelNode(i32 %310, i32* %311)
  br label %316

313:                                              ; preds = %297
  %314 = load i32, i32* @ENODEV, align 4
  store i32 %314, i32* @errno, align 4
  %315 = load i32, i32* @C_ERR, align 4
  store i32 %315, i32* %4, align 4
  br label %566

316:                                              ; preds = %307
  br label %554

317:                                              ; preds = %265
  %318 = load i8*, i8** %6, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 126
  br i1 %322, label %323, label %362

323:                                              ; preds = %317
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load i32, i32* @EEXIST, align 4
  store i32 %331, i32* @errno, align 4
  %332 = load i32, i32* @C_ERR, align 4
  store i32 %332, i32* %4, align 4
  br label %566

333:                                              ; preds = %323
  %334 = load i8*, i8** %6, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i32, i32* %7, align 4
  %337 = sub nsw i32 %336, 1
  %338 = call i32 @sdsnewlen(i8* %335, i32 %337)
  store i32 %338, i32* %14, align 4
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %14, align 4
  %343 = call i32* @listSearchKey(i32 %341, i32 %342)
  store i32* %343, i32** %15, align 8
  %344 = load i32*, i32** %15, align 8
  %345 = icmp eq i32* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %333
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %14, align 4
  %351 = call i32 @listAddNodeTail(i32 %349, i32 %350)
  br label %355

352:                                              ; preds = %333
  %353 = load i32, i32* %14, align 4
  %354 = call i32 @sdsfree(i32 %353)
  br label %355

355:                                              ; preds = %352, %346
  %356 = load i32, i32* @USER_FLAG_ALLKEYS, align 4
  %357 = xor i32 %356, -1
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = and i32 %360, %357
  store i32 %361, i32* %359, align 4
  br label %553

362:                                              ; preds = %317
  %363 = load i8*, i8** %6, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 0
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp eq i32 %366, 43
  br i1 %367, label %368, label %446

368:                                              ; preds = %362
  %369 = load i8*, i8** %6, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 1
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp ne i32 %372, 64
  br i1 %373, label %374, label %446

374:                                              ; preds = %368
  %375 = load i8*, i8** %6, align 8
  %376 = call i8* @strchr(i8* %375, i8 signext 124)
  %377 = icmp eq i8* %376, null
  br i1 %377, label %378, label %396

378:                                              ; preds = %374
  %379 = load i8*, i8** %6, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 1
  %381 = call i32* @ACLLookupCommand(i8* %380)
  %382 = icmp eq i32* %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %378
  %384 = load i32, i32* @ENOENT, align 4
  store i32 %384, i32* @errno, align 4
  %385 = load i32, i32* @C_ERR, align 4
  store i32 %385, i32* %4, align 4
  br label %566

386:                                              ; preds = %378
  %387 = load i8*, i8** %6, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 1
  %389 = call i64 @ACLGetCommandID(i8* %388)
  store i64 %389, i64* %16, align 8
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %391 = load i64, i64* %16, align 8
  %392 = call i32 @ACLSetUserCommandBit(%struct.TYPE_9__* %390, i64 %391, i32 1)
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %394 = load i64, i64* %16, align 8
  %395 = call i32 @ACLResetSubcommandsForCommand(%struct.TYPE_9__* %393, i64 %394)
  br label %445

396:                                              ; preds = %374
  %397 = load i8*, i8** %6, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 1
  %399 = call i8* @zstrdup(i8* %398)
  store i8* %399, i8** %17, align 8
  %400 = load i8*, i8** %17, align 8
  %401 = call i8* @strchr(i8* %400, i8 signext 124)
  store i8* %401, i8** %18, align 8
  %402 = load i8*, i8** %18, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 0
  store i8 0, i8* %403, align 1
  %404 = load i8*, i8** %18, align 8
  %405 = getelementptr inbounds i8, i8* %404, i32 1
  store i8* %405, i8** %18, align 8
  %406 = load i8*, i8** %17, align 8
  %407 = call i32* @ACLLookupCommand(i8* %406)
  %408 = icmp eq i32* %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %396
  %410 = load i8*, i8** %17, align 8
  %411 = call i32 @zfree(i8* %410)
  %412 = load i32, i32* @ENOENT, align 4
  store i32 %412, i32* @errno, align 4
  %413 = load i32, i32* @C_ERR, align 4
  store i32 %413, i32* %4, align 4
  br label %566

414:                                              ; preds = %396
  %415 = load i8*, i8** %17, align 8
  %416 = call i64 @ACLGetCommandID(i8* %415)
  store i64 %416, i64* %19, align 8
  %417 = load i8*, i8** %18, align 8
  %418 = call i64 @strlen(i8* %417)
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %414
  %421 = load i8*, i8** %17, align 8
  %422 = call i32 @zfree(i8* %421)
  %423 = load i32, i32* @EINVAL, align 4
  store i32 %423, i32* @errno, align 4
  %424 = load i32, i32* @C_ERR, align 4
  store i32 %424, i32* %4, align 4
  br label %566

425:                                              ; preds = %414
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %427 = load i64, i64* %19, align 8
  %428 = call i32 @ACLGetUserCommandBit(%struct.TYPE_9__* %426, i64 %427)
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %435

430:                                              ; preds = %425
  %431 = load i8*, i8** %17, align 8
  %432 = call i32 @zfree(i8* %431)
  %433 = load i32, i32* @EBUSY, align 4
  store i32 %433, i32* @errno, align 4
  %434 = load i32, i32* @C_ERR, align 4
  store i32 %434, i32* %4, align 4
  br label %566

435:                                              ; preds = %425
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %437 = load i64, i64* %19, align 8
  %438 = load i8*, i8** %18, align 8
  %439 = call i32 @ACLAddAllowedSubcommand(%struct.TYPE_9__* %436, i64 %437, i8* %438)
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %441 = load i64, i64* %19, align 8
  %442 = call i32 @ACLSetUserCommandBit(%struct.TYPE_9__* %440, i64 %441, i32 0)
  %443 = load i8*, i8** %17, align 8
  %444 = call i32 @zfree(i8* %443)
  br label %445

445:                                              ; preds = %435, %386
  br label %552

446:                                              ; preds = %368, %362
  %447 = load i8*, i8** %6, align 8
  %448 = getelementptr inbounds i8, i8* %447, i64 0
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp eq i32 %450, 45
  br i1 %451, label %452, label %476

452:                                              ; preds = %446
  %453 = load i8*, i8** %6, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 1
  %455 = load i8, i8* %454, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp ne i32 %456, 64
  br i1 %457, label %458, label %476

458:                                              ; preds = %452
  %459 = load i8*, i8** %6, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 1
  %461 = call i32* @ACLLookupCommand(i8* %460)
  %462 = icmp eq i32* %461, null
  br i1 %462, label %463, label %466

463:                                              ; preds = %458
  %464 = load i32, i32* @ENOENT, align 4
  store i32 %464, i32* @errno, align 4
  %465 = load i32, i32* @C_ERR, align 4
  store i32 %465, i32* %4, align 4
  br label %566

466:                                              ; preds = %458
  %467 = load i8*, i8** %6, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 1
  %469 = call i64 @ACLGetCommandID(i8* %468)
  store i64 %469, i64* %20, align 8
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %471 = load i64, i64* %20, align 8
  %472 = call i32 @ACLSetUserCommandBit(%struct.TYPE_9__* %470, i64 %471, i32 0)
  %473 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %474 = load i64, i64* %20, align 8
  %475 = call i32 @ACLResetSubcommandsForCommand(%struct.TYPE_9__* %473, i64 %474)
  br label %551

476:                                              ; preds = %452, %446
  %477 = load i8*, i8** %6, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 0
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i32
  %481 = icmp eq i32 %480, 43
  br i1 %481, label %488, label %482

482:                                              ; preds = %476
  %483 = load i8*, i8** %6, align 8
  %484 = getelementptr inbounds i8, i8* %483, i64 0
  %485 = load i8, i8* %484, align 1
  %486 = sext i8 %485 to i32
  %487 = icmp eq i32 %486, 45
  br i1 %487, label %488, label %513

488:                                              ; preds = %482, %476
  %489 = load i8*, i8** %6, align 8
  %490 = getelementptr inbounds i8, i8* %489, i64 1
  %491 = load i8, i8* %490, align 1
  %492 = sext i8 %491 to i32
  %493 = icmp eq i32 %492, 64
  br i1 %493, label %494, label %513

494:                                              ; preds = %488
  %495 = load i8*, i8** %6, align 8
  %496 = getelementptr inbounds i8, i8* %495, i64 0
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  %499 = icmp eq i32 %498, 43
  %500 = zext i1 %499 to i64
  %501 = select i1 %499, i32 1, i32 0
  store i32 %501, i32* %21, align 4
  %502 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %503 = load i8*, i8** %6, align 8
  %504 = getelementptr inbounds i8, i8* %503, i64 2
  %505 = load i32, i32* %21, align 4
  %506 = call i32 @ACLSetUserCommandBitsForCategory(%struct.TYPE_9__* %502, i8* %504, i32 %505)
  %507 = load i32, i32* @C_ERR, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %512

509:                                              ; preds = %494
  %510 = load i32, i32* @ENOENT, align 4
  store i32 %510, i32* @errno, align 4
  %511 = load i32, i32* @C_ERR, align 4
  store i32 %511, i32* %4, align 4
  br label %566

512:                                              ; preds = %494
  br label %550

513:                                              ; preds = %488, %482
  %514 = load i8*, i8** %6, align 8
  %515 = call i32 @strcasecmp(i8* %514, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %546, label %517

517:                                              ; preds = %513
  %518 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %519 = call i32 @ACLSetUser(%struct.TYPE_9__* %518, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %520 = sext i32 %519 to i64
  %521 = load i64, i64* @C_OK, align 8
  %522 = icmp eq i64 %520, %521
  %523 = zext i1 %522 to i32
  %524 = call i32 @serverAssert(i32 %523)
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %526 = call i32 @ACLSetUser(%struct.TYPE_9__* %525, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %527 = sext i32 %526 to i64
  %528 = load i64, i64* @C_OK, align 8
  %529 = icmp eq i64 %527, %528
  %530 = zext i1 %529 to i32
  %531 = call i32 @serverAssert(i32 %530)
  %532 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %533 = call i32 @ACLSetUser(%struct.TYPE_9__* %532, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %534 = sext i32 %533 to i64
  %535 = load i64, i64* @C_OK, align 8
  %536 = icmp eq i64 %534, %535
  %537 = zext i1 %536 to i32
  %538 = call i32 @serverAssert(i32 %537)
  %539 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %540 = call i32 @ACLSetUser(%struct.TYPE_9__* %539, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %541 = sext i32 %540 to i64
  %542 = load i64, i64* @C_OK, align 8
  %543 = icmp eq i64 %541, %542
  %544 = zext i1 %543 to i32
  %545 = call i32 @serverAssert(i32 %544)
  br label %549

546:                                              ; preds = %513
  %547 = load i32, i32* @EINVAL, align 4
  store i32 %547, i32* @errno, align 4
  %548 = load i32, i32* @C_ERR, align 4
  store i32 %548, i32* %4, align 4
  br label %566

549:                                              ; preds = %517
  br label %550

550:                                              ; preds = %549, %512
  br label %551

551:                                              ; preds = %550, %466
  br label %552

552:                                              ; preds = %551, %445
  br label %553

553:                                              ; preds = %552, %355
  br label %554

554:                                              ; preds = %553, %316
  br label %555

555:                                              ; preds = %554, %252
  br label %556

556:                                              ; preds = %555, %152
  br label %557

557:                                              ; preds = %556, %138
  br label %558

558:                                              ; preds = %557, %121
  br label %559

559:                                              ; preds = %558, %101
  br label %560

560:                                              ; preds = %559, %82
  br label %561

561:                                              ; preds = %560, %68
  br label %562

562:                                              ; preds = %561, %48
  br label %563

563:                                              ; preds = %562, %32
  %564 = load i64, i64* @C_OK, align 8
  %565 = trunc i64 %564 to i32
  store i32 %565, i32* %4, align 4
  br label %566

566:                                              ; preds = %563, %546, %509, %463, %430, %420, %409, %383, %330, %313, %288, %222, %192
  %567 = load i32, i32* %4, align 4
  ret i32 %567
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @listEmpty(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ACLResetSubcommands(%struct.TYPE_9__*) #1

declare dso_local i32 @ACLHashPassword(i8*, i32) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32* @listSearchKey(i32, i32) #1

declare dso_local i32 @listAddNodeTail(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @ACLLookupCommand(i8*) #1

declare dso_local i64 @ACLGetCommandID(i8*) #1

declare dso_local i32 @ACLSetUserCommandBit(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @ACLResetSubcommandsForCommand(%struct.TYPE_9__*, i64) #1

declare dso_local i8* @zstrdup(i8*) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @ACLGetUserCommandBit(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ACLAddAllowedSubcommand(%struct.TYPE_9__*, i64, i8*) #1

declare dso_local i32 @ACLSetUserCommandBitsForCategory(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @serverAssert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

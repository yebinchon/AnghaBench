; ModuleID = '/home/carl/AnghaBench/redis/src/extr_cluster.c_restoreCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_cluster.c_restoreCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__**, i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"absttl\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"idletime\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid IDLETIME value, must be >= 0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Invalid FREQ value, must be >= 0 and <= 255\00", align 1
@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Invalid TTL value, must be >= 0\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"DUMP payload version or checksum are wrong\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Bad data format\00", align 1
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restoreCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i64 -1, i64* %4, align 8
  store i64 -1, i64* %5, align 8
  store i64 -1, i64* %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 4, i32* %8, align 4
  br label %14

14:                                               ; preds = %146, %1
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %149

20:                                               ; preds = %14
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %29, i64 %31
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcasecmp(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %145

39:                                               ; preds = %20
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %42, i64 %44
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcasecmp(i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %144

52:                                               ; preds = %39
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %55, i64 %57
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcasecmp(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %94, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %13, align 4
  %66 = icmp sge i32 %65, 1
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i64, i64* %4, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %74, i64 %77
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_16__* %71, %struct.TYPE_17__* %79, i64* %5, i32* null)
  %81 = load i64, i64* @C_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %295

84:                                               ; preds = %70
  %85 = load i64, i64* %5, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = call i32 @addReplyError(%struct.TYPE_16__* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %295

90:                                               ; preds = %84
  %91 = call i64 (...) @LRU_CLOCK()
  store i64 %91, i64* %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %143

94:                                               ; preds = %67, %64, %52
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %97, i64 %99
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strcasecmp(i32 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %138, label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %13, align 4
  %108 = icmp sge i32 %107, 1
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load i64, i64* %5, align 8
  %111 = icmp eq i64 %110, -1
  br i1 %111, label %112, label %138

112:                                              ; preds = %109
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %116, i64 %119
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_16__* %113, %struct.TYPE_17__* %121, i64* %4, i32* null)
  %123 = load i64, i64* @C_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %295

126:                                              ; preds = %112
  %127 = load i64, i64* %4, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %4, align 8
  %131 = icmp sgt i64 %130, 255
  br i1 %131, label %132, label %135

132:                                              ; preds = %129, %126
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = call i32 @addReplyError(%struct.TYPE_16__* %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %295

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %142

138:                                              ; preds = %109, %106, %94
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 2), align 4
  %141 = call i32 @addReply(%struct.TYPE_16__* %139, i32 %140)
  br label %295

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %90
  br label %144

144:                                              ; preds = %143, %51
  br label %145

145:                                              ; preds = %144, %38
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %14

149:                                              ; preds = %14
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %158, i64 1
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %159, align 8
  %161 = call i32* @lookupKeyWrite(i32 %155, %struct.TYPE_17__* %160)
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %152
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 1), align 4
  %166 = call i32 @addReply(%struct.TYPE_16__* %164, i32 %165)
  br label %295

167:                                              ; preds = %152, %149
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %171, i64 2
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_16__* %168, %struct.TYPE_17__* %173, i64* %3, i32* null)
  %175 = load i64, i64* @C_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %295

178:                                              ; preds = %167
  %179 = load i64, i64* %3, align 8
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %183 = call i32 @addReplyError(%struct.TYPE_16__* %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %295

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %188, i64 3
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %195, i64 3
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @sdslen(i32 %199)
  %201 = call i64 @verifyDumpPayload(i32 %192, i32 %200)
  %202 = load i64, i64* @C_ERR, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %185
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %206 = call i32 @addReplyError(%struct.TYPE_16__* %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %295

207:                                              ; preds = %185
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %210, i64 3
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @rioInitWithBuffer(i32* %7, i32 %214)
  %216 = call i32 @rdbLoadObjectType(i32* %7)
  store i32 %216, i32* %9, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %227, label %218

218:                                              ; preds = %207
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %222, i64 1
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %223, align 8
  %225 = call i32* @rdbLoadObject(i32 %219, i32* %7, %struct.TYPE_17__* %224)
  store i32* %225, i32** %12, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %218, %207
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %229 = call i32 @addReplyError(%struct.TYPE_16__* %228, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  br label %295

230:                                              ; preds = %218
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %239, i64 1
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = call i32 @dbDelete(i32 %236, %struct.TYPE_17__* %241)
  br label %243

243:                                              ; preds = %233, %230
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %249, i64 1
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = load i32*, i32** %12, align 8
  %253 = call i32 @dbAdd(i32 %246, %struct.TYPE_17__* %251, i32* %252)
  %254 = load i64, i64* %3, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %243
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %256
  %260 = call i64 (...) @mstime()
  %261 = load i64, i64* %3, align 8
  %262 = add nsw i64 %261, %260
  store i64 %262, i64* %3, align 8
  br label %263

263:                                              ; preds = %259, %256
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %270, i64 1
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %271, align 8
  %273 = load i64, i64* %3, align 8
  %274 = call i32 @setExpire(%struct.TYPE_16__* %264, i32 %267, %struct.TYPE_17__* %272, i64 %273)
  br label %275

275:                                              ; preds = %263, %243
  %276 = load i32*, i32** %12, align 8
  %277 = load i64, i64* %4, align 8
  %278 = load i64, i64* %5, align 8
  %279 = load i64, i64* %6, align 8
  %280 = call i32 @objectSetLRUOrLFU(i32* %276, i64 %277, i64 %278, i64 %279)
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %286, i64 1
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %287, align 8
  %289 = call i32 @signalModifiedKey(i32 %283, %struct.TYPE_17__* %288)
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %292 = call i32 @addReply(%struct.TYPE_16__* %290, i32 %291)
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 4
  br label %295

295:                                              ; preds = %275, %227, %204, %181, %177, %163, %138, %132, %125, %87, %83
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_16__*, %struct.TYPE_17__*, i64*, i32*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @LRU_CLOCK(...) #1

declare dso_local i32 @addReply(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @lookupKeyWrite(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @verifyDumpPayload(i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @rioInitWithBuffer(i32*, i32) #1

declare dso_local i32 @rdbLoadObjectType(i32*) #1

declare dso_local i32* @rdbLoadObject(i32, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @dbDelete(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @dbAdd(i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @setExpire(%struct.TYPE_16__*, i32, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @objectSetLRUOrLFU(i32*, i64, i64, i64) #1

declare dso_local i32 @signalModifiedKey(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

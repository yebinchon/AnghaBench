; ModuleID = '/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_processLineItem.c'
source_filename = "/home/carl/AnghaBench/redis/deps/hiredis/extr_read.c_processLineItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8*, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i8* (%struct.TYPE_16__*, i8*, i32)*, i8* (%struct.TYPE_16__*, i32)*, i8* (%struct.TYPE_16__*)*, i8* (%struct.TYPE_16__*, double, i8*, i32)*, i8* (%struct.TYPE_16__*, i64)* }
%struct.TYPE_16__ = type { i64 }

@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@REDIS_ERR = common dso_local global i64 0, align 8
@REDIS_ERR_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bad integer value\00", align 1
@REDIS_REPLY_DOUBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Double value is too large\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",inf\00", align 1
@INFINITY = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c",-inf\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Bad double value\00", align 1
@REDIS_REPLY_NIL = common dso_local global i64 0, align 8
@REDIS_REPLY_BOOL = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @processLineItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processLineItem(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [326 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i64 %18
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %4, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call i8* @readLine(%struct.TYPE_15__* %20, i32* %7)
  store i8* %21, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %281

23:                                               ; preds = %1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  %39 = load i8* (%struct.TYPE_16__*, i64)*, i8* (%struct.TYPE_16__*, i64)** %38, align 8
  %40 = icmp ne i8* (%struct.TYPE_16__*, i64)* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @string2ll(i8* %42, i32 %43, i64* %8)
  %45 = load i64, i64* @REDIS_ERR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %50 = call i32 @__redisReaderSetError(%struct.TYPE_15__* %48, i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* @REDIS_ERR, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %284

53:                                               ; preds = %41
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load i8* (%struct.TYPE_16__*, i64)*, i8* (%struct.TYPE_16__*, i64)** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i8* %58(%struct.TYPE_16__* %59, i64 %60)
  store i8* %61, i8** %5, align 8
  br label %65

62:                                               ; preds = %34, %29
  %63 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %62, %53
  br label %260

66:                                               ; preds = %23
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @REDIS_REPLY_DOUBLE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %154

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = icmp ne %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %150

77:                                               ; preds = %72
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  %82 = load i8* (%struct.TYPE_16__*, double, i8*, i32)*, i8* (%struct.TYPE_16__*, double, i8*, i32)** %81, align 8
  %83 = icmp ne i8* (%struct.TYPE_16__*, double, i8*, i32)* %82, null
  br i1 %83, label %84, label %150

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp uge i64 %86, 326
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %91 = call i32 @__redisReaderSetError(%struct.TYPE_15__* %89, i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i64, i64* @REDIS_ERR, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %2, align 4
  br label %284

94:                                               ; preds = %84
  %95 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @memcpy(i8* %95, i8* %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 %100
  store i8 0, i8* %101, align 1
  %102 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %103 = call i64 @strcasecmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load double, double* @INFINITY, align 8
  store double %106, double* %11, align 8
  br label %139

107:                                              ; preds = %94
  %108 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %109 = call i64 @strcasecmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load double, double* @INFINITY, align 8
  %113 = fneg double %112
  store double %113, double* %11, align 8
  br label %138

114:                                              ; preds = %107
  %115 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %116 = call double @strtod(i8* %115, i8** %10)
  store double %116, double* %11, align 8
  %117 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load double, double* %11, align 8
  %129 = call i64 @isnan(double %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127, %121, %114
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = load i32, i32* @REDIS_ERR_PROTOCOL, align 4
  %134 = call i32 @__redisReaderSetError(%struct.TYPE_15__* %132, i32 %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i64, i64* @REDIS_ERR, align 8
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %2, align 4
  br label %284

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %111
  br label %139

139:                                              ; preds = %138, %105
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = load i8* (%struct.TYPE_16__*, double, i8*, i32)*, i8* (%struct.TYPE_16__*, double, i8*, i32)** %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = load double, double* %11, align 8
  %147 = getelementptr inbounds [326 x i8], [326 x i8]* %9, i64 0, i64 0
  %148 = load i32, i32* %7, align 4
  %149 = call i8* %144(%struct.TYPE_16__* %145, double %146, i8* %147, i32 %148)
  store i8* %149, i8** %5, align 8
  br label %153

150:                                              ; preds = %77, %72
  %151 = load i64, i64* @REDIS_REPLY_DOUBLE, align 8
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %5, align 8
  br label %153

153:                                              ; preds = %150, %139
  br label %259

154:                                              ; preds = %66
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %184

160:                                              ; preds = %154
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = icmp ne %struct.TYPE_14__* %163, null
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i8* (%struct.TYPE_16__*)*, i8* (%struct.TYPE_16__*)** %169, align 8
  %171 = icmp ne i8* (%struct.TYPE_16__*)* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i8* (%struct.TYPE_16__*)*, i8* (%struct.TYPE_16__*)** %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = call i8* %177(%struct.TYPE_16__* %178)
  store i8* %179, i8** %5, align 8
  br label %183

180:                                              ; preds = %165, %160
  %181 = load i64, i64* @REDIS_REPLY_NIL, align 8
  %182 = inttoptr i64 %181 to i8*
  store i8* %182, i8** %5, align 8
  br label %183

183:                                              ; preds = %180, %172
  br label %258

184:                                              ; preds = %154
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @REDIS_REPLY_BOOL, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %229

190:                                              ; preds = %184
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 116
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 84
  br label %202

202:                                              ; preds = %196, %190
  %203 = phi i1 [ true, %190 ], [ %201, %196 ]
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %12, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = icmp ne %struct.TYPE_14__* %207, null
  br i1 %208, label %209, label %225

209:                                              ; preds = %202
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load i8* (%struct.TYPE_16__*, i32)*, i8* (%struct.TYPE_16__*, i32)** %213, align 8
  %215 = icmp ne i8* (%struct.TYPE_16__*, i32)* %214, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %209
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i8* (%struct.TYPE_16__*, i32)*, i8* (%struct.TYPE_16__*, i32)** %220, align 8
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call i8* %221(%struct.TYPE_16__* %222, i32 %223)
  store i8* %224, i8** %5, align 8
  br label %228

225:                                              ; preds = %209, %202
  %226 = load i64, i64* @REDIS_REPLY_BOOL, align 8
  %227 = inttoptr i64 %226 to i8*
  store i8* %227, i8** %5, align 8
  br label %228

228:                                              ; preds = %225, %216
  br label %257

229:                                              ; preds = %184
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = icmp ne %struct.TYPE_14__* %232, null
  br i1 %233, label %234, label %251

234:                                              ; preds = %229
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i8* (%struct.TYPE_16__*, i8*, i32)*, i8* (%struct.TYPE_16__*, i8*, i32)** %238, align 8
  %240 = icmp ne i8* (%struct.TYPE_16__*, i8*, i32)* %239, null
  br i1 %240, label %241, label %251

241:                                              ; preds = %234
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = load i8* (%struct.TYPE_16__*, i8*, i32)*, i8* (%struct.TYPE_16__*, i8*, i32)** %245, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = load i32, i32* %7, align 4
  %250 = call i8* %246(%struct.TYPE_16__* %247, i8* %248, i32 %249)
  store i8* %250, i8** %5, align 8
  br label %256

251:                                              ; preds = %234, %229
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i8*
  store i8* %255, i8** %5, align 8
  br label %256

256:                                              ; preds = %251, %241
  br label %257

257:                                              ; preds = %256, %228
  br label %258

258:                                              ; preds = %257, %183
  br label %259

259:                                              ; preds = %258, %153
  br label %260

260:                                              ; preds = %259, %65
  %261 = load i8*, i8** %5, align 8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %265 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_15__* %264)
  %266 = load i64, i64* @REDIS_ERR, align 8
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %2, align 4
  br label %284

268:                                              ; preds = %260
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = load i8*, i8** %5, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %273, %268
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %279 = call i32 @moveToNextTask(%struct.TYPE_15__* %278)
  %280 = load i32, i32* @REDIS_OK, align 4
  store i32 %280, i32* %2, align 4
  br label %284

281:                                              ; preds = %1
  %282 = load i64, i64* @REDIS_ERR, align 8
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %281, %277, %263, %131, %88, %47
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i8* @readLine(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @__redisReaderSetError(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_15__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

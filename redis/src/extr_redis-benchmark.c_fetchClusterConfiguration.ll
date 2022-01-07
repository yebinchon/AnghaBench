; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_fetchClusterConfiguration.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_fetchClusterConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, i32, i64 }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_16__ = type { i8*, i32, i8*, i32, i32, i32*, i64, i8**, i8** }

@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not connect to Redis at \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s:%d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"CLUSTER NODES\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Cluster node %s:%d replied with error:\0A%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Cluster node %s replied with error:\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Invalid CLUSTER NODES reply: missing flags.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"myself\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Invalid CLUSTER NODES reply: missing addr.\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"->-\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"-<-\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"WARNING: master node %s:%d has no slots, skipping...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fetchClusterConfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetchClusterConfiguration() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %2, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %0
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %38 = call %struct.TYPE_15__* @redisConnect(i8* %36, i32 %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %2, align 8
  br label %42

39:                                               ; preds = %0
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %41 = call %struct.TYPE_15__* @redisConnectUnix(i8* %40)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %2, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55, i8* %58)
  br label %67

60:                                               ; preds = %47
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %65)
  br label %67

67:                                               ; preds = %60, %52
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %42
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %72 = call %struct.TYPE_16__* @createClusterNode(i8* %70, i32 %71)
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %4, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = icmp ne %struct.TYPE_16__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i32 0, i32* %1, align 4
  br label %473

76:                                               ; preds = %69
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = call %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %3, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = icmp ne %struct.TYPE_14__* %79, null
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %1, align 4
  %82 = load i32, i32* %1, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  br label %473

85:                                               ; preds = %76
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %85
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 1), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 2), align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %99, i32 %100, i8* %103)
  br label %112

105:                                              ; preds = %94
  %106 = load i32, i32* @stderr, align 4
  %107 = load i8*, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %107, i8* %110)
  br label %112

112:                                              ; preds = %105, %97
  br label %473

113:                                              ; preds = %85
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %5, align 8
  br label %117

117:                                              ; preds = %471, %458, %180, %113
  %118 = load i8*, i8** %5, align 8
  %119 = call i8* @strstr(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %119, i8** %6, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %472

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  store i8 0, i8* %122, align 1
  %123 = load i8*, i8** %5, align 8
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %149, %121
  %127 = load i8*, i8** %7, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 32)
  store i8* %128, i8** %6, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %150

130:                                              ; preds = %126
  %131 = load i8*, i8** %6, align 8
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %7, align 8
  store i8* %132, i8** %13, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  store i8* %134, i8** %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  switch i32 %135, label %145 [
    i32 0, label %137
    i32 1, label %139
    i32 2, label %141
    i32 3, label %143
  ]

137:                                              ; preds = %130
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %8, align 8
  br label %145

139:                                              ; preds = %130
  %140 = load i8*, i8** %13, align 8
  store i8* %140, i8** %9, align 8
  br label %145

141:                                              ; preds = %130
  %142 = load i8*, i8** %13, align 8
  store i8* %142, i8** %10, align 8
  br label %145

143:                                              ; preds = %130
  %144 = load i8*, i8** %13, align 8
  store i8* %144, i8** %11, align 8
  br label %145

145:                                              ; preds = %130, %143, %141, %139, %137
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 8
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %150

149:                                              ; preds = %145
  br label %126

150:                                              ; preds = %148, %126
  %151 = load i8*, i8** %10, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @stderr, align 4
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %473

156:                                              ; preds = %150
  %157 = load i8*, i8** %10, align 8
  %158 = call i8* @strstr(i8* %157, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %159 = icmp ne i8* %158, null
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %14, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = call i8* @strstr(i8* %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %163 = icmp ne i8* %162, null
  br i1 %163, label %175, label %164

164:                                              ; preds = %156
  %165 = load i8*, i8** %11, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 45
  br label %173

173:                                              ; preds = %167, %164
  %174 = phi i1 [ false, %164 ], [ %172, %167 ]
  br label %175

175:                                              ; preds = %173, %156
  %176 = phi i1 [ true, %156 ], [ %174, %173 ]
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %117

181:                                              ; preds = %175
  %182 = load i8*, i8** %9, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @stderr, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %473

187:                                              ; preds = %181
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %188 = load i8*, i8** %9, align 8
  %189 = call i8* @strchr(i8* %188, i8 signext 58)
  store i8* %189, i8** %19, align 8
  %190 = load i8*, i8** %19, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %205

192:                                              ; preds = %187
  %193 = load i8*, i8** %19, align 8
  store i8 0, i8* %193, align 1
  %194 = load i8*, i8** %9, align 8
  store i8* %194, i8** %17, align 8
  %195 = load i8*, i8** %19, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  store i8* %196, i8** %9, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = call i8* @strchr(i8* %197, i8 signext 64)
  store i8* %198, i8** %19, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i8*, i8** %19, align 8
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %200, %192
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 @atoi(i8* %203)
  store i32 %204, i32* %18, align 4
  br label %205

205:                                              ; preds = %202, %187
  %206 = load i32, i32* %14, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %205
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %209, %struct.TYPE_16__** %16, align 8
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = icmp eq i8* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load i8*, i8** %17, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i8*, i8** %17, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %217, %214, %208
  br label %230

225:                                              ; preds = %205
  %226 = load i8*, i8** %17, align 8
  %227 = call i8* @sdsnew(i8* %226)
  %228 = load i32, i32* %18, align 4
  %229 = call %struct.TYPE_16__* @createClusterNode(i8* %227, i32 %228)
  store %struct.TYPE_16__* %229, %struct.TYPE_16__** %16, align 8
  br label %230

230:                                              ; preds = %225, %224
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %232 = icmp eq %struct.TYPE_16__* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  store i32 0, i32* %1, align 4
  br label %473

234:                                              ; preds = %230
  %235 = load i8*, i8** %8, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load i8*, i8** %8, align 8
  %239 = call i8* @sdsnew(i8* %238)
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  br label %242

242:                                              ; preds = %237, %234
  %243 = load i32, i32* %12, align 4
  %244 = icmp eq i32 %243, 8
  br i1 %244, label %245, label %453

245:                                              ; preds = %242
  %246 = load i8*, i8** %7, align 8
  %247 = call i32 @strlen(i8* %246)
  store i32 %247, i32* %20, align 4
  br label %248

248:                                              ; preds = %451, %245
  %249 = load i32, i32* %20, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %452

251:                                              ; preds = %248
  %252 = load i8*, i8** %7, align 8
  %253 = call i8* @strchr(i8* %252, i8 signext 32)
  store i8* %253, i8** %6, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = icmp eq i8* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i8*, i8** %7, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8* %260, i8** %6, align 8
  br label %261

261:                                              ; preds = %256, %251
  %262 = load i8*, i8** %6, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = load i32, i32* %20, align 4
  %268 = sext i32 %267 to i64
  %269 = sub nsw i64 %268, %266
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %20, align 4
  %271 = load i8*, i8** %7, align 8
  store i8* %271, i8** %21, align 8
  %272 = load i8*, i8** %6, align 8
  store i8 0, i8* %272, align 1
  %273 = load i32, i32* %20, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %261
  %276 = load i8*, i8** %6, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 1
  store i8* %277, i8** %7, align 8
  %278 = load i32, i32* %20, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %20, align 4
  br label %282

280:                                              ; preds = %261
  %281 = load i8*, i8** %6, align 8
  store i8* %281, i8** %7, align 8
  br label %282

282:                                              ; preds = %280, %275
  store i8* null, i8** %22, align 8
  %283 = load i8*, i8** %21, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 91
  br i1 %287, label %288, label %404

288:                                              ; preds = %282
  %289 = load i8*, i8** %21, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %21, align 8
  %291 = load i8*, i8** %21, align 8
  %292 = call i8* @strstr(i8* %291, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  store i8* %292, i8** %6, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %346

294:                                              ; preds = %288
  %295 = load i8*, i8** %6, align 8
  store i8 0, i8* %295, align 1
  %296 = load i8*, i8** %6, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 3
  store i8* %297, i8** %6, align 8
  %298 = load i8*, i8** %6, align 8
  %299 = call i8* @strchr(i8* %298, i8 signext 93)
  store i8* %299, i8** %23, align 8
  %300 = load i8*, i8** %23, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %294
  %303 = load i8*, i8** %23, align 8
  store i8 0, i8* %303, align 1
  br label %304

304:                                              ; preds = %302, %294
  %305 = load i8*, i8** %21, align 8
  %306 = call i8* @sdsnew(i8* %305)
  store i8* %306, i8** %24, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = call i8* @sdsnew(i8* %307)
  store i8* %308, i8** %25, align 8
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, 2
  store i32 %312, i32* %310, align 8
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 8
  %315 = load i8**, i8*** %314, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = mul i64 %319, 8
  %321 = trunc i64 %320 to i32
  %322 = call i8* @zrealloc(i8** %315, i32 %321)
  %323 = bitcast i8* %322 to i8**
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 8
  store i8** %323, i8*** %325, align 8
  %326 = load i8*, i8** %24, align 8
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 8
  %329 = load i8**, i8*** %328, align 8
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = sub nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %329, i64 %334
  store i8* %326, i8** %335, align 8
  %336 = load i8*, i8** %25, align 8
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 8
  %339 = load i8**, i8*** %338, align 8
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %339, i64 %344
  store i8* %336, i8** %345, align 8
  br label %403

346:                                              ; preds = %288
  %347 = load i8*, i8** %21, align 8
  %348 = call i8* @strstr(i8* %347, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i8* %348, i8** %6, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %402

350:                                              ; preds = %346
  %351 = load i8*, i8** %6, align 8
  store i8 0, i8* %351, align 1
  %352 = load i8*, i8** %6, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 3
  store i8* %353, i8** %6, align 8
  %354 = load i8*, i8** %6, align 8
  %355 = call i8* @strchr(i8* %354, i8 signext 93)
  store i8* %355, i8** %26, align 8
  %356 = load i8*, i8** %26, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %350
  %359 = load i8*, i8** %26, align 8
  store i8 0, i8* %359, align 1
  br label %360

360:                                              ; preds = %358, %350
  %361 = load i8*, i8** %21, align 8
  %362 = call i8* @sdsnew(i8* %361)
  store i8* %362, i8** %27, align 8
  %363 = load i8*, i8** %6, align 8
  %364 = call i8* @sdsnew(i8* %363)
  store i8* %364, i8** %28, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, 2
  store i32 %368, i32* %366, align 4
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 7
  %371 = load i8**, i8*** %370, align 8
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = mul i64 %375, 8
  %377 = trunc i64 %376 to i32
  %378 = call i8* @zrealloc(i8** %371, i32 %377)
  %379 = bitcast i8* %378 to i8**
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 7
  store i8** %379, i8*** %381, align 8
  %382 = load i8*, i8** %27, align 8
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 7
  %385 = load i8**, i8*** %384, align 8
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %388, 2
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8*, i8** %385, i64 %390
  store i8* %382, i8** %391, align 8
  %392 = load i8*, i8** %28, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 7
  %395 = load i8**, i8*** %394, align 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %395, i64 %400
  store i8* %392, i8** %401, align 8
  br label %402

402:                                              ; preds = %360, %346
  br label %403

403:                                              ; preds = %402, %304
  br label %451

404:                                              ; preds = %282
  %405 = load i8*, i8** %21, align 8
  %406 = call i8* @strchr(i8* %405, i8 signext 45)
  store i8* %406, i8** %22, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %433

408:                                              ; preds = %404
  %409 = load i8*, i8** %22, align 8
  store i8* %409, i8** %6, align 8
  %410 = load i8*, i8** %6, align 8
  store i8 0, i8* %410, align 1
  %411 = load i8*, i8** %21, align 8
  %412 = call i32 @atoi(i8* %411)
  store i32 %412, i32* %29, align 4
  %413 = load i8*, i8** %6, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 1
  %415 = call i32 @atoi(i8* %414)
  store i32 %415, i32* %30, align 4
  br label %416

416:                                              ; preds = %420, %408
  %417 = load i32, i32* %29, align 4
  %418 = load i32, i32* %30, align 4
  %419 = icmp sle i32 %417, %418
  br i1 %419, label %420, label %432

420:                                              ; preds = %416
  %421 = load i32, i32* %29, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %29, align 4
  store i32 %421, i32* %31, align 4
  %423 = load i32, i32* %31, align 4
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 5
  %426 = load i32*, i32** %425, align 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 6
  %429 = load i64, i64* %428, align 8
  %430 = add nsw i64 %429, 1
  store i64 %430, i64* %428, align 8
  %431 = getelementptr inbounds i32, i32* %426, i64 %429
  store i32 %423, i32* %431, align 4
  br label %416

432:                                              ; preds = %416
  br label %450

433:                                              ; preds = %404
  %434 = load i8*, i8** %6, align 8
  %435 = load i8*, i8** %21, align 8
  %436 = icmp ugt i8* %434, %435
  br i1 %436, label %437, label %449

437:                                              ; preds = %433
  %438 = load i8*, i8** %21, align 8
  %439 = call i32 @atoi(i8* %438)
  store i32 %439, i32* %32, align 4
  %440 = load i32, i32* %32, align 4
  %441 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 5
  %443 = load i32*, i32** %442, align 8
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 6
  %446 = load i64, i64* %445, align 8
  %447 = add nsw i64 %446, 1
  store i64 %447, i64* %445, align 8
  %448 = getelementptr inbounds i32, i32* %443, i64 %446
  store i32 %440, i32* %448, align 4
  br label %449

449:                                              ; preds = %437, %433
  br label %450

450:                                              ; preds = %449, %432
  br label %451

451:                                              ; preds = %450, %403
  br label %248

452:                                              ; preds = %248
  br label %453

453:                                              ; preds = %452, %242
  %454 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %455 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %454, i32 0, i32 6
  %456 = load i64, i64* %455, align 8
  %457 = icmp eq i64 %456, 0
  br i1 %457, label %458, label %466

458:                                              ; preds = %453
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 0
  %461 = load i8*, i8** %460, align 8
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* %461, i32 %464)
  br label %117

466:                                              ; preds = %453
  %467 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %468 = call i32 @addClusterNode(%struct.TYPE_16__* %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %471, label %470

470:                                              ; preds = %466
  store i32 0, i32* %1, align 4
  br label %473

471:                                              ; preds = %466
  br label %117

472:                                              ; preds = %117
  br label %473

473:                                              ; preds = %472, %470, %233, %184, %153, %112, %84, %75
  %474 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %475 = icmp ne %struct.TYPE_15__* %474, null
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %478 = call i32 @redisFree(%struct.TYPE_15__* %477)
  br label %479

479:                                              ; preds = %476, %473
  %480 = load i32, i32* %1, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %488, label %482

482:                                              ; preds = %479
  %483 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 3), align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  %486 = call i32 (...) @freeClusterNodes()
  br label %487

487:                                              ; preds = %485, %482
  br label %488

488:                                              ; preds = %487, %479
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %490 = icmp ne %struct.TYPE_14__* %489, null
  br i1 %490, label %491, label %494

491:                                              ; preds = %488
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %493 = call i32 @freeReplyObject(%struct.TYPE_14__* %492)
  br label %494

494:                                              ; preds = %491, %488
  %495 = load i32, i32* %1, align 4
  ret i32 %495
}

declare dso_local %struct.TYPE_15__* @redisConnect(i8*, i32) #1

declare dso_local %struct.TYPE_15__* @redisConnectUnix(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.TYPE_16__* @createClusterNode(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @redisCommand(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @zrealloc(i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @addClusterNode(%struct.TYPE_16__*) #1

declare dso_local i32 @redisFree(%struct.TYPE_15__*) #1

declare dso_local i32 @freeClusterNodes(...) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelHandleConfiguration.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_sentinelHandleConfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Quorum must be 1 or greater.\00", align 1
@SRI_MASTER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Duplicated master name.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Can't resolve master instance hostname.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid port number\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"down-after-milliseconds\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"No such master with specified name.\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"negative or zero time parameter.\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"failover-timeout\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"parallel-syncs\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"notification-script\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [58 x i8] c"Notification script seems non existing or non executable.\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"client-reconfig-script\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"Client reconfiguration script seems non existing or non executable.\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"auth-pass\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"current-epoch\00", align 1
@sentinel = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"myid\00", align 1
@CONFIG_RUN_ID_SIZE = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"Malformed Sentinel id in myid option.\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"config-epoch\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"leader-epoch\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"known-slave\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"known-replica\00", align 1
@SRI_SLAVE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [36 x i8] c"Wrong hostname or port for replica.\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"known-sentinel\00", align 1
@SRI_SENTINEL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [37 x i8] c"Wrong hostname or port for sentinel.\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"rename-command\00", align 1
@DICT_OK = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [57 x i8] c"Same command renamed multiple times with rename-command.\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"announce-ip\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"announce-port\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"deny-scripts-reconfig\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"Please specify yes or no for the deny-scripts-reconfig options.\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"Unrecognized sentinel configuration statement.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sentinelHandleConfiguration(i8** %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8**, i8*** %4, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 4
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @atoi(i8* %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %532

30:                                               ; preds = %21
  %31 = load i8**, i8*** %4, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @SRI_MASTER, align 4
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @atoi(i8* %40)
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.TYPE_8__* @createSentinelRedisInstance(i8* %33, i32 %34, i8* %37, i8* %41, i32 %42, %struct.TYPE_8__* null)
  %44 = icmp eq %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load i32, i32* @errno, align 4
  switch i32 %46, label %50 [
    i32 130, label %47
    i32 128, label %48
    i32 129, label %49
  ]

47:                                               ; preds = %45
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %532

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %532

49:                                               ; preds = %45
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %532

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %30
  br label %531

52:                                               ; preds = %18, %2
  %53 = load i8**, i8*** %4, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load i8**, i8*** %4, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %64)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %6, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

69:                                               ; preds = %61
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @atoi(i8* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 10
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ule i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %532

81:                                               ; preds = %69
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %83 = call i32 @sentinelPropagateDownAfterPeriod(%struct.TYPE_8__* %82)
  br label %530

84:                                               ; preds = %58, %52
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %114

93:                                               ; preds = %90
  %94 = load i8**, i8*** %4, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %96)
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %6, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %99 = icmp ne %struct.TYPE_8__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

101:                                              ; preds = %93
  %102 = load i8**, i8*** %4, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @atoi(i8* %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 9
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ule i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %532

113:                                              ; preds = %101
  br label %529

114:                                              ; preds = %90, %84
  %115 = load i8**, i8*** %4, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcasecmp(i8* %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %138

123:                                              ; preds = %120
  %124 = load i8**, i8*** %4, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  %126 = load i8*, i8** %125, align 8
  %127 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %126)
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %6, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = icmp ne %struct.TYPE_8__* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %123
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

131:                                              ; preds = %123
  %132 = load i8**, i8*** %4, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @atoi(i8* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 8
  store i8* %135, i8** %137, align 8
  br label %528

138:                                              ; preds = %120, %114
  %139 = load i8**, i8*** %4, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcasecmp(i8* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %170, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %5, align 4
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %170

147:                                              ; preds = %144
  %148 = load i8**, i8*** %4, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 1
  %150 = load i8*, i8** %149, align 8
  %151 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %150)
  store %struct.TYPE_8__* %151, %struct.TYPE_8__** %6, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = icmp ne %struct.TYPE_8__* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %147
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

155:                                              ; preds = %147
  %156 = load i8**, i8*** %4, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* @X_OK, align 4
  %160 = call i32 @access(i8* %158, i32 %159)
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %532

163:                                              ; preds = %155
  %164 = load i8**, i8*** %4, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @sdsnew(i8* %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 7
  store i8* %167, i8** %169, align 8
  br label %527

170:                                              ; preds = %144, %138
  %171 = load i8**, i8*** %4, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @strcasecmp(i8* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %202, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %5, align 4
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %202

179:                                              ; preds = %176
  %180 = load i8**, i8*** %4, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  %182 = load i8*, i8** %181, align 8
  %183 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %182)
  store %struct.TYPE_8__* %183, %struct.TYPE_8__** %6, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %185 = icmp ne %struct.TYPE_8__* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %179
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

187:                                              ; preds = %179
  %188 = load i8**, i8*** %4, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 2
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @X_OK, align 4
  %192 = call i32 @access(i8* %190, i32 %191)
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %532

195:                                              ; preds = %187
  %196 = load i8**, i8*** %4, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 2
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* @sdsnew(i8* %198)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  store i8* %199, i8** %201, align 8
  br label %526

202:                                              ; preds = %176, %170
  %203 = load i8**, i8*** %4, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @strcasecmp(i8* %205, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %226, label %208

208:                                              ; preds = %202
  %209 = load i32, i32* %5, align 4
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %211, label %226

211:                                              ; preds = %208
  %212 = load i8**, i8*** %4, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 1
  %214 = load i8*, i8** %213, align 8
  %215 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %214)
  store %struct.TYPE_8__* %215, %struct.TYPE_8__** %6, align 8
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %217 = icmp ne %struct.TYPE_8__* %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %211
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

219:                                              ; preds = %211
  %220 = load i8**, i8*** %4, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i8* @sdsnew(i8* %222)
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 5
  store i8* %223, i8** %225, align 8
  br label %525

226:                                              ; preds = %208, %202
  %227 = load i8**, i8*** %4, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @strcasecmp(i8* %229, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %247, label %232

232:                                              ; preds = %226
  %233 = load i32, i32* %5, align 4
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %247

235:                                              ; preds = %232
  %236 = load i8**, i8*** %4, align 8
  %237 = getelementptr inbounds i8*, i8** %236, i64 1
  %238 = load i8*, i8** %237, align 8
  %239 = call i8* @strtoull(i8* %238, i32* null, i32 10)
  %240 = ptrtoint i8* %239 to i64
  store i64 %240, i64* %8, align 8
  %241 = load i64, i64* %8, align 8
  %242 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 0), align 8
  %243 = icmp ugt i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %235
  %245 = load i64, i64* %8, align 8
  store i64 %245, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 0), align 8
  br label %246

246:                                              ; preds = %244, %235
  br label %524

247:                                              ; preds = %232, %226
  %248 = load i8**, i8*** %4, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @strcasecmp(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %271, label %253

253:                                              ; preds = %247
  %254 = load i32, i32* %5, align 4
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %271

256:                                              ; preds = %253
  %257 = load i8**, i8*** %4, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 1
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @strlen(i8* %259)
  %261 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %256
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %532

264:                                              ; preds = %256
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 4), align 8
  %266 = load i8**, i8*** %4, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  %268 = load i8*, i8** %267, align 8
  %269 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %270 = call i32 @memcpy(i32 %265, i8* %268, i64 %269)
  br label %523

271:                                              ; preds = %253, %247
  %272 = load i8**, i8*** %4, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @strcasecmp(i8* %274, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %306, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %5, align 4
  %279 = icmp eq i32 %278, 3
  br i1 %279, label %280, label %306

280:                                              ; preds = %277
  %281 = load i8**, i8*** %4, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 1
  %283 = load i8*, i8** %282, align 8
  %284 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %283)
  store %struct.TYPE_8__* %284, %struct.TYPE_8__** %6, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %286 = icmp ne %struct.TYPE_8__* %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %280
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

288:                                              ; preds = %280
  %289 = load i8**, i8*** %4, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 2
  %291 = load i8*, i8** %290, align 8
  %292 = call i8* @strtoull(i8* %291, i32* null, i32 10)
  %293 = ptrtoint i8* %292 to i64
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  store i64 %293, i64* %295, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 0), align 8
  %300 = icmp ugt i64 %298, %299
  br i1 %300, label %301, label %305

301:                                              ; preds = %288
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 0), align 8
  br label %305

305:                                              ; preds = %301, %288
  br label %522

306:                                              ; preds = %277, %271
  %307 = load i8**, i8*** %4, align 8
  %308 = getelementptr inbounds i8*, i8** %307, i64 0
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @strcasecmp(i8* %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %330, label %312

312:                                              ; preds = %306
  %313 = load i32, i32* %5, align 4
  %314 = icmp eq i32 %313, 3
  br i1 %314, label %315, label %330

315:                                              ; preds = %312
  %316 = load i8**, i8*** %4, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 1
  %318 = load i8*, i8** %317, align 8
  %319 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %318)
  store %struct.TYPE_8__* %319, %struct.TYPE_8__** %6, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %321 = icmp ne %struct.TYPE_8__* %320, null
  br i1 %321, label %323, label %322

322:                                              ; preds = %315
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

323:                                              ; preds = %315
  %324 = load i8**, i8*** %4, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 2
  %326 = load i8*, i8** %325, align 8
  %327 = call i8* @strtoull(i8* %326, i32* null, i32 10)
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 4
  store i8* %327, i8** %329, align 8
  br label %521

330:                                              ; preds = %312, %306
  %331 = load i8**, i8*** %4, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 0
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @strcasecmp(i8* %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %330
  %337 = load i8**, i8*** %4, align 8
  %338 = getelementptr inbounds i8*, i8** %337, i64 0
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @strcasecmp(i8* %339, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %370, label %342

342:                                              ; preds = %336, %330
  %343 = load i32, i32* %5, align 4
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %370

345:                                              ; preds = %342
  %346 = load i8**, i8*** %4, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 1
  %348 = load i8*, i8** %347, align 8
  %349 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %348)
  store %struct.TYPE_8__* %349, %struct.TYPE_8__** %6, align 8
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %351 = icmp ne %struct.TYPE_8__* %350, null
  br i1 %351, label %353, label %352

352:                                              ; preds = %345
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

353:                                              ; preds = %345
  %354 = load i32, i32* @SRI_SLAVE, align 4
  %355 = load i8**, i8*** %4, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 2
  %357 = load i8*, i8** %356, align 8
  %358 = load i8**, i8*** %4, align 8
  %359 = getelementptr inbounds i8*, i8** %358, i64 3
  %360 = load i8*, i8** %359, align 8
  %361 = call i8* @atoi(i8* %360)
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %366 = call %struct.TYPE_8__* @createSentinelRedisInstance(i8* null, i32 %354, i8* %357, i8* %361, i32 %364, %struct.TYPE_8__* %365)
  store %struct.TYPE_8__* %366, %struct.TYPE_8__** %9, align 8
  %367 = icmp eq %struct.TYPE_8__* %366, null
  br i1 %367, label %368, label %369

368:                                              ; preds = %353
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %532

369:                                              ; preds = %353
  br label %520

370:                                              ; preds = %342, %336
  %371 = load i8**, i8*** %4, align 8
  %372 = getelementptr inbounds i8*, i8** %371, i64 0
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 @strcasecmp(i8* %373, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %422, label %376

376:                                              ; preds = %370
  %377 = load i32, i32* %5, align 4
  %378 = icmp eq i32 %377, 4
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = load i32, i32* %5, align 4
  %381 = icmp eq i32 %380, 5
  br i1 %381, label %382, label %422

382:                                              ; preds = %379, %376
  %383 = load i32, i32* %5, align 4
  %384 = icmp eq i32 %383, 5
  br i1 %384, label %385, label %421

385:                                              ; preds = %382
  %386 = load i8**, i8*** %4, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 1
  %388 = load i8*, i8** %387, align 8
  %389 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %388)
  store %struct.TYPE_8__* %389, %struct.TYPE_8__** %6, align 8
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %391 = icmp ne %struct.TYPE_8__* %390, null
  br i1 %391, label %393, label %392

392:                                              ; preds = %385
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

393:                                              ; preds = %385
  %394 = load i8**, i8*** %4, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 4
  %396 = load i8*, i8** %395, align 8
  %397 = load i32, i32* @SRI_SENTINEL, align 4
  %398 = load i8**, i8*** %4, align 8
  %399 = getelementptr inbounds i8*, i8** %398, i64 2
  %400 = load i8*, i8** %399, align 8
  %401 = load i8**, i8*** %4, align 8
  %402 = getelementptr inbounds i8*, i8** %401, i64 3
  %403 = load i8*, i8** %402, align 8
  %404 = call i8* @atoi(i8* %403)
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %409 = call %struct.TYPE_8__* @createSentinelRedisInstance(i8* %396, i32 %397, i8* %400, i8* %404, i32 %407, %struct.TYPE_8__* %408)
  store %struct.TYPE_8__* %409, %struct.TYPE_8__** %10, align 8
  %410 = icmp eq %struct.TYPE_8__* %409, null
  br i1 %410, label %411, label %412

411:                                              ; preds = %393
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %532

412:                                              ; preds = %393
  %413 = load i8**, i8*** %4, align 8
  %414 = getelementptr inbounds i8*, i8** %413, i64 4
  %415 = load i8*, i8** %414, align 8
  %416 = call i8* @sdsnew(i8* %415)
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 3
  store i8* %416, i8** %418, align 8
  %419 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %420 = call i32 @sentinelTryConnectionSharing(%struct.TYPE_8__* %419)
  br label %421

421:                                              ; preds = %412, %382
  br label %519

422:                                              ; preds = %379, %370
  %423 = load i8**, i8*** %4, align 8
  %424 = getelementptr inbounds i8*, i8** %423, i64 0
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @strcasecmp(i8* %425, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %462, label %428

428:                                              ; preds = %422
  %429 = load i32, i32* %5, align 4
  %430 = icmp eq i32 %429, 4
  br i1 %430, label %431, label %462

431:                                              ; preds = %428
  %432 = load i8**, i8*** %4, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 1
  %434 = load i8*, i8** %433, align 8
  %435 = call %struct.TYPE_8__* @sentinelGetMasterByName(i8* %434)
  store %struct.TYPE_8__* %435, %struct.TYPE_8__** %6, align 8
  %436 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %437 = icmp ne %struct.TYPE_8__* %436, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %431
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %532

439:                                              ; preds = %431
  %440 = load i8**, i8*** %4, align 8
  %441 = getelementptr inbounds i8*, i8** %440, i64 2
  %442 = load i8*, i8** %441, align 8
  %443 = call i8* @sdsnew(i8* %442)
  store i8* %443, i8** %11, align 8
  %444 = load i8**, i8*** %4, align 8
  %445 = getelementptr inbounds i8*, i8** %444, i64 3
  %446 = load i8*, i8** %445, align 8
  %447 = call i8* @sdsnew(i8* %446)
  store i8* %447, i8** %12, align 8
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = load i8*, i8** %11, align 8
  %452 = load i8*, i8** %12, align 8
  %453 = call i64 @dictAdd(i32 %450, i8* %451, i8* %452)
  %454 = load i64, i64* @DICT_OK, align 8
  %455 = icmp ne i64 %453, %454
  br i1 %455, label %456, label %461

456:                                              ; preds = %439
  %457 = load i8*, i8** %11, align 8
  %458 = call i32 @sdsfree(i8* %457)
  %459 = load i8*, i8** %12, align 8
  %460 = call i32 @sdsfree(i8* %459)
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %532

461:                                              ; preds = %439
  br label %518

462:                                              ; preds = %428, %422
  %463 = load i8**, i8*** %4, align 8
  %464 = getelementptr inbounds i8*, i8** %463, i64 0
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @strcasecmp(i8* %465, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %483, label %468

468:                                              ; preds = %462
  %469 = load i32, i32* %5, align 4
  %470 = icmp eq i32 %469, 2
  br i1 %470, label %471, label %483

471:                                              ; preds = %468
  %472 = load i8**, i8*** %4, align 8
  %473 = getelementptr inbounds i8*, i8** %472, i64 1
  %474 = load i8*, i8** %473, align 8
  %475 = call i64 @strlen(i8* %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %471
  %478 = load i8**, i8*** %4, align 8
  %479 = getelementptr inbounds i8*, i8** %478, i64 1
  %480 = load i8*, i8** %479, align 8
  %481 = call i8* @sdsnew(i8* %480)
  store i8* %481, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 3), align 8
  br label %482

482:                                              ; preds = %477, %471
  br label %517

483:                                              ; preds = %468, %462
  %484 = load i8**, i8*** %4, align 8
  %485 = getelementptr inbounds i8*, i8** %484, i64 0
  %486 = load i8*, i8** %485, align 8
  %487 = call i32 @strcasecmp(i8* %486, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %497, label %489

489:                                              ; preds = %483
  %490 = load i32, i32* %5, align 4
  %491 = icmp eq i32 %490, 2
  br i1 %491, label %492, label %497

492:                                              ; preds = %489
  %493 = load i8**, i8*** %4, align 8
  %494 = getelementptr inbounds i8*, i8** %493, i64 1
  %495 = load i8*, i8** %494, align 8
  %496 = call i8* @atoi(i8* %495)
  store i8* %496, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 2), align 8
  br label %516

497:                                              ; preds = %489, %483
  %498 = load i8**, i8*** %4, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 0
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 @strcasecmp(i8* %500, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0))
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %514, label %503

503:                                              ; preds = %497
  %504 = load i32, i32* %5, align 4
  %505 = icmp eq i32 %504, 2
  br i1 %505, label %506, label %514

506:                                              ; preds = %503
  %507 = load i8**, i8*** %4, align 8
  %508 = getelementptr inbounds i8*, i8** %507, i64 1
  %509 = load i8*, i8** %508, align 8
  %510 = call i32 @yesnotoi(i8* %509)
  store i32 %510, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sentinel, i32 0, i32 1), align 8
  %511 = icmp eq i32 %510, -1
  br i1 %511, label %512, label %513

512:                                              ; preds = %506
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %532

513:                                              ; preds = %506
  br label %515

514:                                              ; preds = %503, %497
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %532

515:                                              ; preds = %513
  br label %516

516:                                              ; preds = %515, %492
  br label %517

517:                                              ; preds = %516, %482
  br label %518

518:                                              ; preds = %517, %461
  br label %519

519:                                              ; preds = %518, %421
  br label %520

520:                                              ; preds = %519, %369
  br label %521

521:                                              ; preds = %520, %323
  br label %522

522:                                              ; preds = %521, %305
  br label %523

523:                                              ; preds = %522, %264
  br label %524

524:                                              ; preds = %523, %246
  br label %525

525:                                              ; preds = %524, %219
  br label %526

526:                                              ; preds = %525, %195
  br label %527

527:                                              ; preds = %526, %163
  br label %528

528:                                              ; preds = %527, %131
  br label %529

529:                                              ; preds = %528, %113
  br label %530

530:                                              ; preds = %529, %81
  br label %531

531:                                              ; preds = %530, %51
  store i8* null, i8** %3, align 8
  br label %532

532:                                              ; preds = %531, %514, %512, %456, %438, %411, %392, %368, %352, %322, %287, %263, %218, %194, %186, %162, %154, %130, %112, %100, %80, %68, %49, %48, %47, %29
  %533 = load i8*, i8** %3, align 8
  ret i8* %533
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local %struct.TYPE_8__* @createSentinelRedisInstance(i8*, i32, i8*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @sentinelGetMasterByName(i8*) #1

declare dso_local i32 @sentinelPropagateDownAfterPeriod(%struct.TYPE_8__*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @strtoull(i8*, i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @sentinelTryConnectionSharing(%struct.TYPE_8__*) #1

declare dso_local i64 @dictAdd(i32, i8*, i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @yesnotoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

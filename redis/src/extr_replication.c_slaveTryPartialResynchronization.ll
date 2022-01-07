; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_slaveTryPartialResynchronization.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_slaveTryPartialResynchronization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i32*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i8*, i64 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Trying a partial resynchronization (request %s:%s).\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Partial resynchronization not possible (no cached master)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@SYNC_CMD_WRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"PSYNC\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Unable to send PSYNC to master: %s\00", align 1
@PSYNC_WRITE_ERROR = common dso_local global i32 0, align 4
@PSYNC_WAIT_REPLY = common dso_local global i32 0, align 4
@SYNC_CMD_READ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"+FULLRESYNC\00", align 1
@CONFIG_RUN_ID_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Master replied with wrong +FULLRESYNC syntax.\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Full resync from master: %s:%lld\00", align 1
@PSYNC_FULLRESYNC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"+CONTINUE\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Successful partial resynchronization with master.\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Master replication ID changed to %s\00", align 1
@PSYNC_CONTINUE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"-NOMASTERLINK\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"-LOADING\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"Master is currently unable to PSYNC but should be in the future: %s\00", align 1
@PSYNC_TRY_LATER = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"-ERR\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Unexpected reply to PSYNC from master: %s\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"Master does not support PSYNC or is in error state (reply: %s)\00", align 1
@PSYNC_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaveTryPartialResynchronization(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %2
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 5), align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 5), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 5), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @snprintf(i8* %24, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* @LL_NOTICE, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %33 = call i32 (i32, i8*, ...) @serverLog(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32)
  br label %39

34:                                               ; preds = %17
  %35 = load i32, i32* @LL_NOTICE, align 4
  %36 = call i32 (i32, i8*, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %38 = call i32 @memcpy(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 3)
  br label %39

39:                                               ; preds = %34, %20
  %40 = load i32, i32* @SYNC_CMD_WRITE, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %44 = call i8* (i32, i32*, i8*, ...) @sendSynchronousCommand(i32 %40, i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %42, i8* %43, i8* null)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* @LL_WARNING, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 (i32, i8*, ...) @serverLog(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @sdsfree(i8* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @connSetReadHandler(i32* %53, i32* null)
  %55 = load i32, i32* @PSYNC_WRITE_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %262

56:                                               ; preds = %39
  %57 = load i32, i32* @PSYNC_WAIT_REPLY, align 4
  store i32 %57, i32* %3, align 4
  br label %262

58:                                               ; preds = %2
  %59 = load i32, i32* @SYNC_CMD_READ, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i8* (i32, i32*, i8*, ...) @sendSynchronousCommand(i32 %59, i32* %60, i8* null)
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i64 @sdslen(i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @sdsfree(i8* %66)
  %68 = load i32, i32* @PSYNC_WAIT_REPLY, align 4
  store i32 %68, i32* %3, align 4
  br label %262

69:                                               ; preds = %58
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @connSetReadHandler(i32* %70, i32* null)
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strncmp(i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %140, label %75

75:                                               ; preds = %69
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* @strchr(i8* %76, i8 signext 32)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i8* @strchr(i8* %83, i8 signext 32)
  store i8* %84, i8** %10, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i8*, i8** %9, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sub nsw i64 %102, 1
  %104 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ne i64 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %97, %94, %91
  %108 = load i32, i32* @LL_WARNING, align 4
  %109 = call i32 (i32, i8*, ...) @serverLog(i32 %108, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %111 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @memset(i8* %110, i32 0, i32 %112)
  br label %135

114:                                              ; preds = %97
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sub nsw i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i8* %115, i8* %116, i32 %123)
  %125 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %126 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @strtoll(i8* %129, i32* null, i32 10)
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %131 = load i32, i32* @LL_NOTICE, align 4
  %132 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 1), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0), align 8
  %134 = call i32 (i32, i8*, ...) @serverLog(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %114, %107
  %136 = call i32 (...) @replicationDiscardCachedMaster()
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @sdsfree(i8* %137)
  %139 = load i32, i32* @PSYNC_FULLRESYNC, align 4
  store i32 %139, i32* %3, align 4
  br label %262

140:                                              ; preds = %69
  %141 = load i8*, i8** %8, align 8
  %142 = call i64 @strncmp(i8* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 9)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %230, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* @LL_NOTICE, align 4
  %146 = call i32 (i32, i8*, ...) @serverLog(i32 %145, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 10
  store i8* %148, i8** %11, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 9
  store i8* %150, i8** %12, align 8
  br label %151

151:                                              ; preds = %171, %144
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 13
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load i8*, i8** %12, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 10
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %163, %157, %151
  %170 = phi i1 [ false, %157 ], [ false, %151 ], [ %168, %163 ]
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = load i8*, i8** %12, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %12, align 8
  br label %151

174:                                              ; preds = %169
  %175 = load i8*, i8** %12, align 8
  %176 = load i8*, i8** %11, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp eq i64 %179, %181
  br i1 %182, label %183, label %219

183:                                              ; preds = %174
  %184 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %185 = add nsw i32 %184, 1
  %186 = zext i32 %185 to i64
  %187 = call i8* @llvm.stacksave()
  store i8* %187, i8** %13, align 8
  %188 = alloca i8, i64 %186, align 16
  store i64 %186, i64* %14, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %191 = call i32 @memcpy(i8* %188, i8* %189, i32 %190)
  %192 = load i32, i32* @CONFIG_RUN_ID_SIZE, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %188, i64 %193
  store i8 0, i8* %194, align 1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 5), align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcmp(i8* %188, i8* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %183
  %201 = load i32, i32* @LL_WARNING, align 4
  %202 = call i32 (i32, i8*, ...) @serverLog(i32 %201, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %188)
  %203 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 2), align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 5), align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @memcpy(i8* %203, i8* %206, i32 8)
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 6), align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 7), align 8
  %210 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 3), align 8
  %211 = call i32 @memcpy(i8* %210, i8* %188, i32 8)
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 5), align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @memcpy(i8* %214, i8* %188, i32 8)
  %216 = call i32 (...) @disconnectSlaves()
  br label %217

217:                                              ; preds = %200, %183
  %218 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %218)
  br label %219

219:                                              ; preds = %217, %174
  %220 = load i8*, i8** %8, align 8
  %221 = call i32 @sdsfree(i8* %220)
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 @replicationResurrectCachedMaster(i32* %222)
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 4), align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = call i32 (...) @createReplicationBacklog()
  br label %228

228:                                              ; preds = %226, %219
  %229 = load i32, i32* @PSYNC_CONTINUE, align 4
  store i32 %229, i32* %3, align 4
  br label %262

230:                                              ; preds = %140
  %231 = load i8*, i8** %8, align 8
  %232 = call i64 @strncmp(i8* %231, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 13)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = load i8*, i8** %8, align 8
  %236 = call i64 @strncmp(i8* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 8)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %234, %230
  %239 = load i32, i32* @LL_NOTICE, align 4
  %240 = load i8*, i8** %8, align 8
  %241 = call i32 (i32, i8*, ...) @serverLog(i32 %239, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i8* %240)
  %242 = load i8*, i8** %8, align 8
  %243 = call i32 @sdsfree(i8* %242)
  %244 = load i32, i32* @PSYNC_TRY_LATER, align 4
  store i32 %244, i32* %3, align 4
  br label %262

245:                                              ; preds = %234
  %246 = load i8*, i8** %8, align 8
  %247 = call i64 @strncmp(i8* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* @LL_WARNING, align 4
  %251 = load i8*, i8** %8, align 8
  %252 = call i32 (i32, i8*, ...) @serverLog(i32 %250, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* %251)
  br label %257

253:                                              ; preds = %245
  %254 = load i32, i32* @LL_NOTICE, align 4
  %255 = load i8*, i8** %8, align 8
  %256 = call i32 (i32, i8*, ...) @serverLog(i32 %254, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i64 0, i64 0), i8* %255)
  br label %257

257:                                              ; preds = %253, %249
  %258 = load i8*, i8** %8, align 8
  %259 = call i32 @sdsfree(i8* %258)
  %260 = call i32 (...) @replicationDiscardCachedMaster()
  %261 = load i32, i32* @PSYNC_NOT_SUPPORTED, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %257, %238, %228, %135, %65, %56, %47
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @sendSynchronousCommand(i32, i32*, i8*, ...) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @connSetReadHandler(i32*, i32*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @replicationDiscardCachedMaster(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @disconnectSlaves(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @replicationResurrectCachedMaster(i32*) #1

declare dso_local i32 @createReplicationBacklog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

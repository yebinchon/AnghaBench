; ModuleID = '/home/carl/AnghaBench/redis/src/extr_replication.c_syncCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_replication.c_syncCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i64, i64, i64, i32, i32*, i64, i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }

@CLIENT_SLAVE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@REPL_STATE_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"-NOMASTERLINK Can't SYNC while not connected with my master\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"SYNC and PSYNC are invalid with pending output\00", align 1
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Replica %s asks for synchronization\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"psync\00", align 1
@C_OK = common dso_local global i64 0, align 8
@CLIENT_PRE_PSYNC = common dso_local global i32 0, align 4
@SLAVE_STATE_WAIT_BGSAVE_START = common dso_local global i64 0, align 8
@RDB_CHILD_TYPE_DISK = common dso_local global i64 0, align 8
@SLAVE_STATE_WAIT_BGSAVE_END = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Waiting for end of BGSAVE for SYNC\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"Can't attach the replica to the current BGSAVE. Waiting for next BGSAVE for SYNC\00", align 1
@RDB_CHILD_TYPE_SOCKET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [67 x i8] c"Current BGSAVE has socket target. Waiting for next BGSAVE for SYNC\00", align 1
@SLAVE_CAPA_EOF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Delay next BGSAVE for diskless SYNC\00", align 1
@.str.8 = private unnamed_addr constant [90 x i8] c"No BGSAVE in progress, but another BG operation is active. BGSAVE for replication delayed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syncCommand(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CLIENT_SLAVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %208

14:                                               ; preds = %1
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 11), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 8
  %19 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %23 = call i32 @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @addReplySds(%struct.TYPE_18__* %22, i32 %23)
  br label %208

25:                                               ; preds = %17, %14
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %27 = call i64 @clientHasPendingReplies(%struct.TYPE_18__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = call i32 @addReplyError(%struct.TYPE_18__* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %208

32:                                               ; preds = %25
  %33 = load i32, i32* @LL_NOTICE, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %35 = call i32 @replicationGetSlaveName(%struct.TYPE_18__* %34)
  %36 = call i32 (i32, i8*, ...) @serverLog(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %39, i64 0
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %32
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = call i64 @masterTryPartialResynchronization(%struct.TYPE_18__* %47)
  %49 = load i64, i64* @C_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 10), align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 10), align 8
  br label %208

54:                                               ; preds = %46
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %57, i64 1
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 63
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 9), align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 9), align 4
  br label %70

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70
  br label %78

72:                                               ; preds = %32
  %73 = load i32, i32* @CLIENT_PRE_PSYNC, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 8), align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 8), align 8
  %81 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_START, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 7), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @connDisableTcpNoDelay(i32 %89)
  br label %91

91:                                               ; preds = %86, %78
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  store i32 -1, i32* %93, align 8
  %94 = load i32, i32* @CLIENT_SLAVE, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 5), align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = call i32 @listAddNodeTail(i32 %99, %struct.TYPE_18__* %100)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 5), align 8
  %103 = call i32 @listLength(i32 %102)
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %112

105:                                              ; preds = %91
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 6), align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = call i32 (...) @changeReplicationId()
  %110 = call i32 (...) @clearReplicationId2()
  %111 = call i32 (...) @createReplicationBacklog()
  br label %112

112:                                              ; preds = %108, %105, %91
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 1), align 8
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %166

115:                                              ; preds = %112
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 2), align 8
  %117 = load i64, i64* @RDB_CHILD_TYPE_DISK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %166

119:                                              ; preds = %115
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 5), align 8
  %121 = call i32 @listRewind(i32 %120, i32* %6)
  br label %122

122:                                              ; preds = %135, %119
  %123 = call %struct.TYPE_17__* @listNext(i32* %6)
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %5, align 8
  %124 = icmp ne %struct.TYPE_17__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %4, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SLAVE_STATE_WAIT_BGSAVE_END, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %136

135:                                              ; preds = %125
  br label %122

136:                                              ; preds = %134, %122
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = icmp ne %struct.TYPE_17__* %137, null
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %142, %145
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %139
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = call i32 @copyClientOutputBuffer(%struct.TYPE_18__* %152, %struct.TYPE_18__* %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @replicationSetupSlaveForFullResync(%struct.TYPE_18__* %155, i32 %158)
  %160 = load i32, i32* @LL_NOTICE, align 4
  %161 = call i32 (i32, i8*, ...) @serverLog(i32 %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %165

162:                                              ; preds = %139, %136
  %163 = load i32, i32* @LL_NOTICE, align 4
  %164 = call i32 (i32, i8*, ...) @serverLog(i32 %163, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %151
  br label %207

166:                                              ; preds = %115, %112
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 1), align 8
  %168 = icmp ne i32 %167, -1
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 2), align 8
  %171 = load i64, i64* @RDB_CHILD_TYPE_SOCKET, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @LL_NOTICE, align 4
  %175 = call i32 (i32, i8*, ...) @serverLog(i32 %174, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  br label %206

176:                                              ; preds = %169, %166
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 4), align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SLAVE_CAPA_EOF, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %179
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 3), align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* @LL_NOTICE, align 4
  %191 = call i32 (i32, i8*, ...) @serverLog(i32 %190, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %186
  br label %205

193:                                              ; preds = %179, %176
  %194 = call i32 (...) @hasActiveChildProcess()
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @startBgsaveForReplication(i32 %199)
  br label %204

201:                                              ; preds = %193
  %202 = load i32, i32* @LL_NOTICE, align 4
  %203 = call i32 (i32, i8*, ...) @serverLog(i32 %202, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.8, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  br label %205

205:                                              ; preds = %204, %192
  br label %206

206:                                              ; preds = %205, %173
  br label %207

207:                                              ; preds = %206, %165
  br label %208

208:                                              ; preds = %207, %51, %29, %21, %13
  ret void
}

declare dso_local i32 @addReplySds(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_18__*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @replicationGetSlaveName(%struct.TYPE_18__*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @masterTryPartialResynchronization(%struct.TYPE_18__*) #1

declare dso_local i32 @connDisableTcpNoDelay(i32) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @changeReplicationId(...) #1

declare dso_local i32 @clearReplicationId2(...) #1

declare dso_local i32 @createReplicationBacklog(...) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_17__* @listNext(i32*) #1

declare dso_local i32 @copyClientOutputBuffer(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @replicationSetupSlaveForFullResync(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @hasActiveChildProcess(...) #1

declare dso_local i32 @startBgsaveForReplication(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_processCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_processCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i64, i32, i32, i64, i64, i32*, i64, i64, i32, i64, i32*, i64, %struct.TYPE_26__*, %struct.TYPE_24__*, i64 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_30__*, %struct.TYPE_23__**, i32, %struct.TYPE_30__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_30__ = type { i32, i64, i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@shared = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"`%.*s`, \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"unknown command `%s`, with args beginning with: %s\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"wrong number of arguments for '%s' command\00", align 1
@DefaultUser = common dso_local global %struct.TYPE_25__* null, align 8
@USER_FLAG_NOPASS = common dso_local global i32 0, align 4
@USER_FLAG_DISABLED = common dso_local global i32 0, align 4
@authCommand = common dso_local global i64 0, align 8
@helloCommand = common dso_local global i64 0, align 8
@ACL_OK = common dso_local global i32 0, align 4
@ACL_DENIED_CMD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"-NOPERM this user has no permissions to run the '%s' command or its subcommand\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"-NOPERM this user has no permissions to access one of the keys used as arguments\00", align 1
@server = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@CLIENT_MASTER = common dso_local global i32 0, align 4
@CLIENT_LUA = common dso_local global i32 0, align 4
@execCommand = common dso_local global i64 0, align 8
@CMD_DENYOOM = common dso_local global i32 0, align 4
@CLIENT_MULTI = common dso_local global i32 0, align 4
@discardCommand = common dso_local global i64 0, align 8
@DISK_ERROR_TYPE_NONE = common dso_local global i32 0, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@pingCommand = common dso_local global i64 0, align 8
@DISK_ERROR_TYPE_RDB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"-MISCONF Errors writing to the AOF file: %s\0D\0A\00", align 1
@CLIENT_PUBSUB = common dso_local global i32 0, align 4
@subscribeCommand = common dso_local global i64 0, align 8
@unsubscribeCommand = common dso_local global i64 0, align 8
@psubscribeCommand = common dso_local global i64 0, align 8
@punsubscribeCommand = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [73 x i8] c"only (P)SUBSCRIBE / (P)UNSUBSCRIBE / PING / QUIT allowed in this context\00", align 1
@REPL_STATE_CONNECTED = common dso_local global i64 0, align 8
@CMD_STALE = common dso_local global i32 0, align 4
@CMD_LOADING = common dso_local global i32 0, align 4
@replconfCommand = common dso_local global i64 0, align 8
@shutdownCommand = common dso_local global i64 0, align 8
@scriptCommand = common dso_local global i64 0, align 8
@multiCommand = common dso_local global i64 0, align 8
@watchCommand = common dso_local global i64 0, align 8
@CMD_CALL_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processCommand(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %14 = call i32 @moduleCallCommandFilters(%struct.TYPE_27__* %13)
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %17, i64 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @strcasecmp(i64 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 9), align 4
  %27 = call i32 @addReply(%struct.TYPE_27__* %25, i32 %26)
  %28 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @C_ERR, align 4
  store i32 %33, i32* %2, align 4
  br label %713

34:                                               ; preds = %1
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %37, i64 0
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_30__* @lookupCommand(i64 %41)
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 7
  store %struct.TYPE_30__* %42, %struct.TYPE_30__** %44, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 4
  store %struct.TYPE_30__* %42, %struct.TYPE_30__** %46, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %48, align 8
  %50 = icmp ne %struct.TYPE_30__* %49, null
  br i1 %50, label %101, label %51

51:                                               ; preds = %34
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %53 = call i32 @flagTransaction(%struct.TYPE_27__* %52)
  %54 = call i32 (...) @sdsempty()
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %83, %51
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @sdslen(i32 %62)
  %64 = icmp slt i32 %63, 128
  br label %65

65:                                               ; preds = %61, %55
  %66 = phi i1 [ false, %55 ], [ %64, %61 ]
  br i1 %66, label %67, label %86

67:                                               ; preds = %65
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @sdslen(i32 %69)
  %71 = sub nsw i32 128, %70
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %74, i64 %76
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %71, i8* %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %55

86:                                               ; preds = %65
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %90, i64 0
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32, i32* %4, align 4
  %97 = call i32 (%struct.TYPE_27__*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_27__* %87, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %95, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @sdsfree(i32 %98)
  %100 = load i32, i32* @C_OK, align 4
  store i32 %100, i32* %2, align 4
  br label %713

101:                                              ; preds = %34
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %129, label %118

118:                                              ; preds = %108, %101
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 0, %126
  %128 = icmp slt i32 %121, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %118, %108
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %131 = call i32 @flagTransaction(%struct.TYPE_27__* %130)
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.TYPE_27__*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_27__* %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @C_OK, align 4
  store i32 %139, i32* %2, align 4
  br label %713

140:                                              ; preds = %118
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** @DefaultUser, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @USER_FLAG_NOPASS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** @DefaultUser, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @USER_FLAG_DISABLED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148, %141
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  br label %161

161:                                              ; preds = %155, %148
  %162 = phi i1 [ false, %148 ], [ %160, %155 ]
  %163 = zext i1 %162 to i32
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %161
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @authCommand, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %166
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @helloCommand, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %184 = call i32 @flagTransaction(%struct.TYPE_27__* %183)
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 8), align 4
  %187 = call i32 @addReply(%struct.TYPE_27__* %185, i32 %186)
  %188 = load i32, i32* @C_OK, align 4
  store i32 %188, i32* %2, align 4
  br label %713

189:                                              ; preds = %174, %166
  br label %190

190:                                              ; preds = %189, %161
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %192 = call i32 @ACLCheckCommandPerm(%struct.TYPE_27__* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @ACL_OK, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %215

196:                                              ; preds = %190
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %198 = call i32 @flagTransaction(%struct.TYPE_27__* %197)
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @ACL_DENIED_CMD, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %196
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (%struct.TYPE_27__*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_27__* %203, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  br label %213

210:                                              ; preds = %196
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %212 = call i32 (%struct.TYPE_27__*, i8*, ...) @addReplyErrorFormat(%struct.TYPE_27__* %211, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %202
  %214 = load i32, i32* @C_OK, align 4
  store i32 %214, i32* %2, align 4
  br label %713

215:                                              ; preds = %190
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 17), align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %303

218:                                              ; preds = %215
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @CLIENT_MASTER, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %303, label %225

225:                                              ; preds = %218
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CLIENT_LUA, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 16), align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @CLIENT_MASTER, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %303, label %239

239:                                              ; preds = %232, %225
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 4
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %261

246:                                              ; preds = %239
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 4
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %246
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 4
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @execCommand, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %303, label %261

261:                                              ; preds = %253, %246, %239
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 4
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %264, align 8
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 5
  %268 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %267, align 8
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32* @getNodeByQuery(%struct.TYPE_27__* %262, %struct.TYPE_30__* %265, %struct.TYPE_23__** %268, i32 %271, i32* %8, i32* %9)
  store i32* %272, i32** %10, align 8
  %273 = load i32*, i32** %10, align 8
  %274 = icmp eq i32* %273, null
  br i1 %274, label %281, label %275

275:                                              ; preds = %261
  %276 = load i32*, i32** %10, align 8
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 15), align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = icmp ne i32* %276, %279
  br i1 %280, label %281, label %302

281:                                              ; preds = %275, %261
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 4
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @execCommand, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %291 = call i32 @discardTransaction(%struct.TYPE_27__* %290)
  br label %295

292:                                              ; preds = %281
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %294 = call i32 @flagTransaction(%struct.TYPE_27__* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* %9, align 4
  %300 = call i32 @clusterRedirectClient(%struct.TYPE_27__* %296, i32* %297, i32 %298, i32 %299)
  %301 = load i32, i32* @C_OK, align 4
  store i32 %301, i32* %2, align 4
  br label %713

302:                                              ; preds = %275
  br label %303

303:                                              ; preds = %302, %253, %232, %218, %215
  %304 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 14), align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %361

306:                                              ; preds = %303
  %307 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 6), align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %361, label %309

309:                                              ; preds = %306
  %310 = call i32 (...) @freeMemoryIfNeededAndSafe()
  %311 = load i32, i32* @C_ERR, align 4
  %312 = icmp eq i32 %310, %311
  %313 = zext i1 %312 to i32
  store i32 %313, i32* %11, align 4
  %314 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 13), align 8
  %315 = icmp eq i32* %314, null
  br i1 %315, label %316, label %318

316:                                              ; preds = %309
  %317 = load i32, i32* @C_ERR, align 4
  store i32 %317, i32* %2, align 4
  br label %713

318:                                              ; preds = %309
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %360

321:                                              ; preds = %318
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 4
  %324 = load %struct.TYPE_30__*, %struct.TYPE_30__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @CMD_DENYOOM, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %353, label %330

330:                                              ; preds = %321
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @CLIENT_MULTI, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %360

337:                                              ; preds = %330
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 4
  %340 = load %struct.TYPE_30__*, %struct.TYPE_30__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @execCommand, align 8
  %344 = icmp ne i64 %342, %343
  br i1 %344, label %345, label %360

345:                                              ; preds = %337
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 4
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @discardCommand, align 8
  %352 = icmp ne i64 %350, %351
  br i1 %352, label %353, label %360

353:                                              ; preds = %345, %321
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %355 = call i32 @flagTransaction(%struct.TYPE_27__* %354)
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %357 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 7), align 4
  %358 = call i32 @addReply(%struct.TYPE_27__* %356, i32 %357)
  %359 = load i32, i32* @C_OK, align 4
  store i32 %359, i32* %2, align 4
  br label %713

360:                                              ; preds = %345, %337, %330, %318
  br label %361

361:                                              ; preds = %360, %306, %303
  %362 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 12), align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = call i32 (...) @trackingLimitUsedSlots()
  br label %366

366:                                              ; preds = %364, %361
  %367 = call i32 (...) @writeCommandsDeniedByDiskError()
  store i32 %367, i32* %12, align 4
  %368 = load i32, i32* %12, align 4
  %369 = load i32, i32* @DISK_ERROR_TYPE_NONE, align 4
  %370 = icmp ne i32 %368, %369
  br i1 %370, label %371, label %410

371:                                              ; preds = %366
  %372 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 8), align 8
  %373 = icmp eq i32* %372, null
  br i1 %373, label %374, label %410

374:                                              ; preds = %371
  %375 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %375, i32 0, i32 4
  %377 = load %struct.TYPE_30__*, %struct.TYPE_30__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @CMD_WRITE, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %374
  %384 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %384, i32 0, i32 4
  %386 = load %struct.TYPE_30__*, %struct.TYPE_30__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* @pingCommand, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %410

391:                                              ; preds = %383, %374
  %392 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %393 = call i32 @flagTransaction(%struct.TYPE_27__* %392)
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* @DISK_ERROR_TYPE_RDB, align 4
  %396 = icmp eq i32 %394, %395
  br i1 %396, label %397, label %401

397:                                              ; preds = %391
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %399 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 6), align 4
  %400 = call i32 @addReply(%struct.TYPE_27__* %398, i32 %399)
  br label %408

401:                                              ; preds = %391
  %402 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %403 = call i32 (...) @sdsempty()
  %404 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 11), align 8
  %405 = call i32 @strerror(i32 %404)
  %406 = call i32 (i32, i8*, i32, ...) @sdscatprintf(i32 %403, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %405)
  %407 = call i32 @addReplySds(%struct.TYPE_27__* %402, i32 %406)
  br label %408

408:                                              ; preds = %401, %397
  %409 = load i32, i32* @C_OK, align 4
  store i32 %409, i32* %2, align 4
  br label %713

410:                                              ; preds = %383, %371, %366
  %411 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 8), align 8
  %412 = icmp eq i32* %411, null
  br i1 %412, label %413, label %439

413:                                              ; preds = %410
  %414 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 0), align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %439

416:                                              ; preds = %413
  %417 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 10), align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %439

419:                                              ; preds = %416
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 4
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @CMD_WRITE, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %419
  %429 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 1), align 8
  %430 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 0), align 8
  %431 = icmp slt i64 %429, %430
  br i1 %431, label %432, label %439

432:                                              ; preds = %428
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %434 = call i32 @flagTransaction(%struct.TYPE_27__* %433)
  %435 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %436 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 5), align 4
  %437 = call i32 @addReply(%struct.TYPE_27__* %435, i32 %436)
  %438 = load i32, i32* @C_OK, align 4
  store i32 %438, i32* %2, align 4
  br label %713

439:                                              ; preds = %428, %419, %416, %413, %410
  %440 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 8), align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %466

442:                                              ; preds = %439
  %443 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 9), align 8
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %466

445:                                              ; preds = %442
  %446 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @CLIENT_MASTER, align 4
  %450 = and i32 %448, %449
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %466, label %452

452:                                              ; preds = %445
  %453 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %453, i32 0, i32 4
  %455 = load %struct.TYPE_30__*, %struct.TYPE_30__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @CMD_WRITE, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %466

461:                                              ; preds = %452
  %462 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %463 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 4), align 4
  %464 = call i32 @addReply(%struct.TYPE_27__* %462, i32 %463)
  %465 = load i32, i32* @C_OK, align 4
  store i32 %465, i32* %2, align 4
  br label %713

466:                                              ; preds = %452, %445, %442, %439
  %467 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @CLIENT_PUBSUB, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %522

473:                                              ; preds = %466
  %474 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = icmp eq i32 %476, 2
  br i1 %477, label %478, label %522

478:                                              ; preds = %473
  %479 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %479, i32 0, i32 4
  %481 = load %struct.TYPE_30__*, %struct.TYPE_30__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @pingCommand, align 8
  %485 = icmp ne i64 %483, %484
  br i1 %485, label %486, label %522

486:                                              ; preds = %478
  %487 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %488 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %487, i32 0, i32 4
  %489 = load %struct.TYPE_30__*, %struct.TYPE_30__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %489, i32 0, i32 1
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @subscribeCommand, align 8
  %493 = icmp ne i64 %491, %492
  br i1 %493, label %494, label %522

494:                                              ; preds = %486
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 4
  %497 = load %struct.TYPE_30__*, %struct.TYPE_30__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %497, i32 0, i32 1
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* @unsubscribeCommand, align 8
  %501 = icmp ne i64 %499, %500
  br i1 %501, label %502, label %522

502:                                              ; preds = %494
  %503 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %503, i32 0, i32 4
  %505 = load %struct.TYPE_30__*, %struct.TYPE_30__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %505, i32 0, i32 1
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @psubscribeCommand, align 8
  %509 = icmp ne i64 %507, %508
  br i1 %509, label %510, label %522

510:                                              ; preds = %502
  %511 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %511, i32 0, i32 4
  %513 = load %struct.TYPE_30__*, %struct.TYPE_30__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @punsubscribeCommand, align 8
  %517 = icmp ne i64 %515, %516
  br i1 %517, label %518, label %522

518:                                              ; preds = %510
  %519 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %520 = call i32 @addReplyError(%struct.TYPE_27__* %519, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0))
  %521 = load i32, i32* @C_OK, align 4
  store i32 %521, i32* %2, align 4
  br label %713

522:                                              ; preds = %510, %502, %494, %486, %478, %473, %466
  %523 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 8), align 8
  %524 = icmp ne i32* %523, null
  br i1 %524, label %525, label %548

525:                                              ; preds = %522
  %526 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 2), align 8
  %527 = load i64, i64* @REPL_STATE_CONNECTED, align 8
  %528 = icmp ne i64 %526, %527
  br i1 %528, label %529, label %548

529:                                              ; preds = %525
  %530 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 3), align 8
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %548

532:                                              ; preds = %529
  %533 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %533, i32 0, i32 4
  %535 = load %struct.TYPE_30__*, %struct.TYPE_30__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @CMD_STALE, align 4
  %539 = and i32 %537, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %548, label %541

541:                                              ; preds = %532
  %542 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %543 = call i32 @flagTransaction(%struct.TYPE_27__* %542)
  %544 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %545 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 3), align 4
  %546 = call i32 @addReply(%struct.TYPE_27__* %544, i32 %545)
  %547 = load i32, i32* @C_OK, align 4
  store i32 %547, i32* %2, align 4
  br label %713

548:                                              ; preds = %532, %529, %525, %522
  %549 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 7), align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %565

551:                                              ; preds = %548
  %552 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %553 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %552, i32 0, i32 4
  %554 = load %struct.TYPE_30__*, %struct.TYPE_30__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %554, i32 0, i32 3
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* @CMD_LOADING, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %565, label %560

560:                                              ; preds = %551
  %561 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %562 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 2), align 4
  %563 = call i32 @addReply(%struct.TYPE_27__* %561, i32 %562)
  %564 = load i32, i32* @C_OK, align 4
  store i32 %564, i32* %2, align 4
  br label %713

565:                                              ; preds = %551, %548
  %566 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 6), align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %653

568:                                              ; preds = %565
  %569 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %570 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %569, i32 0, i32 4
  %571 = load %struct.TYPE_30__*, %struct.TYPE_30__** %570, align 8
  %572 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %571, i32 0, i32 1
  %573 = load i64, i64* %572, align 8
  %574 = load i64, i64* @authCommand, align 8
  %575 = icmp ne i64 %573, %574
  br i1 %575, label %576, label %653

576:                                              ; preds = %568
  %577 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %577, i32 0, i32 4
  %579 = load %struct.TYPE_30__*, %struct.TYPE_30__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %579, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = load i64, i64* @helloCommand, align 8
  %583 = icmp ne i64 %581, %582
  br i1 %583, label %584, label %653

584:                                              ; preds = %576
  %585 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %586 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %585, i32 0, i32 4
  %587 = load %struct.TYPE_30__*, %struct.TYPE_30__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %587, i32 0, i32 1
  %589 = load i64, i64* %588, align 8
  %590 = load i64, i64* @replconfCommand, align 8
  %591 = icmp ne i64 %589, %590
  br i1 %591, label %592, label %653

592:                                              ; preds = %584
  %593 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %594 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %593, i32 0, i32 4
  %595 = load %struct.TYPE_30__*, %struct.TYPE_30__** %594, align 8
  %596 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %595, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = load i64, i64* @shutdownCommand, align 8
  %599 = icmp eq i64 %597, %598
  br i1 %599, label %600, label %619

600:                                              ; preds = %592
  %601 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = icmp eq i32 %603, 2
  br i1 %604, label %605, label %619

605:                                              ; preds = %600
  %606 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %607 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %606, i32 0, i32 5
  %608 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %608, i64 1
  %610 = load %struct.TYPE_23__*, %struct.TYPE_23__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %610, i32 0, i32 0
  %612 = load i64, i64* %611, align 8
  %613 = inttoptr i64 %612 to i8*
  %614 = getelementptr inbounds i8, i8* %613, i64 0
  %615 = load i8, i8* %614, align 1
  %616 = call signext i8 @tolower(i8 signext %615)
  %617 = sext i8 %616 to i32
  %618 = icmp eq i32 %617, 110
  br i1 %618, label %653, label %619

619:                                              ; preds = %605, %600, %592
  %620 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %621 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %620, i32 0, i32 4
  %622 = load %struct.TYPE_30__*, %struct.TYPE_30__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %622, i32 0, i32 1
  %624 = load i64, i64* %623, align 8
  %625 = load i64, i64* @scriptCommand, align 8
  %626 = icmp eq i64 %624, %625
  br i1 %626, label %627, label %646

627:                                              ; preds = %619
  %628 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %629 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = icmp eq i32 %630, 2
  br i1 %631, label %632, label %646

632:                                              ; preds = %627
  %633 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %634 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %633, i32 0, i32 5
  %635 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %635, i64 1
  %637 = load %struct.TYPE_23__*, %struct.TYPE_23__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %637, i32 0, i32 0
  %639 = load i64, i64* %638, align 8
  %640 = inttoptr i64 %639 to i8*
  %641 = getelementptr inbounds i8, i8* %640, i64 0
  %642 = load i8, i8* %641, align 1
  %643 = call signext i8 @tolower(i8 signext %642)
  %644 = sext i8 %643 to i32
  %645 = icmp eq i32 %644, 107
  br i1 %645, label %653, label %646

646:                                              ; preds = %632, %627, %619
  %647 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %648 = call i32 @flagTransaction(%struct.TYPE_27__* %647)
  %649 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %650 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 1), align 4
  %651 = call i32 @addReply(%struct.TYPE_27__* %649, i32 %650)
  %652 = load i32, i32* @C_OK, align 4
  store i32 %652, i32* %2, align 4
  br label %713

653:                                              ; preds = %632, %605, %584, %576, %568, %565
  %654 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %655 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 8
  %657 = load i32, i32* @CLIENT_MULTI, align 4
  %658 = and i32 %656, %657
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %698

660:                                              ; preds = %653
  %661 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %662 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %661, i32 0, i32 4
  %663 = load %struct.TYPE_30__*, %struct.TYPE_30__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %663, i32 0, i32 1
  %665 = load i64, i64* %664, align 8
  %666 = load i64, i64* @execCommand, align 8
  %667 = icmp ne i64 %665, %666
  br i1 %667, label %668, label %698

668:                                              ; preds = %660
  %669 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %670 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %669, i32 0, i32 4
  %671 = load %struct.TYPE_30__*, %struct.TYPE_30__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %671, i32 0, i32 1
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* @discardCommand, align 8
  %675 = icmp ne i64 %673, %674
  br i1 %675, label %676, label %698

676:                                              ; preds = %668
  %677 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %678 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %677, i32 0, i32 4
  %679 = load %struct.TYPE_30__*, %struct.TYPE_30__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %679, i32 0, i32 1
  %681 = load i64, i64* %680, align 8
  %682 = load i64, i64* @multiCommand, align 8
  %683 = icmp ne i64 %681, %682
  br i1 %683, label %684, label %698

684:                                              ; preds = %676
  %685 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %686 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %685, i32 0, i32 4
  %687 = load %struct.TYPE_30__*, %struct.TYPE_30__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %687, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = load i64, i64* @watchCommand, align 8
  %691 = icmp ne i64 %689, %690
  br i1 %691, label %692, label %698

692:                                              ; preds = %684
  %693 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %694 = call i32 @queueMultiCommand(%struct.TYPE_27__* %693)
  %695 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %696 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @shared, i32 0, i32 0), align 4
  %697 = call i32 @addReply(%struct.TYPE_27__* %695, i32 %696)
  br label %711

698:                                              ; preds = %684, %676, %668, %660, %653
  %699 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %700 = load i32, i32* @CMD_CALL_FULL, align 4
  %701 = call i32 @call(%struct.TYPE_27__* %699, i32 %700)
  %702 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 5), align 4
  %703 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %704 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %703, i32 0, i32 3
  store i32 %702, i32* %704, align 4
  %705 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @server, i32 0, i32 4), align 8
  %706 = call i64 @listLength(i32 %705)
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %710

708:                                              ; preds = %698
  %709 = call i32 (...) @handleClientsBlockedOnKeys()
  br label %710

710:                                              ; preds = %708, %698
  br label %711

711:                                              ; preds = %710, %692
  %712 = load i32, i32* @C_OK, align 4
  store i32 %712, i32* %2, align 4
  br label %713

713:                                              ; preds = %711, %646, %560, %541, %518, %461, %432, %408, %353, %316, %295, %213, %182, %129, %86, %24
  %714 = load i32, i32* %2, align 4
  ret i32 %714
}

declare dso_local i32 @moduleCallCommandFilters(%struct.TYPE_27__*) #1

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_30__* @lookupCommand(i64) #1

declare dso_local i32 @flagTransaction(%struct.TYPE_27__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @ACLCheckCommandPerm(%struct.TYPE_27__*) #1

declare dso_local i32* @getNodeByQuery(%struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_23__**, i32, i32*, i32*) #1

declare dso_local i32 @discardTransaction(%struct.TYPE_27__*) #1

declare dso_local i32 @clusterRedirectClient(%struct.TYPE_27__*, i32*, i32, i32) #1

declare dso_local i32 @freeMemoryIfNeededAndSafe(...) #1

declare dso_local i32 @trackingLimitUsedSlots(...) #1

declare dso_local i32 @writeCommandsDeniedByDiskError(...) #1

declare dso_local i32 @addReplySds(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_27__*, i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @queueMultiCommand(%struct.TYPE_27__*) #1

declare dso_local i32 @call(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @handleClientsBlockedOnKeys(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

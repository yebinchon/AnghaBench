; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_scriptCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_scriptCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"DEBUG (yes|sync|no) -- Set the debug mode for subsequent scripts executed.\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"EXISTS <sha1> [<sha1> ...] -- Return information about the existence of the scripts in the script cache.\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"FLUSH -- Flush the Lua scripts cache. Very dangerous on replicas.\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"KILL -- Kill the currently executing Lua script.\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"LOAD <script> -- Load a script into the scripts cache, without executing it.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@shared = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@server = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@PROPAGATE_REPL = common dso_local global i32 0, align 4
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"-NOTBUSY No scripts in execution right now.\0D\0A\00", align 1
@CLIENT_MASTER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [112 x i8] c"-UNKILLABLE The busy script was sent by a master instance in the context of replication and cannot be killed.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [195 x i8] c"-UNKILLABLE Sorry the script already executed write commands against the dataset. You can either wait the script termination or kill the server in a hard way using the SHUTDOWN NOSAVE command.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"SCRIPT DEBUG must be called outside a pipeline\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@CLIENT_LUA_DEBUG_SYNC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"Use SCRIPT DEBUG yes/sync/no\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scriptCommand(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca [6 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %13, i64 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcasecmp(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %10
  %21 = bitcast [6 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 48, i1 false)
  %22 = bitcast i8* %21 to [6 x i8*]*
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i32 0, i32 0), i8** %24, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %22, i32 0, i32 2
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0), i8** %25, align 16
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %22, i32 0, i32 3
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0), i8** %26, align 8
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %22, i32 0, i32 4
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i32 0, i32 0), i8** %27, align 16
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %3, i64 0, i64 0
  %30 = call i32 @addReplyHelp(%struct.TYPE_20__* %28, i8** %29)
  br label %280

31:                                               ; preds = %10, %1
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %39, i64 1
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcasecmp(i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %36
  %47 = call i32 (...) @scriptingReset()
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %50 = call i32 @addReply(%struct.TYPE_20__* %48, i32 %49)
  %51 = call i32 (...) @replicationScriptCacheFlush()
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 5), align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 5), align 8
  br label %279

54:                                               ; preds = %36, %31
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %108

59:                                               ; preds = %54
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %62, i64 1
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcasecmp(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %108, label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 2
  %75 = call i32 @addReplyArrayLen(%struct.TYPE_20__* %70, i32 %74)
  store i32 2, i32* %4, align 4
  br label %76

76:                                               ; preds = %104, %69
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %76
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 4), align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %86, i64 %88
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @dictFind(i32 %83, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 2), align 4
  %98 = call i32 @addReply(%struct.TYPE_20__* %96, i32 %97)
  br label %103

99:                                               ; preds = %82
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 1), align 4
  %102 = call i32 @addReply(%struct.TYPE_20__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %76

107:                                              ; preds = %76
  br label %278

108:                                              ; preds = %59, %54
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %144

113:                                              ; preds = %108
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %116, i64 1
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @strcasecmp(i32 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %144, label %123

123:                                              ; preds = %113
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 3), align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %128, i64 2
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = call i32* @luaCreateFunction(%struct.TYPE_20__* %124, i32 %125, %struct.TYPE_23__* %130)
  store i32* %131, i32** %5, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %280

135:                                              ; preds = %123
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @addReplyBulkCBuffer(%struct.TYPE_20__* %136, i32* %137, i32 40)
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %140 = load i32, i32* @PROPAGATE_REPL, align 4
  %141 = load i32, i32* @PROPAGATE_AOF, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @forceCommandPropagation(%struct.TYPE_20__* %139, i32 %142)
  br label %277

144:                                              ; preds = %113, %108
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %191

149:                                              ; preds = %144
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %152, i64 1
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @strcasecmp(i32 %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %191, label %159

159:                                              ; preds = %149
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 2), align 8
  %161 = icmp eq %struct.TYPE_19__* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %164 = call i32 @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %165 = call i32 @addReplySds(%struct.TYPE_20__* %163, i32 %164)
  br label %190

166:                                              ; preds = %159
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 2), align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @CLIENT_MASTER, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %175 = call i32 @sdsnew(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.11, i64 0, i64 0))
  %176 = call i32 @addReplySds(%struct.TYPE_20__* %174, i32 %175)
  br label %189

177:                                              ; preds = %166
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 1), align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %182 = call i32 @sdsnew(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.12, i64 0, i64 0))
  %183 = call i32 @addReplySds(%struct.TYPE_20__* %181, i32 %182)
  br label %188

184:                                              ; preds = %177
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %187 = call i32 @addReply(%struct.TYPE_20__* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188, %173
  br label %190

190:                                              ; preds = %189, %162
  br label %276

191:                                              ; preds = %149, %144
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %196, label %272

196:                                              ; preds = %191
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %199, i64 1
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @strcasecmp(i32 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %272, label %206

206:                                              ; preds = %196
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %208 = call i64 @clientHasPendingReplies(%struct.TYPE_20__* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %212 = call i32 @addReplyError(%struct.TYPE_20__* %211, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  br label %280

213:                                              ; preds = %206
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %216, i64 2
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @strcasecmp(i32 %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %213
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %225 = call i32 @ldbDisable(%struct.TYPE_20__* %224)
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %228 = call i32 @addReply(%struct.TYPE_20__* %226, i32 %227)
  br label %271

229:                                              ; preds = %213
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %232, i64 2
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @strcasecmp(i32 %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %229
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %241 = call i32 @ldbEnable(%struct.TYPE_20__* %240)
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %244 = call i32 @addReply(%struct.TYPE_20__* %242, i32 %243)
  br label %270

245:                                              ; preds = %229
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %248, i64 2
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @strcasecmp(i32 %252, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %266, label %255

255:                                              ; preds = %245
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %257 = call i32 @ldbEnable(%struct.TYPE_20__* %256)
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %260 = call i32 @addReply(%struct.TYPE_20__* %258, i32 %259)
  %261 = load i32, i32* @CLIENT_LUA_DEBUG_SYNC, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %269

266:                                              ; preds = %245
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %268 = call i32 @addReplyError(%struct.TYPE_20__* %267, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  br label %280

269:                                              ; preds = %255
  br label %270

270:                                              ; preds = %269, %239
  br label %271

271:                                              ; preds = %270, %223
  br label %275

272:                                              ; preds = %196, %191
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %274 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_20__* %273)
  br label %275

275:                                              ; preds = %272, %271
  br label %276

276:                                              ; preds = %275, %190
  br label %277

277:                                              ; preds = %276, %135
  br label %278

278:                                              ; preds = %277, %107
  br label %279

279:                                              ; preds = %278, %46
  br label %280

280:                                              ; preds = %134, %210, %266, %279, %20
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_20__*, i8**) #1

declare dso_local i32 @scriptingReset(...) #1

declare dso_local i32 @addReply(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @replicationScriptCacheFlush(...) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @dictFind(i32, i32) #1

declare dso_local i32* @luaCreateFunction(%struct.TYPE_20__*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @forceCommandPropagation(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_20__*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @ldbDisable(%struct.TYPE_20__*) #1

declare dso_local i32 @ldbEnable(%struct.TYPE_20__*) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

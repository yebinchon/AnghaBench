; ModuleID = '/home/carl/AnghaBench/redis/src/extr_multi.c_execCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_multi.c_execCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i64, i32, i32*, i64 }
%struct.TYPE_22__ = type { i32*, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32**, %struct.TYPE_20__*, %struct.redisCommand*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.redisCommand = type { i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.redisCommand*, i32** }

@server = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@CLIENT_MULTI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"EXEC without MULTI\00", align 1
@CLIENT_DIRTY_CAS = common dso_local global i32 0, align 4
@CLIENT_DIRTY_EXEC = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@CLIENT_MASTER = common dso_local global i32 0, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Transaction contains write commands but instance is now a read-only replica. EXEC aborted.\00", align 1
@CMD_READONLY = common dso_local global i32 0, align 4
@CMD_ADMIN = common dso_local global i32 0, align 4
@ACL_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [160 x i8] c"-NOPERM ACLs rules changed between the moment the transaction was accumulated and the EXEC call. This command is no longer allowed for the following reason: %s\00", align 1
@ACL_DENIED_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"no permission to execute the command or subcommand\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"no permission to touch the specified keys\00", align 1
@CMD_CALL_NONE = common dso_local global i32 0, align 4
@CMD_CALL_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"*1\0D\0A$4\0D\0AEXEC\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execCommand(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.redisCommand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 4), align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CLIENT_MULTI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = call i32 @addReplyError(%struct.TYPE_21__* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %278

24:                                               ; preds = %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CLIENT_DIRTY_CAS, align 4
  %29 = load i32, i32* @CLIENT_DIRTY_EXEC, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %24
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CLIENT_DIRTY_EXEC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 1), align 8
  br label %50

43:                                               ; preds = %33
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @shared, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %43, %41
  %51 = phi i32 [ %42, %41 ], [ %49, %43 ]
  %52 = call i32 @addReply(%struct.TYPE_21__* %34, i32 %51)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = call i32 @discardTransaction(%struct.TYPE_21__* %53)
  br label %256

55:                                               ; preds = %24
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %55
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 4), align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 5), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CLIENT_MASTER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CMD_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %81 = call i32 @addReplyError(%struct.TYPE_21__* %80, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %83 = call i32 @discardTransaction(%struct.TYPE_21__* %82)
  br label %256

84:                                               ; preds = %71, %64, %61, %58, %55
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %86 = call i32 @unwatchAllKeys(%struct.TYPE_21__* %85)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load i32**, i32*** %88, align 8
  store i32** %89, i32*** %4, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 5
  %95 = load %struct.redisCommand*, %struct.redisCommand** %94, align 8
  store %struct.redisCommand* %95, %struct.redisCommand** %6, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @addReplyArrayLen(%struct.TYPE_21__* %96, i32 %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %218, %84
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %221

109:                                              ; preds = %102
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 3
  store i32** %129, i32*** %131, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load %struct.redisCommand*, %struct.redisCommand** %139, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 5
  store %struct.redisCommand* %140, %struct.redisCommand** %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %109
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 5
  %148 = load %struct.redisCommand*, %struct.redisCommand** %147, align 8
  %149 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CMD_READONLY, align 4
  %152 = load i32, i32* @CMD_ADMIN, align 4
  %153 = or i32 %151, %152
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %145
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %158 = call i32 @execCommandPropagateMulti(%struct.TYPE_21__* %157)
  store i32 1, i32* %7, align 4
  br label %159

159:                                              ; preds = %156, %145, %109
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %161 = call i32 @ACLCheckCommandPerm(%struct.TYPE_21__* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @ACL_OK, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %159
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @ACL_DENIED_CMD, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0)
  %172 = call i32 @addReplyErrorFormat(%struct.TYPE_21__* %166, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.2, i64 0, i64 0), i8* %171)
  br label %184

173:                                              ; preds = %159
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %173
  %178 = load i32, i32* @CMD_CALL_NONE, align 4
  br label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @CMD_CALL_FULL, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = call i32 @call(%struct.TYPE_21__* %174, i32 %182)
  br label %184

184:                                              ; preds = %181, %165
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  store i32 %187, i32* %195, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 3
  %198 = load i32**, i32*** %197, align 8
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  store i32** %198, i32*** %206, align 8
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 5
  %209 = load %struct.redisCommand*, %struct.redisCommand** %208, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  store %struct.redisCommand* %209, %struct.redisCommand** %217, align 8
  br label %218

218:                                              ; preds = %184
  %219 = load i32, i32* %3, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %3, align 4
  br label %102

221:                                              ; preds = %102
  %222 = load i32**, i32*** %4, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 3
  store i32** %222, i32*** %224, align 8
  %225 = load i32, i32* %5, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 5
  store %struct.redisCommand* %228, %struct.redisCommand** %230, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %232 = call i32 @discardTransaction(%struct.TYPE_21__* %231)
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %221
  %236 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 4), align 8
  %237 = icmp eq i32* %236, null
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 3), align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 3), align 8
  %241 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 2), align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %235
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %246
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %250 = load i8*, i8** %11, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = call i32 @strlen(i8* %251)
  %253 = call i32 @feedReplicationBacklog(i8* %250, i32 %252)
  br label %254

254:                                              ; preds = %249, %246, %243, %235
  br label %255

255:                                              ; preds = %254, %221
  br label %256

256:                                              ; preds = %255, %79, %50
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %258 = call i64 @listLength(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %256
  %261 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 1), align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %278, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @server, i32 0, i32 0), align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 4
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 3
  %273 = load i32**, i32*** %272, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @replicationFeedMonitors(%struct.TYPE_21__* %264, i32 %265, i32 %270, i32** %273, i32 %276)
  br label %278

278:                                              ; preds = %21, %263, %260, %256
  ret void
}

declare dso_local i32 @addReplyError(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @discardTransaction(%struct.TYPE_21__*) #1

declare dso_local i32 @unwatchAllKeys(%struct.TYPE_21__*) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @execCommandPropagateMulti(%struct.TYPE_21__*) #1

declare dso_local i32 @ACLCheckCommandPerm(%struct.TYPE_21__*) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_21__*, i8*, i8*) #1

declare dso_local i32 @call(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @feedReplicationBacklog(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @replicationFeedMonitors(%struct.TYPE_21__*, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

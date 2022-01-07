; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_commandCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_commandCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32 }
%struct.redisCommand = type { i64, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"(no subcommand) -- Return details about all Redis commands.\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"COUNT -- Return the total number of commands in this Redis server.\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"GETKEYS <full-command> -- Return the keys from a full Redis command.\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"INFO [command-name ...] -- Return details about multiple Redis commands.\00", align 1
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"getkeys\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Invalid command specified\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"The command has no key arguments\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Invalid number of arguments specified for command\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Invalid arguments specified for command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commandCommand(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.redisCommand*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %18, i64 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcasecmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = bitcast [5 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 40, i1 false)
  %27 = bitcast i8* %26 to [5 x i8*]*
  %28 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i32 0, i32 0), i8** %28, align 16
  %29 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 1
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0), i8** %29, align 8
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 2
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i32 0, i32 0), i8** %30, align 16
  %31 = getelementptr inbounds [5 x i8*], [5 x i8*]* %27, i32 0, i32 3
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i32 0, i32 0), i8** %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %34 = call i32 @addReplyHelp(%struct.TYPE_13__* %32, i8** %33)
  br label %244

35:                                               ; preds = %15, %1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %43 = call i32 @dictSize(i32 %42)
  %44 = call i32 @addReplyArrayLen(%struct.TYPE_13__* %41, i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %46 = call i32* @dictGetIterator(i32 %45)
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %51, %40
  %48 = load i32*, i32** %3, align 8
  %49 = call i32* @dictNext(i32* %48)
  store i32* %49, i32** %4, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @dictGetVal(i32* %53)
  %55 = call i32 @addReplyCommand(%struct.TYPE_13__* %52, i32 %54)
  br label %47

56:                                               ; preds = %47
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @dictReleaseIterator(i32* %57)
  br label %243

59:                                               ; preds = %35
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %62, i64 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcasecmp(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %100, label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 2
  %75 = call i32 @addReplyArrayLen(%struct.TYPE_13__* %70, i32 %74)
  store i32 2, i32* %6, align 4
  br label %76

76:                                               ; preds = %96, %69
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %87, i64 %89
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dictFetchValue(i32 %84, i32 %93)
  %95 = call i32 @addReplyCommand(%struct.TYPE_13__* %83, i32 %94)
  br label %96

96:                                               ; preds = %82
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %76

99:                                               ; preds = %76
  br label %242

100:                                              ; preds = %59
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %103, i64 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @strcasecmp(i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %100
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 4
  %118 = call i32 @dictSize(i32 %117)
  %119 = call i32 @addReplyLongLong(%struct.TYPE_13__* %116, i32 %118)
  br label %241

120:                                              ; preds = %110, %100
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %123, i64 1
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcasecmp(i32 %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %237, label %130

130:                                              ; preds = %120
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %133, 3
  br i1 %134, label %135, label %237

135:                                              ; preds = %130
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %138, i64 2
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call %struct.redisCommand* @lookupCommand(i32 %142)
  store %struct.redisCommand* %143, %struct.redisCommand** %7, align 8
  %144 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %145 = icmp ne %struct.redisCommand* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %135
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = call i32 @addReplyError(%struct.TYPE_13__* %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %244

149:                                              ; preds = %135
  %150 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %151 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %156 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %161 = call i32 @addReplyError(%struct.TYPE_13__* %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %244

162:                                              ; preds = %154, %149
  %163 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %164 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %169 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, 2
  %175 = icmp ne i32 %170, %174
  br i1 %175, label %186, label %176

176:                                              ; preds = %167, %162
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 2
  %181 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %182 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 0, %183
  %185 = icmp slt i32 %180, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %176, %167
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %188 = call i32 @addReplyError(%struct.TYPE_13__* %187, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %244

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.redisCommand*, %struct.redisCommand** %7, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %195, i64 2
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %199, 2
  %201 = call i32* @getKeysFromCommand(%struct.redisCommand* %192, %struct.TYPE_15__** %196, i32 %200, i32* %9)
  store i32* %201, i32** %8, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %191
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %206 = call i32 @addReplyError(%struct.TYPE_13__* %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  br label %236

207:                                              ; preds = %191
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @addReplyArrayLen(%struct.TYPE_13__* %208, i32 %209)
  store i32 0, i32* %10, align 4
  br label %211

211:                                              ; preds = %230, %207
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %211
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %218, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %219, i64 %226
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = call i32 @addReplyBulk(%struct.TYPE_13__* %216, %struct.TYPE_15__* %228)
  br label %230

230:                                              ; preds = %215
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %10, align 4
  br label %211

233:                                              ; preds = %211
  %234 = load i32*, i32** %8, align 8
  %235 = call i32 @getKeysFreeResult(i32* %234)
  br label %236

236:                                              ; preds = %233, %204
  br label %240

237:                                              ; preds = %130, %120
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %239 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_13__* %238)
  br label %240

240:                                              ; preds = %237, %236
  br label %241

241:                                              ; preds = %240, %115
  br label %242

242:                                              ; preds = %241, %99
  br label %243

243:                                              ; preds = %242, %56
  br label %244

244:                                              ; preds = %146, %159, %186, %243, %25
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_13__*, i8**) #1

declare dso_local i32 @addReplyArrayLen(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @addReplyCommand(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dictGetVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @dictFetchValue(i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.redisCommand* @lookupCommand(i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_13__*, i8*) #1

declare dso_local i32* @getKeysFromCommand(%struct.redisCommand*, %struct.TYPE_15__**, i32, i32*) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @getKeysFreeResult(i32*) #1

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

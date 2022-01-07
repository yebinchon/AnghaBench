; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliIntegrateHelp.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_cliIntegrateHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.commandHelp*, i32*, i32, i32 }
%struct.commandHelp = type { i8*, i8*, i64, i8*, i32 }
%struct.TYPE_8__ = type { i64, i64, i8*, i32, %struct.TYPE_8__** }

@CC_QUIET = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i64 0, align 8
@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"COMMAND\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@REDIS_REPLY_STRING = common dso_local global i64 0, align 8
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@helpEntriesLen = common dso_local global i32 0, align 4
@helpEntries = common dso_local global %struct.TYPE_9__* null, align 8
@CLI_HELP_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"key \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"...options...\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Help not available\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"not known\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cliIntegrateHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cliIntegrateHelp() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.commandHelp*, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @CC_QUIET, align 4
  %11 = call i64 @cliConnect(i32 %10)
  %12 = load i64, i64* @REDIS_ERR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %242

15:                                               ; preds = %0
  %16 = load i32, i32* @context, align 4
  %17 = call %struct.TYPE_8__* @redisCommand(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %1, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %15
  br label %242

27:                                               ; preds = %20
  store i64 0, i64* %2, align 8
  br label %28

28:                                               ; preds = %236, %27
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %239

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %36, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %37, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %3, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %81, label %46

46:                                               ; preds = %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %49, 4
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REDIS_REPLY_STRING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %51
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %64, i64 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %61
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %74, i64 3
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71, %61, %51, %46, %34
  br label %242

82:                                               ; preds = %71
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %85, i64 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %109, %82
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @helpEntriesLen, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @helpEntries, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %97
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %6, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @strcasecmp(i32 %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %94
  br label %112

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %90

112:                                              ; preds = %107, %90
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @helpEntriesLen, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %236

117:                                              ; preds = %112
  %118 = load i32, i32* @helpEntriesLen, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @helpEntriesLen, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @helpEntries, align 8
  %121 = load i32, i32* @helpEntriesLen, align 4
  %122 = sext i32 %121 to i64
  %123 = mul i64 32, %122
  %124 = trunc i64 %123 to i32
  %125 = call %struct.TYPE_9__* @zrealloc(%struct.TYPE_9__* %120, i32 %124)
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** @helpEntries, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** @helpEntries, align 8
  %127 = load i32, i32* @helpEntriesLen, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %129
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %7, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = call i8* @zmalloc(i32 4)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  store i32* %134, i32** %136, align 8
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @sdsnew(i8* %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @CLI_HELP_COMMAND, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @sdstoupper(i32 %157)
  %159 = call i8* @zmalloc(i32 40)
  %160 = bitcast i8* %159 to %struct.commandHelp*
  store %struct.commandHelp* %160, %struct.commandHelp** %8, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %167 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = call i8* (...) @sdsempty()
  %169 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %170 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %173, i64 1
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @llabs(i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %9, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %183, i64 3
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %198

189:                                              ; preds = %117
  %190 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %191 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @sdscat(i8* %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %194 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %195 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %194, i32 0, i32 3
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %189, %117
  br label %199

199:                                              ; preds = %203, %198
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %9, align 4
  %202 = icmp sgt i32 %200, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %205 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = call i8* @sdscat(i8* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %208 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %209 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %208, i32 0, i32 3
  store i8* %207, i8** %209, align 8
  br label %199

210:                                              ; preds = %199
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 4
  %213 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %213, i64 1
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %221 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = call i8* @sdscat(i8* %222, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %224 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %225 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %219, %210
  %227 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %228 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %227, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %228, align 8
  %229 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %230 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %229, i32 0, i32 2
  store i64 0, i64* %230, align 8
  %231 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %232 = getelementptr inbounds %struct.commandHelp, %struct.commandHelp* %231, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %232, align 8
  %233 = load %struct.commandHelp*, %struct.commandHelp** %8, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  store %struct.commandHelp* %233, %struct.commandHelp** %235, align 8
  br label %236

236:                                              ; preds = %226, %116
  %237 = load i64, i64* %2, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %2, align 8
  br label %28

239:                                              ; preds = %28
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %241 = call i32 @freeReplyObject(%struct.TYPE_8__* %240)
  br label %242

242:                                              ; preds = %239, %81, %26, %14
  ret void
}

declare dso_local i64 @cliConnect(i32) #1

declare dso_local %struct.TYPE_8__* @redisCommand(i32, i8*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local %struct.TYPE_9__* @zrealloc(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @sdstoupper(i32) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i32 @llabs(i32) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

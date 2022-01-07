; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_addReplyCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_addReplyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redisCommand = type { i32, i32, i32, i32, i64, i32, i32 }

@CMD_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@CMD_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@CMD_DENYOOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"denyoom\00", align 1
@CMD_ADMIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@CMD_PUBSUB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"pubsub\00", align 1
@CMD_NOSCRIPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"noscript\00", align 1
@CMD_RANDOM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@CMD_SORT_FOR_SCRIPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"sort_for_script\00", align 1
@CMD_LOADING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"loading\00", align 1
@CMD_STALE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@CMD_SKIP_MONITOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"skip_monitor\00", align 1
@CMD_SKIP_SLOWLOG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"skip_slowlog\00", align 1
@CMD_ASKING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"asking\00", align 1
@CMD_FAST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@CMD_MODULE = common dso_local global i32 0, align 4
@CMD_MODULE_GETKEYS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"movablekeys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyCommand(i32* %0, %struct.redisCommand* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.redisCommand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.redisCommand* %1, %struct.redisCommand** %4, align 8
  %7 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %8 = icmp ne %struct.redisCommand* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @addReplyNull(i32* %10)
  br label %185

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @addReplyArrayLen(i32* %13, i32 7)
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %17 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @addReplyBulkCString(i32* %15, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %22 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @addReplyLongLong(i32* %20, i32 %23)
  store i32 0, i32* %5, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @addReplyDeferredLen(i32* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %29 = load i32, i32* @CMD_WRITE, align 4
  %30 = call i64 @addReplyCommandFlag(i32* %27, %struct.redisCommand* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %37 = load i32, i32* @CMD_READONLY, align 4
  %38 = call i64 @addReplyCommandFlag(i32* %35, %struct.redisCommand* %36, i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %45 = load i32, i32* @CMD_DENYOOM, align 4
  %46 = call i64 @addReplyCommandFlag(i32* %43, %struct.redisCommand* %44, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %53 = load i32, i32* @CMD_ADMIN, align 4
  %54 = call i64 @addReplyCommandFlag(i32* %51, %struct.redisCommand* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %61 = load i32, i32* @CMD_PUBSUB, align 4
  %62 = call i64 @addReplyCommandFlag(i32* %59, %struct.redisCommand* %60, i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %69 = load i32, i32* @CMD_NOSCRIPT, align 4
  %70 = call i64 @addReplyCommandFlag(i32* %67, %struct.redisCommand* %68, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %77 = load i32, i32* @CMD_RANDOM, align 4
  %78 = call i64 @addReplyCommandFlag(i32* %75, %struct.redisCommand* %76, i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %5, align 4
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %85 = load i32, i32* @CMD_SORT_FOR_SCRIPT, align 4
  %86 = call i64 @addReplyCommandFlag(i32* %83, %struct.redisCommand* %84, i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  %91 = load i32*, i32** %3, align 8
  %92 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %93 = load i32, i32* @CMD_LOADING, align 4
  %94 = call i64 @addReplyCommandFlag(i32* %91, %struct.redisCommand* %92, i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %5, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %101 = load i32, i32* @CMD_STALE, align 4
  %102 = call i64 @addReplyCommandFlag(i32* %99, %struct.redisCommand* %100, i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %109 = load i32, i32* @CMD_SKIP_MONITOR, align 4
  %110 = call i64 @addReplyCommandFlag(i32* %107, %struct.redisCommand* %108, i32 %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %5, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %117 = load i32, i32* @CMD_SKIP_SLOWLOG, align 4
  %118 = call i64 @addReplyCommandFlag(i32* %115, %struct.redisCommand* %116, i32 %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %5, align 4
  %123 = load i32*, i32** %3, align 8
  %124 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %125 = load i32, i32* @CMD_ASKING, align 4
  %126 = call i64 @addReplyCommandFlag(i32* %123, %struct.redisCommand* %124, i32 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %5, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %133 = load i32, i32* @CMD_FAST, align 4
  %134 = call i64 @addReplyCommandFlag(i32* %131, %struct.redisCommand* %132, i32 %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %5, align 4
  %139 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %140 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %12
  %144 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %145 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CMD_MODULE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143, %12
  %151 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %152 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CMD_MODULE_GETKEYS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150, %143
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @addReplyStatus(i32* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %157, %150
  %163 = load i32*, i32** %3, align 8
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @setDeferredSetLen(i32* %163, i8* %164, i32 %165)
  %167 = load i32*, i32** %3, align 8
  %168 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %169 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @addReplyLongLong(i32* %167, i32 %170)
  %172 = load i32*, i32** %3, align 8
  %173 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %174 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @addReplyLongLong(i32* %172, i32 %175)
  %177 = load i32*, i32** %3, align 8
  %178 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %179 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @addReplyLongLong(i32* %177, i32 %180)
  %182 = load i32*, i32** %3, align 8
  %183 = load %struct.redisCommand*, %struct.redisCommand** %4, align 8
  %184 = call i32 @addReplyCommandCategories(i32* %182, %struct.redisCommand* %183)
  br label %185

185:                                              ; preds = %162, %9
  ret void
}

declare dso_local i32 @addReplyNull(i32*) #1

declare dso_local i32 @addReplyArrayLen(i32*, i32) #1

declare dso_local i32 @addReplyBulkCString(i32*, i32) #1

declare dso_local i32 @addReplyLongLong(i32*, i32) #1

declare dso_local i8* @addReplyDeferredLen(i32*) #1

declare dso_local i64 @addReplyCommandFlag(i32*, %struct.redisCommand*, i32, i8*) #1

declare dso_local i32 @addReplyStatus(i32*, i8*) #1

declare dso_local i32 @setDeferredSetLen(i32*, i8*, i32) #1

declare dso_local i32 @addReplyCommandCategories(i32*, %struct.redisCommand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

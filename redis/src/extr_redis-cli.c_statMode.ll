; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_statMode.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_statMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i8* }

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [157 x i8] c"------- data ------ --------------------- load -------------------- - child -\0Akeys       mem      clients blocked requests            connections          \0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"db%d:keys\00", align 1
@LONG_MIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%-11s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"used_memory\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%-8s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"connected_clients\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"blocked_clients\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"total_commands_processed\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%ld (+%ld)\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%-19s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"total_connections_received\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" %-12s\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"bgsave_in_progress\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"aof_rewrite_in_progress\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"loading\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"SAVE\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"AOF\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"SAVE+AOF\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @statMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statMode() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %0, %152
  %9 = load i32, i32* @context, align 4
  %10 = call %struct.TYPE_5__* @reconnectingRedisCommand(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %1, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = srem i32 %23, 20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  store i64 0, i64* %2, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 20
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %42 = call i32 @getLongInfoField(i8* %40, i8* %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @LONG_MIN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %33
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %2, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %30

55:                                               ; preds = %30
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %57 = load i64, i64* %2, align 8
  %58 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %57)
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @getLongInfoField(i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %2, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @bytesToHuman(i8* %66, i64 %67)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @getLongInfoField(i8* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %2, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %77 = load i64, i64* %2, align 8
  %78 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @getLongInfoField(i8* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %2, align 8
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %87 = load i64, i64* %2, align 8
  %88 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %87)
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @getLongInfoField(i8* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %2, align 8
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* %3, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %55
  br label %105

101:                                              ; preds = %55
  %102 = load i64, i64* %2, align 8
  %103 = load i64, i64* %3, align 8
  %104 = sub nsw i64 %102, %103
  br label %105

105:                                              ; preds = %101, %100
  %106 = phi i64 [ 0, %100 ], [ %104, %101 ]
  %107 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 %97, i64 %106)
  %108 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  %110 = load i64, i64* %2, align 8
  store i64 %110, i64* %3, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @getLongInfoField(i8* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %2, align 8
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %117 = load i64, i64* %2, align 8
  %118 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %117)
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @getLongInfoField(i8* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %2, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @getLongInfoField(i8* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %130 = shl i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %2, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %2, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @getLongInfoField(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %138 = shl i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %2, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %2, align 8
  %142 = load i64, i64* %2, align 8
  switch i64 %142, label %152 [
    i64 0, label %143
    i64 1, label %144
    i64 2, label %146
    i64 3, label %148
    i64 4, label %150
  ]

143:                                              ; preds = %105
  br label %152

144:                                              ; preds = %105
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %152

146:                                              ; preds = %105
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %152

148:                                              ; preds = %105
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  br label %152

150:                                              ; preds = %105
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %152

152:                                              ; preds = %105, %150, %148, %146, %144, %143
  %153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %155 = call i32 @freeReplyObject(%struct.TYPE_5__* %154)
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %157 = call i32 @usleep(i32 %156)
  br label %8
}

declare dso_local %struct.TYPE_5__* @reconnectingRedisCommand(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @getLongInfoField(i8*, i8*) #1

declare dso_local i32 @bytesToHuman(i8*, i64) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_5__*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

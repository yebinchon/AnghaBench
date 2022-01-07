; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_aofUpdateCurrentSize.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_aofUpdateCurrentSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.redis_stat = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to obtain the AOF file length. stat: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"aof-fstat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aofUpdateCurrentSize() #0 {
  %1 = alloca %struct.redis_stat, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @latencyStartMonitor(i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %6 = call i32 @redis_fstat(i32 %5, %struct.redis_stat* %1)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @LL_WARNING, align 4
  %10 = load i32, i32* @errno, align 4
  %11 = call i32 @strerror(i32 %10)
  %12 = call i32 @serverLog(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %16

13:                                               ; preds = %0
  %14 = getelementptr inbounds %struct.redis_stat, %struct.redis_stat* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @latencyEndMonitor(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i32 @redis_fstat(i32, %struct.redis_stat*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

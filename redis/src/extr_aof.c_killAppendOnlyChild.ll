; ModuleID = '/home/carl/AnghaBench/redis/src/extr_aof.c_killAppendOnlyChild.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_aof.c_killAppendOnlyChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Killing running AOF rewrite child: %ld\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @killAppendOnlyChild() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %28

5:                                                ; preds = %0
  %6 = load i32, i32* @LL_NOTICE, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %8 = sext i32 %7 to i64
  %9 = call i32 @serverLog(i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %11 = load i32, i32* @SIGUSR1, align 4
  %12 = call i32 @kill(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  br label %15

15:                                               ; preds = %19, %14
  %16 = call i32 @wait3(i32* %1, i32 0, i32* null)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %15

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %5
  %22 = call i32 (...) @aofRewriteBufferReset()
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %24 = call i32 @aofRemoveTempFile(i32 %23)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %25 = call i32 (...) @aofClosePipes()
  %26 = call i32 (...) @closeChildInfoPipe()
  %27 = call i32 (...) @updateDictResizePolicy()
  br label %28

28:                                               ; preds = %21, %4
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, i64) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @wait3(i32*, i32, i32*) #1

declare dso_local i32 @aofRewriteBufferReset(...) #1

declare dso_local i32 @aofRemoveTempFile(i32) #1

declare dso_local i32 @aofClosePipes(...) #1

declare dso_local i32 @closeChildInfoPipe(...) #1

declare dso_local i32 @updateDictResizePolicy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

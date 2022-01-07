; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbEndSession.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbEndSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"<endsession>\00", align 1
@ldb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Lua debugging session child exiting\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Redis synchronous debugging eval session ended\00", align 1
@CLIENT_CLOSE_AFTER_REPLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbEndSession(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = call i32 @sdsnew(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @ldbLog(i32 %3)
  %5 = call i32 (...) @ldbSendLogs()
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 4), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = call i32 @writeToClient(%struct.TYPE_5__* %9, i32 0)
  %11 = load i32, i32* @LL_WARNING, align 4
  %12 = call i32 @serverLog(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @exitFromChild(i32 0)
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @LL_WARNING, align 4
  %16 = call i32 @serverLog(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 3), align 4
  %19 = call i32 @connNonBlock(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 3), align 4
  %21 = call i32 @connSendTimeout(i32 %20, i32 0)
  %22 = load i32, i32* @CLIENT_CLOSE_AFTER_REPLY, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 2), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 1), align 8
  %29 = call i32 @sdsfreesplitres(i32 %27, i64 %28)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ldb, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @ldbLog(i32) #1

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @ldbSendLogs(...) #1

declare dso_local i32 @writeToClient(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @exitFromChild(i32) #1

declare dso_local i32 @connNonBlock(i32) #1

declare dso_local i32 @connSendTimeout(i32, i32) #1

declare dso_local i32 @sdsfreesplitres(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbKillForkedSessions.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbKillForkedSessions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ldb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Killing debugging session %ld\00", align 1
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldbKillForkedSessions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ldb, i32 0, i32 0), align 4
  %5 = call i32 @listRewind(i32 %4, i32* %1)
  br label %6

6:                                                ; preds = %9, %0
  %7 = call %struct.TYPE_4__* @listNext(i32* %1)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %2, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* @LL_WARNING, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @serverLog(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @SIGKILL, align 4
  %18 = call i32 @kill(i64 %16, i32 %17)
  br label %6

19:                                               ; preds = %6
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ldb, i32 0, i32 0), align 4
  %21 = call i32 @listRelease(i32 %20)
  %22 = call i32 (...) @listCreate()
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ldb, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local %struct.TYPE_4__* @listNext(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i64) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @listRelease(i32) #1

declare dso_local i32 @listCreate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

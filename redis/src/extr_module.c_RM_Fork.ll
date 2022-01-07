; ModuleID = '/home/carl/AnghaBench/redis/src/extr_module.c_RM_Fork.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_module.c_RM_Fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"redis-module-fork\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't fork for module: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@moduleForkInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Module fork started pid: %d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RM_Fork(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call i64 (...) @hasActiveChildProcess()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

10:                                               ; preds = %2
  %11 = call i32 (...) @openChildInfoPipe()
  %12 = call i32 (...) @redisFork()
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @redisSetProcTitle(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %33

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = call i32 (...) @closeChildInfoPipe()
  %21 = load i32, i32* @LL_WARNING, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @serverLog(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @moduleForkInfo, i32 0, i32 1), align 8
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @moduleForkInfo, i32 0, i32 0), align 8
  %29 = load i32, i32* @LL_NOTICE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @serverLog(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %19
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %9
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @hasActiveChildProcess(...) #1

declare dso_local i32 @openChildInfoPipe(...) #1

declare dso_local i32 @redisFork(...) #1

declare dso_local i32 @redisSetProcTitle(i8*) #1

declare dso_local i32 @closeChildInfoPipe(...) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

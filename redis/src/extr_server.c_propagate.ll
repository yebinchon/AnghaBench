; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_propagate.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.redisCommand = type { i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_OFF = common dso_local global i64 0, align 8
@PROPAGATE_AOF = common dso_local global i32 0, align 4
@PROPAGATE_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @propagate(%struct.redisCommand* %0, i32 %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.redisCommand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.redisCommand* %0, %struct.redisCommand** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %12 = load i64, i64* @AOF_OFF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %5
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PROPAGATE_AOF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.redisCommand*, %struct.redisCommand** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @feedAppendOnlyFile(%struct.redisCommand* %20, i32 %21, i32** %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %14, %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @PROPAGATE_REPL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @replicationFeedSlaves(i32 %31, i32 %32, i32** %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @feedAppendOnlyFile(%struct.redisCommand*, i32, i32**, i32) #1

declare dso_local i32 @replicationFeedSlaves(i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

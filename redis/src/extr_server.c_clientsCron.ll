; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_clientsCron.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_clientsCron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CLIENTS_CRON_MIN_ITERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clientsCron() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %7 = call i32 @listLength(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %2, align 4
  %11 = call i32 (...) @mstime()
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @CLIENTS_CRON_MIN_ITERATIONS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @CLIENTS_CRON_MIN_ITERATIONS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @CLIENTS_CRON_MIN_ITERATIONS, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %0
  br label %26

26:                                               ; preds = %58, %57, %52, %47, %25
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %28 = call i32 @listLength(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %2, align 4
  %33 = icmp ne i32 %31, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %38 = call i32 @listRotate(i32 %37)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %40 = call i32* @listFirst(i32 %39)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @listNodeValue(i32* %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @clientsCronHandleTimeout(i32* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %26

48:                                               ; preds = %36
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @clientsCronResizeQueryBuffer(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %26

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @clientsCronTrackExpansiveClients(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %26

58:                                               ; preds = %53
  br label %26

59:                                               ; preds = %34
  ret void
}

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @listRotate(i32) #1

declare dso_local i32* @listFirst(i32) #1

declare dso_local i32* @listNodeValue(i32*) #1

declare dso_local i64 @clientsCronHandleTimeout(i32*, i32) #1

declare dso_local i64 @clientsCronResizeQueryBuffer(i32*) #1

declare dso_local i64 @clientsCronTrackExpansiveClients(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

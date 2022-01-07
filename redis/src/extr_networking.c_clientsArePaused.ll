; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_clientsArePaused.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_clientsArePaused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CLIENT_SLAVE = common dso_local global i32 0, align 4
@CLIENT_BLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clientsArePaused() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  %12 = call i32 @listRewind(i32 %11, i32* %2)
  br label %13

13:                                               ; preds = %28, %27, %10
  %14 = call i32* @listNext(i32* %2)
  store i32* %14, i32** %1, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32*, i32** %1, align 8
  %18 = call %struct.TYPE_5__* @listNodeValue(i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CLIENT_SLAVE, align 4
  %23 = load i32, i32* @CLIENT_BLOCKED, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %13

28:                                               ; preds = %16
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = call i32 @queueClientForReprocessing(%struct.TYPE_5__* %29)
  br label %13

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %6, %0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  ret i32 %33
}

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_5__* @listNodeValue(i32*) #1

declare dso_local i32 @queueClientForReprocessing(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__timeouts.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_event.c_adns__timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.timeval = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__timeouts(%struct.TYPE_5__* %0, i32 %1, %struct.timeval** %2, %struct.timeval* %3, i32 %4) #0 {
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval**, align 8
  %10 = alloca %struct.timeval*, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.timeval** %2, %struct.timeval*** %9, align 8
  store %struct.timeval* %3, %struct.timeval** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.timeval**, %struct.timeval*** %9, align 8
  %15 = load %struct.timeval*, %struct.timeval** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @timeouts_queue(%struct.TYPE_5__* %12, i32 %13, %struct.timeval** %14, %struct.timeval* %15, i32 %19, i32* %17)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.timeval**, %struct.timeval*** %9, align 8
  %24 = load %struct.timeval*, %struct.timeval** %10, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @timeouts_queue(%struct.TYPE_5__* %21, i32 %22, %struct.timeval** %23, %struct.timeval* %24, i32 %28, i32* %26)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.timeval**, %struct.timeval*** %9, align 8
  %33 = load %struct.timeval*, %struct.timeval** %10, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tcp_events(%struct.TYPE_5__* %30, i32 %31, %struct.timeval** %32, %struct.timeval* %33, i32 %35)
  ret void
}

declare dso_local i32 @timeouts_queue(%struct.TYPE_5__*, i32, %struct.timeval**, %struct.timeval*, i32, i32*) #1

declare dso_local i32 @tcp_events(%struct.TYPE_5__*, i32, %struct.timeval**, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

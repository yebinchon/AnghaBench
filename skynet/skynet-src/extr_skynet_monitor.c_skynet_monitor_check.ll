; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_monitor.c_skynet_monitor_check.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_monitor.c_skynet_monitor_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_monitor = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [78 x i8] c"A message from [ :%08x ] to [ :%08x ] maybe in an endless loop (version = %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skynet_monitor_check(%struct.skynet_monitor* %0) #0 {
  %2 = alloca %struct.skynet_monitor*, align 8
  store %struct.skynet_monitor* %0, %struct.skynet_monitor** %2, align 8
  %3 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %4 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %7 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %12 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %17 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @skynet_context_endless(i64 %18)
  %20 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %21 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %24 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %27 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @skynet_error(i32* null, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %28)
  br label %30

30:                                               ; preds = %15, %10
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %33 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.skynet_monitor*, %struct.skynet_monitor** %2, align 8
  %36 = getelementptr inbounds %struct.skynet_monitor, %struct.skynet_monitor* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @skynet_context_endless(i64) #1

declare dso_local i32 @skynet_error(i32*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

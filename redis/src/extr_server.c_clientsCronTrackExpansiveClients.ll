; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_clientsCronTrackExpansiveClients.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_clientsCronTrackExpansiveClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CLIENTS_PEAK_MEM_USAGE_SLOTS = common dso_local global i32 0, align 4
@ClientsPeakMemInput = common dso_local global i64* null, align 8
@ClientsPeakMemOutput = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clientsCronTrackExpansiveClients(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @sdsAllocSize(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_5__* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %14 = load i32, i32* @CLIENTS_PEAK_MEM_USAGE_SLOTS, align 4
  %15 = srem i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @CLIENTS_PEAK_MEM_USAGE_SLOTS, align 4
  %19 = srem i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i64*, i64** @ClientsPeakMemInput, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** @ClientsPeakMemOutput, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64*, i64** @ClientsPeakMemInput, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %28, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i64, i64* %3, align 8
  %37 = load i64*, i64** @ClientsPeakMemInput, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %36, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %1
  %42 = load i64, i64* %4, align 8
  %43 = load i64*, i64** @ClientsPeakMemOutput, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i64, i64* %4, align 8
  %51 = load i64*, i64** @ClientsPeakMemOutput, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %41
  ret i32 0
}

declare dso_local i64 @sdsAllocSize(i32) #1

declare dso_local i64 @getClientOutputBufferMemoryUsage(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

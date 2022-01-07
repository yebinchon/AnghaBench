; ModuleID = '/home/carl/AnghaBench/redis/src/extr_tracking.c_trackingLimitUsedSlots.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_tracking.c_trackingLimitUsedSlots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@trackingLimitUsedSlots.timeout_counter = internal global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRACKING_TABLE_SIZE = common dso_local global i32 0, align 4
@TrackingTableUsedSlots = common dso_local global i32 0, align 4
@TrackingTable = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trackingLimitUsedSlots() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %56

7:                                                ; preds = %0
  %8 = load i32, i32* @TRACKING_TABLE_SIZE, align 4
  %9 = sdiv i32 %8, 100
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @TrackingTableUsedSlots, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store i32 0, i32* @trackingLimitUsedSlots.timeout_counter, align 4
  br label %56

16:                                               ; preds = %7
  %17 = load i32, i32* @trackingLimitUsedSlots.timeout_counter, align 4
  %18 = add i32 %17, 1
  %19 = mul i32 100, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %52, %16
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = call i32 (...) @rand()
  %25 = load i32, i32* @TRACKING_TABLE_SIZE, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %49, %23
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  %32 = load i32, i32* @TRACKING_TABLE_SIZE, align 4
  %33 = urem i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32**, i32*** @TrackingTable, align 8
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @trackingInvalidateSlot(i32 %41)
  %43 = load i32, i32* @TrackingTableUsedSlots, align 4
  %44 = load i32, i32* %1, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* @trackingLimitUsedSlots.timeout_counter, align 4
  br label %56

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %27, label %52

52:                                               ; preds = %49, %47
  br label %20

53:                                               ; preds = %20
  %54 = load i32, i32* @trackingLimitUsedSlots.timeout_counter, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* @trackingLimitUsedSlots.timeout_counter, align 4
  br label %56

56:                                               ; preds = %53, %46, %15, %6
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @trackingInvalidateSlot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

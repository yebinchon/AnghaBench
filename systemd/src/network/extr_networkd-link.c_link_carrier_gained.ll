; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_carrier_gained.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-link.c_link_carrier_gained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@LINK_STATE_CONFIGURING = common dso_local global i32 0, align 4
@LINK_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @link_carrier_gained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_carrier_gained(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_11__* %5)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = call i32 @wifi_get_info(%struct.TYPE_11__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i32 @link_reconfigure(%struct.TYPE_11__* %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %13
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LINK_STATE_CONFIGURING, align 4
  %29 = load i32, i32* @LINK_STATE_CONFIGURED, align 4
  %30 = call i64 @IN_SET(i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = call i32 @link_acquire_conf(%struct.TYPE_11__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call i32 @link_enter_failed(%struct.TYPE_11__* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = load i32, i32* @LINK_STATE_CONFIGURING, align 4
  %44 = call i32 @link_set_state(%struct.TYPE_11__* %42, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call i32 @link_request_set_addresses(%struct.TYPE_11__* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = call i32 @link_handle_bound_by_list(%struct.TYPE_11__* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %57, %49, %37, %21, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @wifi_get_info(%struct.TYPE_11__*) #1

declare dso_local i32 @link_reconfigure(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @link_acquire_conf(%struct.TYPE_11__*) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_11__*) #1

declare dso_local i32 @link_set_state(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @link_request_set_addresses(%struct.TYPE_11__*) #1

declare dso_local i32 @link_handle_bound_by_list(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

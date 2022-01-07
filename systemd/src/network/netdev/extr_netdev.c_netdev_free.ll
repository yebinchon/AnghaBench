; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_netdev.c_netdev_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_netdev.c_netdev_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*)* }

@_NETDEV_STATE_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_13__*)* @netdev_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @netdev_free(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_13__* %3)
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %6 = call i32 @netdev_callbacks_clear(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = call i32 @netdev_detach_from_manager(%struct.TYPE_13__* %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @free(i32 %11)
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @free(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @free(i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @condition_free_list(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @_NETDEV_STATE_INVALID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = call %struct.TYPE_12__* @NETDEV_VTABLE(%struct.TYPE_13__* %35)
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %40 = call %struct.TYPE_12__* @NETDEV_VTABLE(%struct.TYPE_13__* %39)
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_13__*)* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = call %struct.TYPE_12__* @NETDEV_VTABLE(%struct.TYPE_13__* %45)
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = call i32 %48(%struct.TYPE_13__* %49)
  br label %51

51:                                               ; preds = %44, %38, %34, %1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = call %struct.TYPE_13__* @mfree(%struct.TYPE_13__* %52)
  ret %struct.TYPE_13__* %53
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local i32 @netdev_callbacks_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @netdev_detach_from_manager(%struct.TYPE_13__*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @condition_free_list(i32) #1

declare dso_local %struct.TYPE_12__* @NETDEV_VTABLE(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @mfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tuntap.c_tuntap_done.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tuntap.c_tuntap_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8* }

@NETDEV_KIND_TUN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @tuntap_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuntap_done(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = call i32 @assert(%struct.TYPE_9__* %4)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NETDEV_KIND_TUN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = call %struct.TYPE_9__* @TUN(%struct.TYPE_9__* %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call %struct.TYPE_9__* @TAP(%struct.TYPE_9__* %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @assert(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @mfree(i8* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @mfree(i8* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @TUN(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @TAP(%struct.TYPE_9__*) #1

declare dso_local i8* @mfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tuntap.c_netdev_fill_tuntap_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tuntap.c_netdev_fill_tuntap_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i64, %struct.ifreq*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@NETDEV_KIND_TAP = common dso_local global i64 0, align 8
@IFF_TAP = common dso_local global i32 0, align 4
@IFF_TUN = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@IFF_MULTI_QUEUE = common dso_local global i32 0, align 4
@IFF_VNET_HDR = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifreq*, %struct.ifreq*)* @netdev_fill_tuntap_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_fill_tuntap_message(%struct.ifreq* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.ifreq*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.ifreq* %0, %struct.ifreq** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %6 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %7 = call i32 @assert(%struct.ifreq* %6)
  %8 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 1
  %10 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %11 = call i32 @assert(%struct.ifreq* %10)
  %12 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %13 = call i32 @assert(%struct.ifreq* %12)
  %14 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NETDEV_KIND_TAP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %21 = call %struct.TYPE_4__* @TAP(%struct.ifreq* %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  %22 = load i32, i32* @IFF_TAP, align 4
  %23 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %29 = call %struct.TYPE_4__* @TUN(%struct.ifreq* %28)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  %30 = load i32, i32* @IFF_TUN, align 4
  %31 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @IFF_NO_PI, align 4
  %42 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @IFF_MULTI_QUEUE, align 4
  %53 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %54 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @IFF_VNET_HDR, align 4
  %64 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %70 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ifreq*, %struct.ifreq** %3, align 8
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %72, i32 0, i32 1
  %74 = load %struct.ifreq*, %struct.ifreq** %73, align 8
  %75 = load i64, i64* @IFNAMSIZ, align 8
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @strncpy(i32 %71, %struct.ifreq* %74, i64 %76)
  ret i32 0
}

declare dso_local i32 @assert(%struct.ifreq*) #1

declare dso_local %struct.TYPE_4__* @TAP(%struct.ifreq*) #1

declare dso_local %struct.TYPE_4__* @TUN(%struct.ifreq*) #1

declare dso_local i32 @strncpy(i32, %struct.ifreq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

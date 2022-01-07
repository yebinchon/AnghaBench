; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_macsec.c_netdev_macsec_fill_message_sci.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_macsec.c_netdev_macsec_fill_message_sci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@MACSEC_ATTR_RXSC_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Could not append MACSEC_ATTR_RXSC_CONFIG attribute: %m\00", align 1
@MACSEC_RXSC_ATTR_SCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Could not append MACSEC_RXSC_ATTR_SCI attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @netdev_macsec_fill_message_sci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_macsec_fill_message_sci(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = call i32 @assert(%struct.TYPE_12__* %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = call i32 @assert(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = load i32, i32* @MACSEC_ATTR_RXSC_CONFIG, align 4
  %17 = call i32 @sd_netlink_message_open_container(%struct.TYPE_12__* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @log_netdev_error_errno(%struct.TYPE_12__* %21, i32 %22, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = load i32, i32* @MACSEC_RXSC_ATTR_SCI, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sd_netlink_message_append_u64(%struct.TYPE_12__* %25, i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @log_netdev_error_errno(%struct.TYPE_12__* %34, i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  br label %47

37:                                               ; preds = %24
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = call i32 @sd_netlink_message_close_container(%struct.TYPE_12__* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @log_netdev_error_errno(%struct.TYPE_12__* %43, i32 %44, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %42, %33, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @sd_netlink_message_open_container(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_u64(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @sd_netlink_message_close_container(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

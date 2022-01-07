; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_request_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_netlink-message.c_sd_netlink_message_request_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTM_GETLINK = common dso_local global i32 0, align 4
@RTM_GETADDR = common dso_local global i32 0, align 4
@RTM_GETROUTE = common dso_local global i32 0, align 4
@RTM_GETNEIGH = common dso_local global i32 0, align 4
@RTM_GETRULE = common dso_local global i32 0, align 4
@RTM_GETADDRLABEL = common dso_local global i32 0, align 4
@RTM_GETNEXTHOP = common dso_local global i32 0, align 4
@NLM_F_DUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_netlink_message_request_dump(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  %8 = call i32 @assert_return(%struct.TYPE_5__* %5, i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i32 @assert_return(%struct.TYPE_5__* %11, i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RTM_GETLINK, align 4
  %21 = load i32, i32* @RTM_GETADDR, align 4
  %22 = load i32, i32* @RTM_GETROUTE, align 4
  %23 = load i32, i32* @RTM_GETNEIGH, align 4
  %24 = load i32, i32* @RTM_GETRULE, align 4
  %25 = load i32, i32* @RTM_GETADDRLABEL, align 4
  %26 = load i32, i32* @RTM_GETNEXTHOP, align 4
  %27 = call %struct.TYPE_5__* @IN_SET(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @assert_return(%struct.TYPE_5__* %27, i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NLM_F_DUMP, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SET_FLAG(i32 %35, i32 %36, i32 %37)
  ret i32 0
}

declare dso_local i32 @assert_return(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.TYPE_5__* @IN_SET(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SET_FLAG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

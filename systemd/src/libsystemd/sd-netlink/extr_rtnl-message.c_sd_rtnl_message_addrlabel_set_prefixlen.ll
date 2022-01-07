; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_addrlabel_set_prefixlen.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_addrlabel_set_prefixlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct.ifaddrlblmsg = type { i8 }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_rtnl_message_addrlabel_set_prefixlen(%struct.TYPE_6__* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.ifaddrlblmsg*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @assert_return(%struct.TYPE_6__* %7, i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @assert_return(%struct.TYPE_6__* %13, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_6__* @rtnl_message_type_is_addrlabel(i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @assert_return(%struct.TYPE_6__* %22, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call %struct.ifaddrlblmsg* @NLMSG_DATA(%struct.TYPE_6__* %28)
  store %struct.ifaddrlblmsg* %29, %struct.ifaddrlblmsg** %6, align 8
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sgt i32 %31, 128
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %6, align 8
  %39 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 1
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @assert_return(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @rtnl_message_type_is_addrlabel(i32) #1

declare dso_local %struct.ifaddrlblmsg* @NLMSG_DATA(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

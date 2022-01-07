; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_l2tp-tunnel.c_l2tp_create_session_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_l2tp-tunnel.c_l2tp_create_session_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"L2TP session %s exists, using existing without changing its parameters\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"L2TP session %s could not be created: %m\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"L2TP session %s created\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @l2tp_create_session_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_create_session_handler(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %11 = call i32 @assert(%struct.TYPE_5__* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i32 @assert(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32* @NETDEV(%struct.TYPE_5__* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @sd_netlink_message_get_errno(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @log_netdev_info(i32* %27, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %43

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @log_netdev_warning_errno(i32* %36, i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 1, i32* %4, align 4
  br label %49

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @log_netdev_debug(i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %35
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32* @NETDEV(%struct.TYPE_5__*) #1

declare dso_local i32 @sd_netlink_message_get_errno(i32*) #1

declare dso_local i32 @log_netdev_info(i32*, i8*, i32) #1

declare dso_local i32 @log_netdev_warning_errno(i32*, i32, i8*, i32) #1

declare dso_local i32 @log_netdev_debug(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

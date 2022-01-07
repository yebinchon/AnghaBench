; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_new_neigh.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_new_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.ndmsg = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@PF_BRIDGE = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i64 0, align 8
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_rtnl_message_new_neigh(i32* %0, %struct.TYPE_8__** %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ndmsg*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.TYPE_8__** @rtnl_message_type_is_neigh(i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @assert_return(%struct.TYPE_8__** %15, i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @AF_UNSPEC, align 4
  %21 = load i32, i32* @AF_INET, align 4
  %22 = load i32, i32* @AF_INET6, align 4
  %23 = load i32, i32* @PF_BRIDGE, align 4
  %24 = call %struct.TYPE_8__** @IN_SET(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @assert_return(%struct.TYPE_8__** %24, i32 %26)
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @assert_return(%struct.TYPE_8__** %28, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @message_new(i32* %32, %struct.TYPE_8__** %33, i64 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %67

40:                                               ; preds = %5
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @RTM_NEWNEIGH, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* @NLM_F_CREATE, align 4
  %46 = load i32, i32* @NLM_F_APPEND, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %47
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44, %40
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call %struct.ndmsg* @NLMSG_DATA(%struct.TYPE_9__* %59)
  store %struct.ndmsg* %60, %struct.ndmsg** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %63 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ndmsg*, %struct.ndmsg** %12, align 8
  %66 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %55, %38
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @assert_return(%struct.TYPE_8__**, i32) #1

declare dso_local %struct.TYPE_8__** @rtnl_message_type_is_neigh(i64) #1

declare dso_local %struct.TYPE_8__** @IN_SET(i32, i32, i32, i32, i32) #1

declare dso_local i32 @message_new(i32*, %struct.TYPE_8__**, i64) #1

declare dso_local %struct.ndmsg* @NLMSG_DATA(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

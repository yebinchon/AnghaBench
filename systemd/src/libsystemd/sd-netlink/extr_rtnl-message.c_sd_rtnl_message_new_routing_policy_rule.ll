; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_new_routing_policy_rule.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_new_routing_policy_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rtmsg = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTM_NEWRULE = common dso_local global i64 0, align 8
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@RTPROT_BOOT = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_rtnl_message_new_routing_policy_rule(i32* %0, %struct.TYPE_7__** %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtmsg*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call %struct.TYPE_7__** @rtnl_message_type_is_routing_policy_rule(i64 %12)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @assert_return(%struct.TYPE_7__** %13, i32 %15)
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @assert_return(%struct.TYPE_7__** %17, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @message_new(i32* %21, %struct.TYPE_7__** %22, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %62

29:                                               ; preds = %4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @RTM_NEWRULE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* @NLM_F_CREATE, align 4
  %35 = load i32, i32* @NLM_F_EXCL, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %36
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %33, %29
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call %struct.rtmsg* @NLMSG_DATA(%struct.TYPE_8__* %48)
  store %struct.rtmsg* %49, %struct.rtmsg** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %52 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @RTPROT_BOOT, align 4
  %54 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %55 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %57 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %58 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @RTN_UNICAST, align 4
  %60 = load %struct.rtmsg*, %struct.rtmsg** %10, align 8
  %61 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %44, %27
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @assert_return(%struct.TYPE_7__**, i32) #1

declare dso_local %struct.TYPE_7__** @rtnl_message_type_is_routing_policy_rule(i64) #1

declare dso_local i32 @message_new(i32*, %struct.TYPE_7__**, i64) #1

declare dso_local %struct.rtmsg* @NLMSG_DATA(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

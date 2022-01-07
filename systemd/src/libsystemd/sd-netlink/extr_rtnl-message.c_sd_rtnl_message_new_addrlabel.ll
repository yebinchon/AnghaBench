; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_new_addrlabel.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_new_addrlabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ifaddrlblmsg = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTM_NEWADDRLABEL = common dso_local global i64 0, align 8
@NLM_F_CREATE = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_rtnl_message_new_addrlabel(i32* %0, %struct.TYPE_7__** %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifaddrlblmsg*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call %struct.TYPE_7__** @rtnl_message_type_is_addrlabel(i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @assert_return(%struct.TYPE_7__** %15, i32 %17)
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @assert_return(%struct.TYPE_7__** %19, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @message_new(i32* %23, %struct.TYPE_7__** %24, i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %58

31:                                               ; preds = %5
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @RTM_NEWADDRLABEL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32, i32* @NLM_F_CREATE, align 4
  %37 = load i32, i32* @NLM_F_EXCL, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %38
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %35, %31
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call %struct.ifaddrlblmsg* @NLMSG_DATA(%struct.TYPE_8__* %50)
  store %struct.ifaddrlblmsg* %51, %struct.ifaddrlblmsg** %12, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %12, align 8
  %54 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %12, align 8
  %57 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %46, %29
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @assert_return(%struct.TYPE_7__**, i32) #1

declare dso_local %struct.TYPE_7__** @rtnl_message_type_is_addrlabel(i64) #1

declare dso_local i32 @message_new(i32*, %struct.TYPE_7__**, i64) #1

declare dso_local %struct.ifaddrlblmsg* @NLMSG_DATA(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_rtnl_process_link.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-manager.c_manager_rtnl_process_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"rtnl: Could not receive link message, ignoring: %m\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"rtnl: Could not get message type, ignoring: %m\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"rtnl: Received unexpected message type %u when processing link, ignoring.\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"rtnl: Could not get ifindex from link message, ignoring: %m\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"rtnl: received link message with invalid ifindex %d, ignoring.\00", align 1
@IFLA_IFNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"rtnl: Received link message without ifname, ignoring: %m\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Could not process new link message, ignoring: %m\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Could not process new link message for netdev, ignoring: %m\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Could not process link message, ignoring: %m\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Received link message with invalid RTNL message type.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @manager_rtnl_process_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_rtnl_process_link(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @assert(i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @assert(i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @assert(i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @sd_netlink_message_is_error(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @sd_netlink_message_get_errno(i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @log_warning_errno(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %127

35:                                               ; preds = %3
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @sd_netlink_message_get_type(i32* %36, i32* %11)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @log_warning_errno(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @IN_SET(i32 %44, i32 128, i32 129)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @log_warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i32 0, i32* %4, align 4
  br label %127

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @sd_rtnl_message_link_get_ifindex(i32* %52, i32* %14)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @log_warning_errno(i32 %57, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

59:                                               ; preds = %51
  %60 = load i32, i32* %14, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @log_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  store i32 0, i32* %4, align 4
  br label %127

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @IFLA_IFNAME, align 4
  %69 = call i32 @sd_netlink_message_read_string(i32* %67, i32 %68, i8** %12)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @log_warning_errno(i32 %73, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

75:                                               ; preds = %66
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @link_get(i32* %76, i32 %77, i32** %9)
  %79 = load i32*, i32** %8, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @netdev_get(i32* %79, i8* %80, i32** %10)
  %82 = load i32, i32* %11, align 4
  switch i32 %82, label %124 [
    i32 128, label %83
    i32 129, label %119
  ]

83:                                               ; preds = %75
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @link_add(i32* %87, i32* %88, i32** %9)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @log_warning_errno(i32 %93, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %83
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @netdev_set_ifindex(i32* %100, i32* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @log_warning_errno(i32 %106, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %96
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @link_update(i32* %110, i32* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @log_warning_errno(i32 %116, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %127

118:                                              ; preds = %109
  br label %126

119:                                              ; preds = %75
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @link_drop(i32* %120)
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @netdev_drop(i32* %122)
  br label %126

124:                                              ; preds = %75
  %125 = call i32 @assert_not_reached(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119, %118
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %115, %105, %92, %72, %62, %56, %47, %40, %34
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @sd_netlink_message_is_error(i32*) #1

declare dso_local i32 @sd_netlink_message_get_errno(i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @sd_netlink_message_get_type(i32*, i32*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_warning(i8*, i32) #1

declare dso_local i32 @sd_rtnl_message_link_get_ifindex(i32*, i32*) #1

declare dso_local i32 @sd_netlink_message_read_string(i32*, i32, i8**) #1

declare dso_local i32 @link_get(i32*, i32, i32**) #1

declare dso_local i32 @netdev_get(i32*, i8*, i32**) #1

declare dso_local i32 @link_add(i32*, i32*, i32**) #1

declare dso_local i32 @netdev_set_ifindex(i32*, i32*) #1

declare dso_local i32 @link_update(i32*, i32*) #1

declare dso_local i32 @link_drop(i32*) #1

declare dso_local i32 @netdev_drop(i32*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

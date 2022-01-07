; ModuleID = '/home/carl/AnghaBench/systemd/src/network/wait-online/extr_manager.c_manager_process_link.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/wait-online/extr_manager.c_manager_process_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"rtnl: Could not get message type, ignoring: %m\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"rtnl: Could not get ifindex from link, ignoring: %m\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"rtnl: received link message with invalid ifindex %d, ignoring\00", align 1
@IFLA_IFNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"rtnl: Received link message without ifname, ignoring: %m\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Found link %i\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to create link object: %m\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Failed to process RTNL link message, ignoring: %m\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to update link state, ignoring: %m\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Removing link\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, i8*)* @manager_process_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_process_link(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @assert(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = call i32 @assert(%struct.TYPE_12__* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = call i32 @assert(%struct.TYPE_12__* %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i32 @sd_netlink_message_get_type(%struct.TYPE_12__* %22, i32* %9)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @log_warning_errno(i32 %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %112

29:                                               ; preds = %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = call i32 @sd_rtnl_message_link_get_ifindex(%struct.TYPE_12__* %30, i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @log_warning_errno(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %112

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @log_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %4, align 4
  br label %112

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = load i32, i32* @IFLA_IFNAME, align 4
  %47 = call i32 @sd_netlink_message_read_string(%struct.TYPE_12__* %45, i32 %46, i8** %11)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @log_warning_errno(i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %112

53:                                               ; preds = %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @INT_TO_PTR(i32 %57)
  %59 = call i32* @hashmap_get(i32 %56, i32 %58)
  store i32* %59, i32** %10, align 8
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %111 [
    i32 128, label %61
    i32 129, label %102
  ]

61:                                               ; preds = %53
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @log_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @link_new(%struct.TYPE_12__* %67, i32** %10, i32 %68, i8* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @log_error_errno(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 %75, i32* %4, align 4
  br label %112

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = call i32 @link_update_rtnl(i32* %78, %struct.TYPE_12__* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @log_link_warning_errno(i32* %84, i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @link_update_monitor(i32* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @ENODATA, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @log_link_warning_errno(i32* %98, i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %92, %87
  br label %111

102:                                              ; preds = %53
  %103 = load i32*, i32** %10, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @log_link_debug(i32* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @link_free(i32* %108)
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %53, %110, %101
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %73, %50, %40, %34, %26
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local i32 @sd_netlink_message_get_type(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

declare dso_local i32 @sd_rtnl_message_link_get_ifindex(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @log_warning(i8*, i32) #1

declare dso_local i32 @sd_netlink_message_read_string(%struct.TYPE_12__*, i32, i8**) #1

declare dso_local i32* @hashmap_get(i32, i32) #1

declare dso_local i32 @INT_TO_PTR(i32) #1

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @link_new(%struct.TYPE_12__*, i32**, i32, i8*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @link_update_rtnl(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @log_link_warning_errno(i32*, i32, i8*) #1

declare dso_local i32 @link_update_monitor(i32*) #1

declare dso_local i32 @log_link_debug(i32*, i8*) #1

declare dso_local i32 @link_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_netdev.c_netdev_set_ifindex.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_netdev.c_netdev_set_ifindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Could not get rtnl message type: %m\00", align 1
@RTM_NEWLINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Cannot set ifindex from unexpected rtnl message type.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not get ifindex: %m\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Got invalid ifindex: %d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Could not set ifindex to %d, already set to %d\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not get IFNAME: %m\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Received newlink with wrong IFNAME %s\00", align 1
@IFLA_LINKINFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Could not get LINKINFO: %m\00", align 1
@IFLA_INFO_KIND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Could not get KIND: %m\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Could not exit container: %m\00", align 1
@NETDEV_KIND_TAP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"tun\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Could not get kind\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Received newlink with wrong KIND %s, expected %s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"netdev has index %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netdev_set_ifindex(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = call i32 @assert(%struct.TYPE_16__* %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_16__* %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i32 @sd_netlink_message_get_type(%struct.TYPE_16__* %16, i64* %6)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %21, i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %3, align 4
  br label %179

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @RTM_NEWLINK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = call i32 (%struct.TYPE_16__*, i8*, ...) @log_netdev_error(%struct.TYPE_16__* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %179

33:                                               ; preds = %24
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = call i32 @sd_rtnl_message_link_get_ifindex(%struct.TYPE_16__* %34, i32* %11)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %39, i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = call i32 @netdev_enter_failed(%struct.TYPE_16__* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %179

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (%struct.TYPE_16__*, i8*, ...) @log_netdev_error(%struct.TYPE_16__* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = call i32 @netdev_enter_failed(%struct.TYPE_16__* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %179

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.TYPE_16__*, i8*, ...) @log_netdev_error(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = call i32 @netdev_enter_failed(%struct.TYPE_16__* %75)
  %77 = load i32, i32* @EEXIST, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %179

79:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %179

80:                                               ; preds = %57
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = load i32, i32* @IFLA_IFNAME, align 4
  %83 = call i32 @sd_netlink_message_read_string(%struct.TYPE_16__* %81, i32 %82, i8** %9)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %87, i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 %89, i32* %3, align 4
  br label %179

90:                                               ; preds = %80
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @streq(i8* %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 (%struct.TYPE_16__*, i8*, ...) @log_netdev_error(%struct.TYPE_16__* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = call i32 @netdev_enter_failed(%struct.TYPE_16__* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %179

104:                                              ; preds = %90
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = load i32, i32* @IFLA_LINKINFO, align 4
  %107 = call i32 @sd_netlink_message_enter_container(%struct.TYPE_16__* %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %111, i32 %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 %113, i32* %3, align 4
  br label %179

114:                                              ; preds = %104
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = load i32, i32* @IFLA_INFO_KIND, align 4
  %117 = call i32 @sd_netlink_message_read_string(%struct.TYPE_16__* %115, i32 %116, i8** %8)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %121, i32 %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i32 %123, i32* %3, align 4
  br label %179

124:                                              ; preds = %114
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = call i32 @sd_netlink_message_exit_container(%struct.TYPE_16__* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @log_netdev_error_errno(%struct.TYPE_16__* %130, i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i32 %132, i32* %3, align 4
  br label %179

133:                                              ; preds = %124
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @NETDEV_KIND_TAP, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %155

140:                                              ; preds = %133
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i8* @netdev_kind_to_string(i64 %143)
  store i8* %144, i8** %7, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %140
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = call i32 (%struct.TYPE_16__*, i8*, ...) @log_netdev_error(%struct.TYPE_16__* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %151 = call i32 @netdev_enter_failed(%struct.TYPE_16__* %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %179

154:                                              ; preds = %140
  br label %155

155:                                              ; preds = %154, %139
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @streq(i8* %156, i8* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 (%struct.TYPE_16__*, i8*, ...) @log_netdev_error(%struct.TYPE_16__* %161, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %162, i8* %163)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = call i32 @netdev_enter_failed(%struct.TYPE_16__* %165)
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %3, align 4
  br label %179

168:                                              ; preds = %155
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @log_netdev_debug(%struct.TYPE_16__* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %175)
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = call i32 @netdev_enter_ready(%struct.TYPE_16__* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %168, %160, %147, %129, %120, %110, %97, %86, %79, %68, %48, %38, %28, %20
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @assert(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_netlink_message_get_type(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @log_netdev_error(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @sd_rtnl_message_link_get_ifindex(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @netdev_enter_failed(%struct.TYPE_16__*) #1

declare dso_local i32 @sd_netlink_message_read_string(%struct.TYPE_16__*, i32, i8**) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @sd_netlink_message_enter_container(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sd_netlink_message_exit_container(%struct.TYPE_16__*) #1

declare dso_local i8* @netdev_kind_to_string(i64) #1

declare dso_local i32 @log_netdev_debug(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @netdev_enter_ready(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

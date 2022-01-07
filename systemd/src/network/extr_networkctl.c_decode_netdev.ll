; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_decode_netdev.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_decode_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i8*, %struct.TYPE_18__, i8*, %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@IFLA_LINKINFO = common dso_local global i32 0, align 4
@IFLA_INFO_KIND = common dso_local global i32 0, align 4
@IFLA_INFO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bridge\00", align 1
@IFLA_BR_FORWARD_DELAY = common dso_local global i32 0, align 4
@IFLA_BR_HELLO_TIME = common dso_local global i32 0, align 4
@IFLA_BR_MAX_AGE = common dso_local global i32 0, align 4
@IFLA_BR_AGEING_TIME = common dso_local global i32 0, align 4
@IFLA_BR_STP_STATE = common dso_local global i32 0, align 4
@IFLA_BR_PRIORITY = common dso_local global i32 0, align 4
@IFLA_BR_MCAST_IGMP_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vxlan\00", align 1
@IFLA_VXLAN_ID = common dso_local global i32 0, align 4
@IFLA_VXLAN_GROUP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@IFLA_VXLAN_GROUP6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@IFLA_VXLAN_LOCAL = common dso_local global i32 0, align 4
@IFLA_VXLAN_LOCAL6 = common dso_local global i32 0, align 4
@IFLA_VXLAN_LINK = common dso_local global i32 0, align 4
@IFLA_VXLAN_PORT = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_20__*)* @decode_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_netdev(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %9 = call i32 @assert(%struct.TYPE_20__* %8)
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = call i32 @assert(%struct.TYPE_20__* %10)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = load i32, i32* @IFLA_LINKINFO, align 4
  %14 = call i32 @sd_netlink_message_enter_container(%struct.TYPE_20__* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %172

19:                                               ; preds = %2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = load i32, i32* @IFLA_INFO_KIND, align 4
  %22 = call i32 @sd_netlink_message_read_string(%struct.TYPE_20__* %20, i32 %21, i8** %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %172

27:                                               ; preds = %19
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = load i32, i32* @IFLA_INFO_DATA, align 4
  %30 = call i32 @sd_netlink_message_enter_container(%struct.TYPE_20__* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %172

35:                                               ; preds = %27
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @streq(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = load i32, i32* @IFLA_BR_FORWARD_DELAY, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 8
  %44 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %40, i32 %41, i32* %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = load i32, i32* @IFLA_BR_HELLO_TIME, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 7
  %49 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %45, i32 %46, i32* %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = load i32, i32* @IFLA_BR_MAX_AGE, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 6
  %54 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %50, i32 %51, i32* %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = load i32, i32* @IFLA_BR_AGEING_TIME, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 5
  %59 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %55, i32 %56, i32* %58)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = load i32, i32* @IFLA_BR_STP_STATE, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  %64 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %60, i32 %61, i32* %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = load i32, i32* @IFLA_BR_PRIORITY, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = call i32 @sd_netlink_message_read_u16(%struct.TYPE_20__* %65, i32 %66, i32* %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = load i32, i32* @IFLA_BR_MCAST_IGMP_VERSION, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = call i32 @sd_netlink_message_read_u8(%struct.TYPE_20__* %70, i32 %71, i32* %73)
  br label %161

75:                                               ; preds = %35
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @streq(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %160

79:                                               ; preds = %75
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = load i32, i32* @IFLA_VXLAN_ID, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 6
  %85 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %80, i32 %81, i32* %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = load i32, i32* @IFLA_VXLAN_GROUP, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = call i32 @sd_netlink_message_read_in_addr(%struct.TYPE_20__* %86, i32 %87, i32* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load i8*, i8** @AF_INET, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  store i8* %96, i8** %99, align 8
  br label %116

100:                                              ; preds = %79
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = load i32, i32* @IFLA_VXLAN_GROUP6, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = call i32 @sd_netlink_message_read_in6_addr(%struct.TYPE_20__* %101, i32 %102, i32* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load i8*, i8** @AF_INET6, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 4
  store i8* %111, i8** %114, align 8
  br label %115

115:                                              ; preds = %110, %100
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = load i32, i32* @IFLA_VXLAN_LOCAL, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = call i32 @sd_netlink_message_read_in_addr(%struct.TYPE_20__* %117, i32 %118, i32* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i8*, i8** @AF_INET, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  store i8* %127, i8** %130, align 8
  br label %147

131:                                              ; preds = %116
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = load i32, i32* @IFLA_VXLAN_LOCAL6, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = call i32 @sd_netlink_message_read_in6_addr(%struct.TYPE_20__* %132, i32 %133, i32* %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = load i8*, i8** @AF_INET6, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  store i8* %142, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %131
  br label %147

147:                                              ; preds = %146, %126
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = load i32, i32* @IFLA_VXLAN_LINK, align 4
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = call i32 @sd_netlink_message_read_u32(%struct.TYPE_20__* %148, i32 %149, i32* %152)
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = load i32, i32* @IFLA_VXLAN_PORT, align 4
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = call i32 @sd_netlink_message_read_u16(%struct.TYPE_20__* %154, i32 %155, i32* %158)
  br label %160

160:                                              ; preds = %147, %75
  br label %161

161:                                              ; preds = %160, %39
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = load i32, i32* @IFNAMSIZ, align 4
  %167 = call i32 @strncpy(i32 %164, i8* %165, i32 %166)
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %169 = call i32 @sd_netlink_message_exit_container(%struct.TYPE_20__* %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = call i32 @sd_netlink_message_exit_container(%struct.TYPE_20__* %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %161, %33, %25, %17
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @assert(%struct.TYPE_20__*) #1

declare dso_local i32 @sd_netlink_message_enter_container(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sd_netlink_message_read_string(%struct.TYPE_20__*, i32, i8**) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @sd_netlink_message_read_u32(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_read_u16(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_read_u8(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_read_in_addr(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_read_in6_addr(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @sd_netlink_message_exit_container(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

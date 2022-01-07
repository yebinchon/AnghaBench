; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_ip6tnl_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_ip6tnl_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_18__, %struct.TYPE_17__, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@IFLA_IPTUN_LINK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Could not append IFLA_IPTUN_LINK attribute: %m\00", align 1
@IFLA_IPTUN_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_IPTUN_LOCAL attribute: %m\00", align 1
@IFLA_IPTUN_REMOTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_IPTUN_REMOTE attribute: %m\00", align 1
@IFLA_IPTUN_TTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_IPTUN_TTL attribute: %m\00", align 1
@_NETDEV_IPV6_FLOWLABEL_INVALID = common dso_local global i64 0, align 8
@IFLA_IPTUN_FLOWINFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Could not append IFLA_IPTUN_FLOWINFO attribute: %m\00", align 1
@IP6_TNL_F_RCV_DSCP_COPY = common dso_local global i64 0, align 8
@IP6_TNL_F_ALLOW_LOCAL_REMOTE = common dso_local global i32 0, align 4
@IPV6_DEFAULT_TNL_ENCAP_LIMIT = common dso_local global i64 0, align 8
@IFLA_IPTUN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"Could not append IFLA_IPTUN_ENCAP_LIMIT attribute: %m\00", align 1
@IFLA_IPTUN_FLAGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_IPTUN_FLAGS attribute: %m\00", align 1
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@IFLA_IPTUN_PROTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_IPTUN_PROTO attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_19__*)* @netdev_ip6tnl_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ip6tnl_fill_message_create(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = call %struct.TYPE_19__* @IP6TNL(%struct.TYPE_19__* %11)
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = call i32 @assert(%struct.TYPE_19__* %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = call i32 @assert(%struct.TYPE_19__* %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = call i32 @assert(%struct.TYPE_19__* %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21, %3
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = load i32, i32* @IFLA_IPTUN_LINK, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %37

35:                                               ; preds = %26
  %36 = load i64, i64* @LOOPBACK_IFINDEX, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i64 [ %34, %31 ], [ %36, %35 ]
  %39 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_19__* %27, i32 %28, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %43, i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 %45, i32* %4, align 4
  br label %187

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = load i32, i32* @IFLA_IPTUN_LOCAL, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_19__* %48, i32 %49, i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %57, i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  br label %187

60:                                               ; preds = %47
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %62 = load i32, i32* @IFLA_IPTUN_REMOTE, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_19__* %61, i32 %62, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %70, i32 %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %187

73:                                               ; preds = %60
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %75 = load i32, i32* @IFLA_IPTUN_TTL, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_19__* %74, i32 %75, i64 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %83, i32 %84, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 %85, i32* %4, align 4
  br label %187

86:                                               ; preds = %73
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @_NETDEV_IPV6_FLOWLABEL_INVALID, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = load i32, i32* @IFLA_IPTUN_FLOWINFO, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_19__* %93, i32 %94, i64 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %102, i32 %103, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  br label %187

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %86
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i64, i64* @IP6_TNL_F_RCV_DSCP_COPY, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = or i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @IP6_TNL_F_ALLOW_LOCAL_REMOTE, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @SET_FLAG(i64 %125, i32 %126, i64 %129)
  br label %131

131:                                              ; preds = %122, %117
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IPV6_DEFAULT_TNL_ENCAP_LIMIT, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = load i32, i32* @IFLA_IPTUN_ENCAP_LIMIT, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_19__* %138, i32 %139, i64 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %147, i32 %148, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  store i32 %149, i32* %4, align 4
  br label %187

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %131
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %153 = load i32, i32* @IFLA_IPTUN_FLAGS, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_19__* %152, i32 %153, i64 %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %151
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %161, i32 %162, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  store i32 %163, i32* %4, align 4
  br label %187

164:                                              ; preds = %151
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %173 [
    i32 129, label %168
    i32 128, label %170
    i32 130, label %172
  ]

168:                                              ; preds = %164
  %169 = load i64, i64* @IPPROTO_IPV6, align 8
  store i64 %169, i64* %9, align 8
  br label %174

170:                                              ; preds = %164
  %171 = load i64, i64* @IPPROTO_IPIP, align 8
  store i64 %171, i64* %9, align 8
  br label %174

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %164, %172
  store i64 0, i64* %9, align 8
  br label %174

174:                                              ; preds = %173, %170, %168
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = load i32, i32* @IFLA_IPTUN_PROTO, align 4
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_19__* %175, i32 %176, i64 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @log_netdev_error_errno(%struct.TYPE_19__* %182, i32 %183, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32 %184, i32* %4, align 4
  br label %187

185:                                              ; preds = %174
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %185, %181, %160, %146, %101, %82, %69, %56, %42
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_19__* @IP6TNL(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(%struct.TYPE_19__*) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_append_u8(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @SET_FLAG(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

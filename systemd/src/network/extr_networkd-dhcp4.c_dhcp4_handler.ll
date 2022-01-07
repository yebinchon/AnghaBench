; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp4_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-dhcp4.c_dhcp4_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_15__*, i32, %struct.TYPE_15__* }

@LINK_STATE_FAILED = common dso_local global i32 0, align 4
@LINK_STATE_LINGER = common dso_local global i32 0, align 4
@ADDRESS_FAMILY_FALLBACK_IPV4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"DHCP client is stopped. Acquiring IPv4 link-local address\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not acquire IPv4 link-local address: %m\00", align 1
@KEEP_CONFIGURATION_DHCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"DHCPv4 connection considered critical, ignoring request to reconfigure it.\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"DHCP error: Client failed: %m\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"DHCP unknown event: %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @dhcp4_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp4_handler(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %8, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %13 = call i32 @assert(%struct.TYPE_15__* %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = call i32 @assert(%struct.TYPE_15__* %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = call i32 @assert(%struct.TYPE_15__* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LINK_STATE_FAILED, align 4
  %26 = load i32, i32* @LINK_STATE_LINGER, align 4
  %27 = call i64 @IN_SET(i32 %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %194

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %181 [
    i32 128, label %32
    i32 133, label %93
    i32 131, label %121
    i32 130, label %144
    i32 132, label %155
    i32 129, label %166
  ]

32:                                               ; preds = %30
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = load i32, i32* @ADDRESS_FAMILY_FALLBACK_IPV4, align 4
  %35 = call i32 @link_ipv4ll_enabled(%struct.TYPE_15__* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = call i32 @assert(%struct.TYPE_15__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = call i32 @log_link_debug(%struct.TYPE_15__* %42, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = call i32 @sd_ipv4ll_start(%struct.TYPE_15__* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %51, i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  br label %194

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @KEEP_CONFIGURATION_DHCP, align 4
  %62 = call i32 @FLAGS_SET(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = call i32 @log_link_notice(%struct.TYPE_15__* %65, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %194

67:                                               ; preds = %55
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @sd_dhcp_client_send_release(i32* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = call i32 @dhcp_lease_lost(%struct.TYPE_15__* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = call i32 @link_enter_failed(%struct.TYPE_15__* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %194

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %67
  br label %193

93:                                               ; preds = %30
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @KEEP_CONFIGURATION_DHCP, align 4
  %100 = call i32 @FLAGS_SET(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %104 = call i32 @log_link_notice(%struct.TYPE_15__* %103, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %194

105:                                              ; preds = %93
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = call i32 @dhcp_lease_lost(%struct.TYPE_15__* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = call i32 @link_enter_failed(%struct.TYPE_15__* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %194

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %105
  br label %193

121:                                              ; preds = %30
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @KEEP_CONFIGURATION_DHCP, align 4
  %128 = call i32 @FLAGS_SET(i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = call i32 @log_link_notice(%struct.TYPE_15__* %131, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %194

133:                                              ; preds = %121
  %134 = load i32*, i32** %5, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = call i32 @dhcp_lease_ip_change(i32* %134, %struct.TYPE_15__* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = call i32 @link_enter_failed(%struct.TYPE_15__* %140)
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %194

143:                                              ; preds = %133
  br label %193

144:                                              ; preds = %30
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = call i32 @dhcp_lease_renew(i32* %145, %struct.TYPE_15__* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = call i32 @link_enter_failed(%struct.TYPE_15__* %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %4, align 4
  br label %194

154:                                              ; preds = %144
  br label %193

155:                                              ; preds = %30
  %156 = load i32*, i32** %5, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = call i32 @dhcp_lease_acquired(i32* %156, %struct.TYPE_15__* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = call i32 @link_enter_failed(%struct.TYPE_15__* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %194

165:                                              ; preds = %155
  br label %193

166:                                              ; preds = %30
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @dhcp_server_is_black_listed(%struct.TYPE_15__* %167, i32* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %4, align 4
  br label %194

174:                                              ; preds = %166
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @ENOMSG, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %194

180:                                              ; preds = %174
  br label %193

181:                                              ; preds = %30
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @log_link_warning_errno(%struct.TYPE_15__* %185, i32 %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %192

188:                                              ; preds = %181
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @log_link_warning(%struct.TYPE_15__* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %188, %184
  br label %193

193:                                              ; preds = %192, %180, %165, %154, %143, %120, %92
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %193, %177, %172, %161, %150, %139, %130, %115, %102, %87, %64, %50, %29
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @assert(%struct.TYPE_15__*) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @link_ipv4ll_enabled(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @log_link_debug(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @sd_ipv4ll_start(%struct.TYPE_15__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @log_link_notice(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @sd_dhcp_client_send_release(i32*) #1

declare dso_local i32 @dhcp_lease_lost(%struct.TYPE_15__*) #1

declare dso_local i32 @link_enter_failed(%struct.TYPE_15__*) #1

declare dso_local i32 @dhcp_lease_ip_change(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dhcp_lease_renew(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dhcp_lease_acquired(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dhcp_server_is_black_listed(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @log_link_warning(%struct.TYPE_15__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

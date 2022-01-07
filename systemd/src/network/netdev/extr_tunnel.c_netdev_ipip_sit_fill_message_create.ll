; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_ipip_sit_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_ipip_sit_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_22__, %struct.TYPE_21__, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@NETDEV_KIND_IPIP = common dso_local global i64 0, align 8
@IFLA_IPTUN_LINK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not append IFLA_IPTUN_LINK attribute: %m\00", align 1
@IFLA_IPTUN_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_IPTUN_LOCAL attribute: %m\00", align 1
@IFLA_IPTUN_REMOTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_IPTUN_REMOTE attribute: %m\00", align 1
@IFLA_IPTUN_TTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_IPTUN_TTL attribute: %m\00", align 1
@IFLA_IPTUN_PMTUDISC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Could not append IFLA_IPTUN_PMTUDISC attribute: %m\00", align 1
@IFLA_IPTUN_ENCAP_TYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Could not append IFLA_IPTUN_ENCAP_TYPE attribute: %m\00", align 1
@IFLA_IPTUN_ENCAP_SPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"Could not append IFLA_IPTUN_ENCAP_SPORT attribute: %m\00", align 1
@IFLA_IPTUN_ENCAP_DPORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"Could not append IFLA_IPTUN_ENCAP_DPORT attribute: %m\00", align 1
@NETDEV_KIND_SIT = common dso_local global i64 0, align 8
@IFLA_IPTUN_6RD_PREFIX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"Could not append IFLA_IPTUN_6RD_PREFIX attribute: %m\00", align 1
@IFLA_IPTUN_6RD_PREFIXLEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"Could not append IFLA_IPTUN_6RD_PREFIXLEN attribute: %m\00", align 1
@SIT_ISATAP = common dso_local global i32 0, align 4
@IFLA_IPTUN_FLAGS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_IPTUN_FLAGS attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @netdev_ipip_sit_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ipip_sit_fill_message_create(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NETDEV_KIND_IPIP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = call %struct.TYPE_23__* @IPIP(%struct.TYPE_23__* %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %8, align 8
  br label %24

21:                                               ; preds = %3
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = call %struct.TYPE_23__* @SIT(%struct.TYPE_23__* %22)
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %8, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %26 = call i32 @assert(%struct.TYPE_23__* %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %28 = call i32 @assert(%struct.TYPE_23__* %27)
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %30 = icmp ne %struct.TYPE_24__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31, %24
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = load i32, i32* @IFLA_IPTUN_LINK, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %40 = icmp ne %struct.TYPE_24__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %44, %41 ], [ %46, %45 ]
  %49 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_23__* %37, i32 %38, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %53, i32 %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 %55, i32* %4, align 4
  br label %219

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %31
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = load i32, i32* @IFLA_IPTUN_LOCAL, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 11
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = call i32 @sd_netlink_message_append_in_addr(%struct.TYPE_23__* %58, i32 %59, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %67, i32 %68, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %4, align 4
  br label %219

70:                                               ; preds = %57
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = load i32, i32* @IFLA_IPTUN_REMOTE, align 4
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 10
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = call i32 @sd_netlink_message_append_in_addr(%struct.TYPE_23__* %71, i32 %72, i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %80, i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 %82, i32* %4, align 4
  br label %219

83:                                               ; preds = %70
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = load i32, i32* @IFLA_IPTUN_TTL, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %84, i32 %85, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %93, i32 %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 %95, i32* %4, align 4
  br label %219

96:                                               ; preds = %83
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %98 = load i32, i32* @IFLA_IPTUN_PMTUDISC, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %97, i32 %98, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %106, i32 %107, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 %108, i32* %4, align 4
  br label %219

109:                                              ; preds = %96
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %109
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %116 = load i32, i32* @IFLA_IPTUN_ENCAP_TYPE, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_23__* %115, i32 %116, i64 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %124, i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 %126, i32* %4, align 4
  br label %219

127:                                              ; preds = %114
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %129 = load i32, i32* @IFLA_IPTUN_ENCAP_SPORT, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @htobe16(i32 %132)
  %134 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_23__* %128, i32 %129, i64 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %127
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %138, i32 %139, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  store i32 %140, i32* %4, align 4
  br label %219

141:                                              ; preds = %127
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %143 = load i32, i32* @IFLA_IPTUN_ENCAP_DPORT, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @htobe16(i32 %146)
  %148 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_23__* %142, i32 %143, i64 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %152, i32 %153, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  store i32 %154, i32* %4, align 4
  br label %219

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %109
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NETDEV_KIND_SIT, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %217

162:                                              ; preds = %156
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %165, 0
  br i1 %166, label %167, label %193

167:                                              ; preds = %162
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %169 = load i32, i32* @IFLA_IPTUN_6RD_PREFIX, align 4
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 4
  %172 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_23__* %168, i32 %169, i32* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %176, i32 %177, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  store i32 %178, i32* %4, align 4
  br label %219

179:                                              ; preds = %167
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %181 = load i32, i32* @IFLA_IPTUN_6RD_PREFIXLEN, align 4
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_23__* %180, i32 %181, i64 %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %189, i32 %190, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  store i32 %191, i32* %4, align 4
  br label %219

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192, %162
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp sge i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %193
  store i64 0, i64* %10, align 8
  %199 = load i64, i64* %10, align 8
  %200 = load i32, i32* @SIT_ISATAP, align 4
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @SET_FLAG(i64 %199, i32 %200, i64 %203)
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %206 = load i32, i32* @IFLA_IPTUN_FLAGS, align 4
  %207 = load i64, i64* %10, align 8
  %208 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_23__* %205, i32 %206, i64 %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %198
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %212, i32 %213, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  store i32 %214, i32* %4, align 4
  br label %219

215:                                              ; preds = %198
  br label %216

216:                                              ; preds = %215, %193
  br label %217

217:                                              ; preds = %216, %156
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %217, %211, %188, %175, %151, %137, %123, %105, %92, %79, %66, %52
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i32 @assert(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @IPIP(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @SIT(%struct.TYPE_23__*) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_in_addr(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_append_u8(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @sd_netlink_message_append_u16(%struct.TYPE_23__*, i32, i64) #1

declare dso_local i64 @htobe16(i32) #1

declare dso_local i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @SET_FLAG(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

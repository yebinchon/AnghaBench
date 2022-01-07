; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_netdev_vxlan_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_vxlan.c_netdev_vxlan_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_22__, i64, %struct.TYPE_21__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.ifla_vxlan_port_range = type { i8*, i8* }

@VXLAN_VID_MAX = common dso_local global i64 0, align 8
@IFLA_VXLAN_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Could not append IFLA_VXLAN_ID attribute: %m\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@IFLA_VXLAN_GROUP = common dso_local global i32 0, align 4
@IFLA_VXLAN_GROUP6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_VXLAN_GROUP attribute: %m\00", align 1
@IFLA_VXLAN_LOCAL = common dso_local global i32 0, align 4
@IFLA_VXLAN_LOCAL6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_VXLAN_LOCAL attribute: %m\00", align 1
@IFLA_VXLAN_LINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_VXLAN_LINK attribute: %m\00", align 1
@IFLA_VXLAN_TTL_INHERIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Could not append IFLA_VXLAN_TTL_INHERIT attribute: %m\00", align 1
@IFLA_VXLAN_TTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_VXLAN_TTL attribute: %m\00", align 1
@IFLA_VXLAN_TOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_VXLAN_TOS attribute: %m\00", align 1
@IFLA_VXLAN_LEARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"Could not append IFLA_VXLAN_LEARNING attribute: %m\00", align 1
@IFLA_VXLAN_RSC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_VXLAN_RSC attribute: %m\00", align 1
@IFLA_VXLAN_PROXY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_VXLAN_PROXY attribute: %m\00", align 1
@IFLA_VXLAN_L2MISS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_VXLAN_L2MISS attribute: %m\00", align 1
@IFLA_VXLAN_L3MISS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_VXLAN_L3MISS attribute: %m\00", align 1
@IFLA_VXLAN_AGEING = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_VXLAN_AGEING attribute: %m\00", align 1
@IFLA_VXLAN_LIMIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_VXLAN_LIMIT attribute: %m\00", align 1
@IFLA_VXLAN_UDP_CSUM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [51 x i8] c"Could not append IFLA_VXLAN_UDP_CSUM attribute: %m\00", align 1
@IFLA_VXLAN_UDP_ZERO_CSUM6_TX = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [60 x i8] c"Could not append IFLA_VXLAN_UDP_ZERO_CSUM6_TX attribute: %m\00", align 1
@IFLA_VXLAN_UDP_ZERO_CSUM6_RX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [60 x i8] c"Could not append IFLA_VXLAN_UDP_ZERO_CSUM6_RX attribute: %m\00", align 1
@IFLA_VXLAN_REMCSUM_TX = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [53 x i8] c"Could not append IFLA_VXLAN_REMCSUM_TX attribute: %m\00", align 1
@IFLA_VXLAN_REMCSUM_RX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [53 x i8] c"Could not append IFLA_VXLAN_REMCSUM_RX attribute: %m\00", align 1
@IFLA_VXLAN_PORT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_VXLAN_PORT attribute: %m\00", align 1
@IFLA_VXLAN_PORT_RANGE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [53 x i8] c"Could not append IFLA_VXLAN_PORT_RANGE attribute: %m\00", align 1
@IFLA_VXLAN_LABEL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_VXLAN_LABEL attribute: %m\00", align 1
@IFLA_VXLAN_GBP = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_VXLAN_GBP attribute: %m\00", align 1
@IFLA_VXLAN_GPE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_VXLAN_GPE attribute: %m\00", align 1
@_NETDEV_VXLAN_DF_INVALID = common dso_local global i64 0, align 8
@IFLA_VXLAN_DF = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_VXLAN_DF attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__*)* @netdev_vxlan_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_vxlan_fill_message_create(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifla_vxlan_port_range, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %14 = call i32 @assert(%struct.TYPE_23__* %13)
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %16 = call i32 @assert(%struct.TYPE_23__* %15)
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = call %struct.TYPE_23__* @VXLAN(%struct.TYPE_23__* %17)
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_23__* %19)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VXLAN_VID_MAX, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %28 = load i32, i32* @IFLA_VXLAN_ID, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_23__* %27, i32 %28, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %37, i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  br label %462

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 26
  %47 = call i64 @in_addr_is_null(i64 %44, %struct.TYPE_21__* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %41
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = load i32, i32* @IFLA_VXLAN_GROUP, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 26
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = call i32 @sd_netlink_message_append_in_addr(%struct.TYPE_23__* %56, i32 %57, i32* %60)
  store i32 %61, i32* %9, align 4
  br label %69

62:                                               ; preds = %49
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %64 = load i32, i32* @IFLA_VXLAN_GROUP6, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 26
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_23__* %63, i32 %64, i32* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %62, %55
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %73, i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 %75, i32* %4, align 4
  br label %462

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %41
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 25
  %83 = call i64 @in_addr_is_null(i64 %80, %struct.TYPE_21__* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %77
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AF_INET, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %93 = load i32, i32* @IFLA_VXLAN_LOCAL, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 25
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = call i32 @sd_netlink_message_append_in_addr(%struct.TYPE_23__* %92, i32 %93, i32* %96)
  store i32 %97, i32* %9, align 4
  br label %105

98:                                               ; preds = %85
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = load i32, i32* @IFLA_VXLAN_LOCAL6, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 25
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_23__* %99, i32 %100, i32* %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %98, %91
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %109, i32 %110, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 %111, i32* %4, align 4
  br label %462

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %77
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %115 = load i32, i32* @IFLA_VXLAN_LINK, align 4
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_23__* %114, i32 %115, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %123, i32 %124, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 %125, i32* %4, align 4
  br label %462

126:                                              ; preds = %113
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 24
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %133 = load i32, i32* @IFLA_VXLAN_TTL_INHERIT, align 4
  %134 = call i32 @sd_netlink_message_append_flag(%struct.TYPE_23__* %132, i32 %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %138, i32 %139, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  store i32 %140, i32* %4, align 4
  br label %462

141:                                              ; preds = %131
  br label %156

142:                                              ; preds = %126
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %144 = load i32, i32* @IFLA_VXLAN_TTL, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %143, i32 %144, i64 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %142
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %152, i32 %153, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 %154, i32* %4, align 4
  br label %462

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155, %141
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %156
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %163 = load i32, i32* @IFLA_VXLAN_TOS, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %162, i32 %163, i64 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %171, i32 %172, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  store i32 %173, i32* %4, align 4
  br label %462

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %156
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %177 = load i32, i32* @IFLA_VXLAN_LEARNING, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %176, i32 %177, i64 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %175
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %185, i32 %186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  store i32 %187, i32* %4, align 4
  br label %462

188:                                              ; preds = %175
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %190 = load i32, i32* @IFLA_VXLAN_RSC, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %189, i32 %190, i64 %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %188
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %198, i32 %199, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  store i32 %200, i32* %4, align 4
  br label %462

201:                                              ; preds = %188
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = load i32, i32* @IFLA_VXLAN_PROXY, align 4
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 8
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %202, i32 %203, i64 %206)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %201
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %211, i32 %212, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  store i32 %213, i32* %4, align 4
  br label %462

214:                                              ; preds = %201
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %216 = load i32, i32* @IFLA_VXLAN_L2MISS, align 4
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 9
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %215, i32 %216, i64 %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %214
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %224, i32 %225, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  store i32 %226, i32* %4, align 4
  br label %462

227:                                              ; preds = %214
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %229 = load i32, i32* @IFLA_VXLAN_L3MISS, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %228, i32 %229, i64 %232)
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %227
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %237, i32 %238, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  store i32 %239, i32* %4, align 4
  br label %462

240:                                              ; preds = %227
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 11
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %247 = load i32, i32* @IFLA_VXLAN_AGEING, align 4
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 11
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @USEC_PER_SEC, align 4
  %252 = sdiv i32 %250, %251
  %253 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_23__* %246, i32 %247, i32 %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %245
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %257, i32 %258, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  store i32 %259, i32* %4, align 4
  br label %462

260:                                              ; preds = %245
  br label %261

261:                                              ; preds = %260, %240
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 12
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %280

266:                                              ; preds = %261
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %268 = load i32, i32* @IFLA_VXLAN_LIMIT, align 4
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 12
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_23__* %267, i32 %268, i32 %271)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %266
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %276, i32 %277, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  store i32 %278, i32* %4, align 4
  br label %462

279:                                              ; preds = %266
  br label %280

280:                                              ; preds = %279, %261
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %282 = load i32, i32* @IFLA_VXLAN_UDP_CSUM, align 4
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 13
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %281, i32 %282, i64 %285)
  store i32 %286, i32* %9, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %280
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %290, i32 %291, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  store i32 %292, i32* %4, align 4
  br label %462

293:                                              ; preds = %280
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %295 = load i32, i32* @IFLA_VXLAN_UDP_ZERO_CSUM6_TX, align 4
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 14
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %294, i32 %295, i64 %298)
  store i32 %299, i32* %9, align 4
  %300 = load i32, i32* %9, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %293
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %304 = load i32, i32* %9, align 4
  %305 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %303, i32 %304, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0))
  store i32 %305, i32* %4, align 4
  br label %462

306:                                              ; preds = %293
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %308 = load i32, i32* @IFLA_VXLAN_UDP_ZERO_CSUM6_RX, align 4
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 15
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %307, i32 %308, i64 %311)
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %9, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %306
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %317 = load i32, i32* %9, align 4
  %318 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %316, i32 %317, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  store i32 %318, i32* %4, align 4
  br label %462

319:                                              ; preds = %306
  %320 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %321 = load i32, i32* @IFLA_VXLAN_REMCSUM_TX, align 4
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 16
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %320, i32 %321, i64 %324)
  store i32 %325, i32* %9, align 4
  %326 = load i32, i32* %9, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %319
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %330 = load i32, i32* %9, align 4
  %331 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %329, i32 %330, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0))
  store i32 %331, i32* %4, align 4
  br label %462

332:                                              ; preds = %319
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %334 = load i32, i32* @IFLA_VXLAN_REMCSUM_RX, align 4
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 17
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %333, i32 %334, i64 %337)
  store i32 %338, i32* %9, align 4
  %339 = load i32, i32* %9, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %332
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %342, i32 %343, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0))
  store i32 %344, i32* %4, align 4
  br label %462

345:                                              ; preds = %332
  %346 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %347 = load i32, i32* @IFLA_VXLAN_PORT, align 4
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 18
  %350 = load i64, i64* %349, align 8
  %351 = call i8* @htobe16(i64 %350)
  %352 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_23__* %346, i32 %347, i8* %351)
  store i32 %352, i32* %9, align 4
  %353 = load i32, i32* %9, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %345
  %356 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %357 = load i32, i32* %9, align 4
  %358 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %356, i32 %357, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  store i32 %358, i32* %4, align 4
  br label %462

359:                                              ; preds = %345
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 23
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %371, label %365

365:                                              ; preds = %359
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 23
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %394

371:                                              ; preds = %365, %359
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 23
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = call i8* @htobe16(i64 %375)
  %377 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %10, i32 0, i32 1
  store i8* %376, i8** %377, align 8
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 23
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 1
  %381 = load i64, i64* %380, align 8
  %382 = call i8* @htobe16(i64 %381)
  %383 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %10, i32 0, i32 0
  store i8* %382, i8** %383, align 8
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %385 = load i32, i32* @IFLA_VXLAN_PORT_RANGE, align 4
  %386 = call i32 @sd_netlink_message_append_data(%struct.TYPE_23__* %384, i32 %385, %struct.ifla_vxlan_port_range* %10, i32 16)
  store i32 %386, i32* %9, align 4
  %387 = load i32, i32* %9, align 4
  %388 = icmp slt i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %371
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %391 = load i32, i32* %9, align 4
  %392 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %390, i32 %391, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0))
  store i32 %392, i32* %4, align 4
  br label %462

393:                                              ; preds = %371
  br label %394

394:                                              ; preds = %393, %365
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %396 = load i32, i32* @IFLA_VXLAN_LABEL, align 4
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %397, i32 0, i32 22
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @htobe32(i32 %399)
  %401 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_23__* %395, i32 %396, i32 %400)
  store i32 %401, i32* %9, align 4
  %402 = load i32, i32* %9, align 4
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %394
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %406 = load i32, i32* %9, align 4
  %407 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %405, i32 %406, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0))
  store i32 %407, i32* %4, align 4
  br label %462

408:                                              ; preds = %394
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 21
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %424

413:                                              ; preds = %408
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %415 = load i32, i32* @IFLA_VXLAN_GBP, align 4
  %416 = call i32 @sd_netlink_message_append_flag(%struct.TYPE_23__* %414, i32 %415)
  store i32 %416, i32* %9, align 4
  %417 = load i32, i32* %9, align 4
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %413
  %420 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %421 = load i32, i32* %9, align 4
  %422 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %420, i32 %421, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0))
  store i32 %422, i32* %4, align 4
  br label %462

423:                                              ; preds = %413
  br label %424

424:                                              ; preds = %423, %408
  %425 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %425, i32 0, i32 20
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %440

429:                                              ; preds = %424
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %431 = load i32, i32* @IFLA_VXLAN_GPE, align 4
  %432 = call i32 @sd_netlink_message_append_flag(%struct.TYPE_23__* %430, i32 %431)
  store i32 %432, i32* %9, align 4
  %433 = load i32, i32* %9, align 4
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %429
  %436 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %437 = load i32, i32* %9, align 4
  %438 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %436, i32 %437, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0))
  store i32 %438, i32* %4, align 4
  br label %462

439:                                              ; preds = %429
  br label %440

440:                                              ; preds = %439, %424
  %441 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %441, i32 0, i32 19
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @_NETDEV_VXLAN_DF_INVALID, align 8
  %445 = icmp ne i64 %443, %444
  br i1 %445, label %446, label %460

446:                                              ; preds = %440
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %448 = load i32, i32* @IFLA_VXLAN_DF, align 4
  %449 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %449, i32 0, i32 19
  %451 = load i64, i64* %450, align 8
  %452 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_23__* %447, i32 %448, i64 %451)
  store i32 %452, i32* %9, align 4
  %453 = load i32, i32* %9, align 4
  %454 = icmp slt i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %446
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %457 = load i32, i32* %9, align 4
  %458 = call i32 @log_netdev_error_errno(%struct.TYPE_23__* %456, i32 %457, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0))
  store i32 %458, i32* %4, align 4
  br label %462

459:                                              ; preds = %446
  br label %460

460:                                              ; preds = %459, %440
  %461 = load i32, i32* %9, align 4
  store i32 %461, i32* %4, align 4
  br label %462

462:                                              ; preds = %460, %455, %435, %419, %404, %389, %355, %341, %328, %315, %302, %289, %275, %256, %236, %223, %210, %197, %184, %170, %151, %137, %122, %108, %72, %36
  %463 = load i32, i32* %4, align 4
  ret i32 %463
}

declare dso_local i32 @assert(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @VXLAN(%struct.TYPE_23__*) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i64 @in_addr_is_null(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @sd_netlink_message_append_in_addr(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_append_flag(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @sd_netlink_message_append_u8(%struct.TYPE_23__*, i32, i64) #1

declare dso_local i32 @sd_netlink_message_append_u16(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i8* @htobe16(i64) #1

declare dso_local i32 @sd_netlink_message_append_data(%struct.TYPE_23__*, i32, %struct.ifla_vxlan_port_range*, i32) #1

declare dso_local i32 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

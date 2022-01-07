; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_ip6gre_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_ip6gre_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_21__, %struct.TYPE_20__, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@NETDEV_KIND_IP6GRE = common dso_local global i64 0, align 8
@IFLA_GRE_LINK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Could not append IFLA_GRE_LINK attribute: %m\00", align 1
@IFLA_GRE_LOCAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_GRE_LOCAL attribute: %m\00", align 1
@IFLA_GRE_REMOTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_GRE_REMOTE attribute: %m\00", align 1
@IFLA_GRE_TTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Could not append IFLA_GRE_TTL attribute: %m\00", align 1
@_NETDEV_IPV6_FLOWLABEL_INVALID = common dso_local global i64 0, align 8
@IFLA_GRE_FLOWINFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_GRE_FLOWINFO attribute: %m\00", align 1
@IFLA_GRE_FLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_GRE_FLAGS attribute: %m\00", align 1
@GRE_KEY = common dso_local global i32 0, align 4
@IFLA_GRE_IKEY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_GRE_IKEY attribute: %m\00", align 1
@IFLA_GRE_OKEY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_GRE_OKEY attribute: %m\00", align 1
@IFLA_GRE_IFLAGS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_GRE_IFLAGS attribute: %m\00", align 1
@IFLA_GRE_OFLAGS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_GRE_OFLAGS, attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_22__*)* @netdev_ip6gre_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ip6gre_fill_message_create(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_22__* %14)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NETDEV_KIND_IP6GRE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = call %struct.TYPE_22__* @IP6GRE(%struct.TYPE_22__* %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %12, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = call %struct.TYPE_22__* @IP6GRETAP(%struct.TYPE_22__* %25)
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %12, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %29 = call i32 @assert(%struct.TYPE_22__* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = call i32 @assert(%struct.TYPE_22__* %30)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = icmp ne %struct.TYPE_23__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34, %27
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = load i32, i32* @IFLA_GRE_LINK, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %43 = icmp ne %struct.TYPE_23__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %50

48:                                               ; preds = %39
  %49 = load i64, i64* @LOOPBACK_IFINDEX, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i64 [ %47, %44 ], [ %49, %48 ]
  %52 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_22__* %40, i32 %41, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %56, i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %220

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = load i32, i32* @IFLA_GRE_LOCAL, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_22__* %61, i32 %62, i32* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %70, i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 %72, i32* %4, align 4
  br label %220

73:                                               ; preds = %60
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %75 = load i32, i32* @IFLA_GRE_REMOTE, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = call i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_22__* %74, i32 %75, i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %83, i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %4, align 4
  br label %220

86:                                               ; preds = %73
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %88 = load i32, i32* @IFLA_GRE_TTL, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_22__* %87, i32 %88, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %96, i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 %98, i32* %4, align 4
  br label %220

99:                                               ; preds = %86
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @_NETDEV_IPV6_FLOWLABEL_INVALID, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %107 = load i32, i32* @IFLA_GRE_FLOWINFO, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_22__* %106, i32 %107, i64 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %105
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %115, i32 %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 %117, i32* %4, align 4
  br label %220

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %121 = load i32, i32* @IFLA_GRE_FLAGS, align 4
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_22__* %120, i32 %121, i64 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %129, i32 %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  store i32 %131, i32* %4, align 4
  br label %220

132:                                              ; preds = %119
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @htobe32(i64 %140)
  store i64 %141, i64* %9, align 8
  store i64 %141, i64* %8, align 8
  %142 = load i32, i32* @GRE_KEY, align 4
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* @GRE_KEY, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %137, %132
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @htobe32(i64 %156)
  store i64 %157, i64* %8, align 8
  %158 = load i32, i32* @GRE_KEY, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %153, %148
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @htobe32(i64 %169)
  store i64 %170, i64* %9, align 8
  %171 = load i32, i32* @GRE_KEY, align 4
  %172 = load i32, i32* %11, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %166, %161
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %176 = load i32, i32* @IFLA_GRE_IKEY, align 4
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_22__* %175, i32 %176, i64 %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %182, i32 %183, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  store i32 %184, i32* %4, align 4
  br label %220

185:                                              ; preds = %174
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %187 = load i32, i32* @IFLA_GRE_OKEY, align 4
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_22__* %186, i32 %187, i64 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %13, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %193, i32 %194, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  store i32 %195, i32* %4, align 4
  br label %220

196:                                              ; preds = %185
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %198 = load i32, i32* @IFLA_GRE_IFLAGS, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_22__* %197, i32 %198, i32 %199)
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %204, i32 %205, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  store i32 %206, i32* %4, align 4
  br label %220

207:                                              ; preds = %196
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %209 = load i32, i32* @IFLA_GRE_OFLAGS, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_22__* %208, i32 %209, i32 %210)
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @log_netdev_error_errno(%struct.TYPE_22__* %215, i32 %216, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  store i32 %217, i32* %4, align 4
  br label %220

218:                                              ; preds = %207
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %214, %203, %192, %181, %128, %114, %95, %82, %69, %55
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @assert(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @IP6GRE(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @IP6GRETAP(%struct.TYPE_22__*) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_in6_addr(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_append_u8(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @htobe32(i64) #1

declare dso_local i32 @sd_netlink_message_append_u16(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

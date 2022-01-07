; ModuleID = '/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_gre_erspan_fill_message_create.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/netdev/extr_tunnel.c_netdev_gre_erspan_fill_message_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__, i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid netdev kind\00", align 1
@IFLA_GRE_LINK = common dso_local global i32 0, align 4
@LOOPBACK_IFINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_GRE_LINK attribute: %m\00", align 1
@IFLA_GRE_ERSPAN_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Could not append IFLA_GRE_ERSPAN_INDEX attribute: %m\00", align 1
@IFLA_GRE_LOCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Could not append IFLA_GRE_LOCAL attribute: %m\00", align 1
@IFLA_GRE_REMOTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_GRE_REMOTE attribute: %m\00", align 1
@IFLA_GRE_TTL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Could not append IFLA_GRE_TTL attribute: %m\00", align 1
@IFLA_GRE_TOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Could not append IFLA_GRE_TOS attribute: %m\00", align 1
@IFLA_GRE_PMTUDISC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Could not append IFLA_GRE_PMTUDISC attribute: %m\00", align 1
@GRE_KEY = common dso_local global i32 0, align 4
@GRE_SEQ = common dso_local global i32 0, align 4
@IFLA_GRE_IKEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_GRE_IKEY attribute: %m\00", align 1
@IFLA_GRE_OKEY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"Could not append IFLA_GRE_OKEY attribute: %m\00", align 1
@IFLA_GRE_IFLAGS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [47 x i8] c"Could not append IFLA_GRE_IFLAGS attribute: %m\00", align 1
@IFLA_GRE_OFLAGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"Could not append IFLA_GRE_OFLAGS, attribute: %m\00", align 1
@IFLA_GRE_ENCAP_TYPE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"Could not append IFLA_GRE_ENCAP_TYPE attribute: %m\00", align 1
@IFLA_GRE_ENCAP_SPORT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [52 x i8] c"Could not append IFLA_GRE_ENCAP_SPORT attribute: %m\00", align 1
@IFLA_GRE_ENCAP_DPORT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [52 x i8] c"Could not append IFLA_GRE_ENCAP_DPORT attribute: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_24__*)* @netdev_gre_erspan_fill_message_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_gre_erspan_fill_message_create(%struct.TYPE_24__* %0, %struct.TYPE_25__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = call i32 @assert(%struct.TYPE_24__* %14)
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %17 = call i32 @assert(%struct.TYPE_24__* %16)
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %30 [
    i32 129, label %21
    i32 130, label %24
    i32 128, label %27
  ]

21:                                               ; preds = %3
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = call %struct.TYPE_24__* @GRE(%struct.TYPE_24__* %22)
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %12, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %26 = call %struct.TYPE_24__* @ERSPAN(%struct.TYPE_24__* %25)
  store %struct.TYPE_24__* %26, %struct.TYPE_24__** %12, align 8
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = call %struct.TYPE_24__* @GRETAP(%struct.TYPE_24__* %28)
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %12, align 8
  br label %32

30:                                               ; preds = %3
  %31 = call i32 @assert_not_reached(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27, %24, %21
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %34 = call i32 @assert(%struct.TYPE_24__* %33)
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = icmp ne %struct.TYPE_25__* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 15
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %44 = load i32, i32* @IFLA_GRE_LINK, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %46 = icmp ne %struct.TYPE_25__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @LOOPBACK_IFINDEX, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %50, %47 ], [ %52, %51 ]
  %55 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_24__* %43, i32 %44, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %59, i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 %61, i32* %4, align 4
  br label %309

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %37
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 130
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %70 = load i32, i32* @IFLA_GRE_ERSPAN_INDEX, align 4
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_24__* %69, i32 %70, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %78, i32 %79, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  store i32 %80, i32* %4, align 4
  br label %309

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %63
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %84 = load i32, i32* @IFLA_GRE_LOCAL, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 13
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = call i32 @sd_netlink_message_append_in_addr(%struct.TYPE_24__* %83, i32 %84, i32* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %92, i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 %94, i32* %4, align 4
  br label %309

95:                                               ; preds = %82
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %97 = load i32, i32* @IFLA_GRE_REMOTE, align 4
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = call i32 @sd_netlink_message_append_in_addr(%struct.TYPE_24__* %96, i32 %97, i32* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %105, i32 %106, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 %107, i32* %4, align 4
  br label %309

108:                                              ; preds = %95
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %110 = load i32, i32* @IFLA_GRE_TTL, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_24__* %109, i32 %110, i32 %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %118, i32 %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 %120, i32* %4, align 4
  br label %309

121:                                              ; preds = %108
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %123 = load i32, i32* @IFLA_GRE_TOS, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_24__* %122, i32 %123, i32 %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %131, i32 %132, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  store i32 %133, i32* %4, align 4
  br label %309

134:                                              ; preds = %121
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %136 = load i32, i32* @IFLA_GRE_PMTUDISC, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @sd_netlink_message_append_u8(%struct.TYPE_24__* %135, i32 %136, i32 %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %144, i32 %145, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  store i32 %146, i32* %4, align 4
  br label %309

147:                                              ; preds = %134
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @htobe32(i64 %155)
  store i32 %156, i32* %9, align 4
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @GRE_KEY, align 4
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @GRE_KEY, align 4
  %161 = load i32, i32* %11, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %152, %147
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @htobe32(i64 %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* @GRE_KEY, align 4
  %174 = load i32, i32* %10, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %168, %163
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @htobe32(i64 %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* @GRE_KEY, align 4
  %187 = load i32, i32* %11, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %11, align 4
  br label %189

189:                                              ; preds = %181, %176
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32, i32* @GRE_SEQ, align 4
  %196 = load i32, i32* %10, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* @GRE_SEQ, align 4
  %199 = load i32, i32* %11, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %216

201:                                              ; preds = %189
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  %207 = load i32, i32* @GRE_SEQ, align 4
  %208 = xor i32 %207, -1
  %209 = load i32, i32* %10, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* @GRE_SEQ, align 4
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %11, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %206, %201
  br label %216

216:                                              ; preds = %215, %194
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %218 = load i32, i32* @IFLA_GRE_IKEY, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_24__* %217, i32 %218, i32 %219)
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %224, i32 %225, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  store i32 %226, i32* %4, align 4
  br label %309

227:                                              ; preds = %216
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %229 = load i32, i32* @IFLA_GRE_OKEY, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @sd_netlink_message_append_u32(%struct.TYPE_24__* %228, i32 %229, i32 %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %235, i32 %236, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  store i32 %237, i32* %4, align 4
  br label %309

238:                                              ; preds = %227
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %240 = load i32, i32* @IFLA_GRE_IFLAGS, align 4
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_24__* %239, i32 %240, i32 %241)
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %246, i32 %247, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  store i32 %248, i32* %4, align 4
  br label %309

249:                                              ; preds = %238
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %251 = load i32, i32* @IFLA_GRE_OFLAGS, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_24__* %250, i32 %251, i32 %252)
  store i32 %253, i32* %13, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %249
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %258 = load i32, i32* %13, align 4
  %259 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %257, i32 %258, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  store i32 %259, i32* %4, align 4
  br label %309

260:                                              ; preds = %249
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %307

265:                                              ; preds = %260
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %267 = load i32, i32* @IFLA_GRE_ENCAP_TYPE, align 4
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_24__* %266, i32 %267, i32 %270)
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %265
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %276 = load i32, i32* %13, align 4
  %277 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %275, i32 %276, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  store i32 %277, i32* %4, align 4
  br label %309

278:                                              ; preds = %265
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %280 = load i32, i32* @IFLA_GRE_ENCAP_SPORT, align 4
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @htobe16(i32 %283)
  %285 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_24__* %279, i32 %280, i32 %284)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %278
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %289, i32 %290, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0))
  store i32 %291, i32* %4, align 4
  br label %309

292:                                              ; preds = %278
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %294 = load i32, i32* @IFLA_GRE_ENCAP_DPORT, align 4
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @htobe16(i32 %297)
  %299 = call i32 @sd_netlink_message_append_u16(%struct.TYPE_24__* %293, i32 %294, i32 %298)
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %13, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %292
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %304 = load i32, i32* %13, align 4
  %305 = call i32 @log_netdev_error_errno(%struct.TYPE_24__* %303, i32 %304, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0))
  store i32 %305, i32* %4, align 4
  br label %309

306:                                              ; preds = %292
  br label %307

307:                                              ; preds = %306, %260
  %308 = load i32, i32* %13, align 4
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %307, %302, %288, %274, %256, %245, %234, %223, %143, %130, %117, %104, %91, %77, %58
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local i32 @assert(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @GRE(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @ERSPAN(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @GRETAP(%struct.TYPE_24__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @sd_netlink_message_append_u32(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @log_netdev_error_errno(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @sd_netlink_message_append_in_addr(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @sd_netlink_message_append_u8(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @htobe32(i64) #1

declare dso_local i32 @sd_netlink_message_append_u16(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @htobe16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

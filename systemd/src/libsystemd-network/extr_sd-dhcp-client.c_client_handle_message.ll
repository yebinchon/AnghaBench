; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_handle_message.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, %struct.TYPE_24__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32 }

@FORMAT_TIMESPAN_MAX = common dso_local global i32 0, align 4
@client_timeout_resend = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dhcp4-resend-timer\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@SD_DHCP_CLIENT_EVENT_IP_ACQUIRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not set lease timeouts\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"could not bind UDP socket\00", align 1
@client_receive_message_udp = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SD_DHCP_CLIENT_EVENT_EXPIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"REBOOT in %s\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@RESTART_AFTER_NAK_MIN_USEC = common dso_local global i32 0, align 4
@RESTART_AFTER_NAK_MAX_USEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_25__*, i32)* @client_handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_handle_message(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %14 = call i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_25__* %13)
  %15 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = call i32 @assert(%struct.TYPE_25__* %19)
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 12
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %24 = call i32 @assert(%struct.TYPE_25__* %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = call i32 @assert(%struct.TYPE_25__* %25)
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %239 [
    i32 129, label %30
    i32 132, label %66
    i32 130, label %66
    i32 131, label %66
    i32 133, label %66
    i32 136, label %213
    i32 135, label %235
    i32 134, label %235
    i32 128, label %236
  ]

30:                                               ; preds = %3
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @client_handle_offer(%struct.TYPE_25__* %31, %struct.TYPE_25__* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  store i32 130, i32* %39, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 8
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 12
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %43, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 10
  %47 = call i32 (...) @clock_boottime_or_monotonic()
  %48 = load i32, i32* @client_timeout_resend, align 4
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @event_reset_time(%struct.TYPE_25__* %44, i32* %46, i32 %47, i32 0, i32 0, i32 %48, %struct.TYPE_25__* %49, i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %240

57:                                               ; preds = %37
  br label %65

58:                                               ; preds = %30
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @ENOMSG, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %249

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %57
  br label %239

66:                                               ; preds = %3, %3, %3, %3
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @client_handle_ack(%struct.TYPE_25__* %67, %struct.TYPE_25__* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %166

73:                                               ; preds = %66
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @event_source_disable(i32 %78)
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sd_event_source_unref(i32 %82)
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 9
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @asynchronous_close(i32 %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IN_SET(i32 %94, i32 130, i32 132)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %73
  %98 = load i32, i32* @SD_DHCP_CLIENT_EVENT_IP_ACQUIRE, align 4
  store i32 %98, i32* %11, align 4
  br label %106

99:                                               ; preds = %73
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @SD_DHCP_CLIENT_EVENT_IP_ACQUIRE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %97
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  store i32 136, i32* %108, align 8
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 8
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %119 = call i32 @client_set_lease_timeouts(%struct.TYPE_25__* %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %124 = call i32 (%struct.TYPE_25__*, i8*, ...) @log_dhcp_client(%struct.TYPE_25__* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %240

125:                                              ; preds = %106
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @dhcp_network_bind_udp_socket(i32 %128, i32 %133, i32 %136, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %125
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %145 = call i32 (%struct.TYPE_25__*, i8*, ...) @log_dhcp_client(%struct.TYPE_25__* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %240

146:                                              ; preds = %125
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %151 = load i32, i32* @client_receive_message_udp, align 4
  %152 = call i32 @client_initialize_io_events(%struct.TYPE_25__* %150, i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %146
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @client_notify(%struct.TYPE_25__* %156, i32 %157)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 128
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %249

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164, %146
  br label %212

166:                                              ; preds = %66
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @EADDRNOTAVAIL, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %166
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %173 = load i32, i32* @SD_DHCP_CLIENT_EVENT_EXPIRED, align 4
  %174 = call i32 @client_notify(%struct.TYPE_25__* %172, i32 %173)
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = call i32 @client_initialize(%struct.TYPE_25__* %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %240

180:                                              ; preds = %171
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %182 = call i32 @client_start_delayed(%struct.TYPE_25__* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %240

186:                                              ; preds = %180
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %188 = load i32, i32* @FORMAT_TIMESPAN_MAX, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @USEC_PER_SEC, align 4
  %193 = call i32 @format_timespan(i8* %18, i32 %188, i32 %191, i32 %192)
  %194 = call i32 (%struct.TYPE_25__*, i8*, ...) @log_dhcp_client(%struct.TYPE_25__* %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %197, 2
  %199 = load i32, i32* @RESTART_AFTER_NAK_MIN_USEC, align 4
  %200 = load i32, i32* @RESTART_AFTER_NAK_MAX_USEC, align 4
  %201 = call i32 @CLAMP(i32 %198, i32 %199, i32 %200)
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %249

204:                                              ; preds = %166
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* @ENOMSG, align 4
  %207 = sub nsw i32 0, %206
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %249

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211, %165
  br label %239

213:                                              ; preds = %3
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @client_handle_forcerenew(%struct.TYPE_25__* %214, %struct.TYPE_25__* %215, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %222 = call i32 @client_timeout_t1(i32* null, i32 0, %struct.TYPE_25__* %221)
  store i32 %222, i32* %10, align 4
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %240

226:                                              ; preds = %220
  br label %234

227:                                              ; preds = %213
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* @ENOMSG, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %249

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %226
  br label %239

235:                                              ; preds = %3, %3
  br label %239

236:                                              ; preds = %3
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %10, align 4
  br label %240

239:                                              ; preds = %3, %235, %234, %212, %65
  br label %240

240:                                              ; preds = %239, %236, %225, %185, %179, %143, %122, %56
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @client_stop(%struct.TYPE_25__* %244, i32 %245)
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %249

249:                                              ; preds = %247, %232, %209, %186, %163, %63
  %250 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_25__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(%struct.TYPE_25__*) #1

declare dso_local i32 @client_handle_offer(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @event_reset_time(%struct.TYPE_25__*, i32*, i32, i32, i32, i32, %struct.TYPE_25__*, i32, i8*, i32) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i32 @client_handle_ack(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @event_source_disable(i32) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i32 @asynchronous_close(i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @client_set_lease_timeouts(%struct.TYPE_25__*) #1

declare dso_local i32 @log_dhcp_client(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local i32 @dhcp_network_bind_udp_socket(i32, i32, i32, i32) #1

declare dso_local i32 @client_initialize_io_events(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @client_notify(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @client_initialize(%struct.TYPE_25__*) #1

declare dso_local i32 @client_start_delayed(%struct.TYPE_25__*) #1

declare dso_local i32 @format_timespan(i8*, i32, i32, i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @client_handle_forcerenew(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @client_timeout_t1(i32*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @client_stop(%struct.TYPE_25__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

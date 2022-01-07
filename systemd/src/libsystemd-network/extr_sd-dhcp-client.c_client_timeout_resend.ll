; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_timeout_resend.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_client_timeout_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"REBOOTED\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"dhcp4-resend-timer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i8*)* @client_timeout_resend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_timeout_resend(%struct.TYPE_18__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %16 = call i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_18__* %15)
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = call i32 @assert(%struct.TYPE_18__* %17)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = call i32 @assert(%struct.TYPE_18__* %19)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = call i32 @assert(%struct.TYPE_18__* %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = call i32 (...) @clock_boottime_or_monotonic()
  %29 = call i32 @sd_event_now(%struct.TYPE_18__* %27, i32 %28, i32* %10)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %218

33:                                               ; preds = %3
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %125 [
    i32 131, label %37
    i32 133, label %59
    i32 132, label %81
    i32 135, label %96
    i32 134, label %96
    i32 129, label %96
    i32 130, label %96
    i32 136, label %96
    i32 128, label %122
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %42, %47
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 60
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 60, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @USEC_PER_SEC, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %9, align 4
  br label %125

59:                                               ; preds = %33
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 7
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %64, %69
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 60
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store i32 60, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @USEC_PER_SEC, align 4
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %9, align 4
  br label %125

81:                                               ; preds = %33
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = call i32 @client_initialize(%struct.TYPE_18__* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %218

87:                                               ; preds = %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = call i32 @client_start(%struct.TYPE_18__* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %218

93:                                               ; preds = %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = call i32 @log_dhcp_client(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %222

96:                                               ; preds = %33, %33, %33, %33, %33
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %110

109:                                              ; preds = %96
  br label %218

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @UINT64_C(i32 1)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MIN(i32 %115, i32 6)
  %117 = shl i32 %112, %116
  %118 = sub nsw i32 %117, 1
  %119 = load i32, i32* @USEC_PER_SEC, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %111, %120
  store i32 %121, i32* %9, align 4
  br label %125

122:                                              ; preds = %33
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %12, align 4
  br label %218

125:                                              ; preds = %33, %110, %75, %53
  %126 = call i32 (...) @random_u32()
  %127 = and i32 %126, 2097151
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 5
  %135 = call i32 (...) @clock_boottime_or_monotonic()
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @USEC_PER_MSEC, align 4
  %138 = mul nsw i32 10, %137
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @event_reset_time(%struct.TYPE_18__* %132, i32* %134, i32 %135, i32 %136, i32 %138, i32 (%struct.TYPE_18__*, i32, i8*)* @client_timeout_resend, %struct.TYPE_18__* %139, i32 %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %125
  br label %218

147:                                              ; preds = %125
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %217 [
    i32 135, label %151
    i32 129, label %172
    i32 134, label %187
    i32 130, label %187
    i32 131, label %187
    i32 133, label %187
    i32 132, label %213
    i32 136, label %213
    i32 128, label %214
  ]

151:                                              ; preds = %147
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %153 = call i32 @client_send_discover(%struct.TYPE_18__* %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i32 129, i32* %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 3
  store i32 0, i32* %160, align 4
  br label %171

161:                                              ; preds = %151
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp sge i32 %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %218

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %156
  br label %217

172:                                              ; preds = %147
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %174 = call i32 @client_send_discover(%struct.TYPE_18__* %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %218

186:                                              ; preds = %177, %172
  br label %217

187:                                              ; preds = %147, %147, %147, %147
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %189 = call i32 @client_send_request(%struct.TYPE_18__* %188)
  store i32 %189, i32* %12, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %187
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp sge i32 %195, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %218

201:                                              ; preds = %192, %187
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 134
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  store i32 132, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %201
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  br label %217

213:                                              ; preds = %147, %147
  br label %217

214:                                              ; preds = %147
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %12, align 4
  br label %218

217:                                              ; preds = %147, %213, %209, %186, %171
  store i32 0, i32* %4, align 4
  br label %222

218:                                              ; preds = %214, %200, %185, %169, %146, %122, %109, %92, %86, %32
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @client_stop(%struct.TYPE_18__* %219, i32 %220)
  store i32 0, i32* %4, align 4
  br label %222

222:                                              ; preds = %218, %217, %93
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_18__*) #1

declare dso_local i32 @assert(%struct.TYPE_18__*) #1

declare dso_local i32 @sd_event_now(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @clock_boottime_or_monotonic(...) #1

declare dso_local i32 @client_initialize(%struct.TYPE_18__*) #1

declare dso_local i32 @client_start(%struct.TYPE_18__*) #1

declare dso_local i32 @log_dhcp_client(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @random_u32(...) #1

declare dso_local i32 @event_reset_time(%struct.TYPE_18__*, i32*, i32, i32, i32, i32 (%struct.TYPE_18__*, i32, i8*)*, %struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i32 @client_send_discover(%struct.TYPE_18__*) #1

declare dso_local i32 @client_send_request(%struct.TYPE_18__*) #1

declare dso_local i32 @client_stop(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

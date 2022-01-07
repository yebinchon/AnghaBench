; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_dhcp_client_set_iaid_duid_internal.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_sd-dhcp-client.c_dhcp_client_set_iaid_duid_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DHCP_STATE_INIT = common dso_local global i32 0, align 4
@DHCP_STATE_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Configured %sDUID, restarting.\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"IAID+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SD_DHCP_CLIENT_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32, i32, i32, i8*, i64, i32)* @dhcp_client_set_iaid_duid_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dhcp_client_set_iaid_duid_internal(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %21 = call i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @assert_return(%struct.TYPE_17__* %22, i32 %24)
  %26 = load i64, i64* %16, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %28, %8
  %32 = phi i1 [ true, %8 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.TYPE_17__*
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @assert_return(%struct.TYPE_17__* %35, i32 %37)
  %39 = load i8*, i8** %15, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load i32, i32* %14, align 4
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @dhcp_validate_duid_len(i32 %42, i64 %43, i32 1)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %9, align 4
  br label %233

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = bitcast %struct.TYPE_18__* %52 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @zero(i64 %55, i64 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  store i32 255, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %50
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @htobe32(i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  br label %94

74:                                               ; preds = %64
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = call i32 @dhcp_identifier_set_iaid(i32 %77, i32 %80, i32 %83, i32 1, i32* %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %9, align 4
  br label %233

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %67
  br label %95

95:                                               ; preds = %94, %50
  %96 = load i8*, i8** %15, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @htobe16(i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i8*, i8** %15, align 8
  %113 = load i64, i64* %16, align 8
  %114 = call i32 @memcpy(i32* %111, i8* %112, i64 %113)
  %115 = load i64, i64* %16, align 8
  %116 = add i64 4, %115
  store i64 %116, i64* %19, align 8
  br label %202

117:                                              ; preds = %95
  %118 = load i32, i32* %14, align 4
  switch i32 %118, label %198 [
    i32 129, label %119
    i32 131, label %148
    i32 130, label %159
    i32 128, label %187
  ]

119:                                              ; preds = %117
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EOPNOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %9, align 4
  br label %233

127:                                              ; preds = %119
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dhcp_identifier_set_duid_llt(%struct.TYPE_19__* %131, i32 %132, i32 %135, i32 %138, i32 %141, i64* %19)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %127
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %9, align 4
  br label %233

147:                                              ; preds = %127
  br label %201

148:                                              ; preds = %117
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = call i32 @dhcp_identifier_set_duid_en(%struct.TYPE_19__* %152, i64* %19)
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %9, align 4
  br label %233

158:                                              ; preds = %148
  br label %201

159:                                              ; preds = %117
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* @EOPNOTSUPP, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %233

167:                                              ; preds = %159
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @dhcp_identifier_set_duid_ll(%struct.TYPE_19__* %171, i32 %174, i32 %177, i32 %180, i64* %19)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %167
  %185 = load i32, i32* %18, align 4
  store i32 %185, i32* %9, align 4
  br label %233

186:                                              ; preds = %167
  br label %201

187:                                              ; preds = %117
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = call i32 @dhcp_identifier_set_duid_uuid(%struct.TYPE_19__* %191, i64* %19)
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %18, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %187
  %196 = load i32, i32* %18, align 4
  store i32 %196, i32* %9, align 4
  br label %233

197:                                              ; preds = %187
  br label %201

198:                                              ; preds = %117
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %9, align 4
  br label %233

201:                                              ; preds = %197, %186, %158, %147
  br label %202

202:                                              ; preds = %201, %98
  %203 = load i64, i64* %19, align 8
  %204 = add i64 4, %203
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i64 4, i64 0
  %209 = add i64 %204, %208
  %210 = trunc i64 %209 to i32
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @DHCP_STATE_INIT, align 4
  %217 = load i32, i32* @DHCP_STATE_STOPPED, align 4
  %218 = call i32 @IN_SET(i32 %215, i32 %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %202
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %222 = load i32, i32* %11, align 4
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %226 = call i32 @log_dhcp_client(%struct.TYPE_17__* %221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %225)
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %228 = load i32, i32* @SD_DHCP_CLIENT_EVENT_STOP, align 4
  %229 = call i32 @client_stop(%struct.TYPE_17__* %227, i32 %228)
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %231 = call i32 @sd_dhcp_client_start(%struct.TYPE_17__* %230)
  br label %232

232:                                              ; preds = %220, %202
  store i32 0, i32* %9, align 4
  br label %233

233:                                              ; preds = %232, %198, %195, %184, %164, %156, %145, %124, %91, %47
  %234 = load i32, i32* %9, align 4
  ret i32 %234
}

declare dso_local i32 @DHCP_CLIENT_DONT_DESTROY(%struct.TYPE_17__*) #1

declare dso_local i32 @assert_return(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dhcp_validate_duid_len(i32, i64, i32) #1

declare dso_local i32 @zero(i64, i64) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @dhcp_identifier_set_iaid(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @htobe16(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @dhcp_identifier_set_duid_llt(%struct.TYPE_19__*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @dhcp_identifier_set_duid_en(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @dhcp_identifier_set_duid_ll(%struct.TYPE_19__*, i32, i32, i32, i64*) #1

declare dso_local i32 @dhcp_identifier_set_duid_uuid(%struct.TYPE_19__*, i64*) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @log_dhcp_client(%struct.TYPE_17__*, i8*, i8*) #1

declare dso_local i32 @client_stop(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sd_dhcp_client_start(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

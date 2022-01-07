; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-packet.c_dhcp_packet_verify_headers.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_dhcp-packet.c_dhcp_packet_verify_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i32 }

@IPVERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ignoring packet: not IPv4\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ignoring packet: IPv4 IHL (%u words) invalid\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"ignoring packet: IPv4 IHL (%zu bytes) smaller than minimum (20 bytes)\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"ignoring packet: packet (%zu bytes) smaller than expected (%zu) by IP header\00", align 1
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"ignoring packet: not UDP\00", align 1
@.str.5 = private unnamed_addr constant [78 x i8] c"ignoring packet: packet (%zu bytes) smaller than expected (%zu) by UDP header\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"ignoring packet: to port %u, which is not the DHCP client port (%u)\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ignoring packet: invalid IP checksum\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"ignoring packet: invalid UDP checksum\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp_packet_verify_headers(%struct.TYPE_8__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPVERSION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @SYNTHETIC_ERRNO(i32 %20)
  %22 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  br label %164

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @SYNTHETIC_ERRNO(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %5, align 4
  br label %164

37:                                               ; preds = %23
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %44, 20
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @SYNTHETIC_ERRNO(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %48, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  store i32 %50, i32* %5, align 4
  br label %164

51:                                               ; preds = %37
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @SYNTHETIC_ERRNO(i32 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %57, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i64 %58, i64 %59)
  store i32 %60, i32* %5, align 4
  br label %164

61:                                               ; preds = %51
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IPPROTO_UDP, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = call i32 @SYNTHETIC_ERRNO(i32 %69)
  %71 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 %71, i32* %5, align 4
  br label %164

72:                                               ; preds = %61
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @be16toh(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %74, %80
  %82 = icmp ult i64 %73, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %72
  %84 = load i32, i32* @EINVAL, align 4
  %85 = call i32 @SYNTHETIC_ERRNO(i32 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @be16toh(i32 %91)
  %93 = sext i32 %92 to i64
  %94 = add i64 %87, %93
  %95 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %85, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.5, i64 0, i64 0), i64 %86, i64 %94)
  store i32 %95, i32* %5, align 4
  br label %164

96:                                               ; preds = %72
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @be16toh(i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %96
  %105 = load i32, i32* @EINVAL, align 4
  %106 = call i32 @SYNTHETIC_ERRNO(i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @be16toh(i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %106, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %164

114:                                              ; preds = %96
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = bitcast %struct.TYPE_6__* %116 to i32*
  %118 = load i64, i64* %10, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @dhcp_packet_checksum(i32* %117, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load i32, i32* @EINVAL, align 4
  %124 = call i32 @SYNTHETIC_ERRNO(i32 %123)
  %125 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 %125, i32* %5, align 4
  br label %164

126:                                              ; preds = %114
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %163

129:                                              ; preds = %126
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %129
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = bitcast i64* %148 to i32*
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @be16toh(i32 %153)
  %155 = add nsw i32 %154, 12
  %156 = call i64 @dhcp_packet_checksum(i32* %149, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %135
  %159 = load i32, i32* @EINVAL, align 4
  %160 = call i32 @SYNTHETIC_ERRNO(i32 %159)
  %161 = call i32 (i32, i8*, ...) @log_debug_errno(i32 %160, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  store i32 %161, i32* %5, align 4
  br label %164

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162, %129, %126
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %158, %122, %104, %83, %68, %55, %46, %29, %19
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @log_debug_errno(i32, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i64 @dhcp_packet_checksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

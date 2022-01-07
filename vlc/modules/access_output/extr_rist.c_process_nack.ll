; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_process_nack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_process_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.rist_flow = type { i32 }

@RTCP_PT_RTPFR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RIST\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"   Ignoring Nack with name %s\00", align 1
@RTCP_PT_RTPFB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"   !!! Wrong feedback. Ptype is %02x!=%02x, FMT: %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i32, %struct.rist_flow*, i64*)* @process_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_nack(%struct.TYPE_7__* %0, i64 %1, i32 %2, %struct.rist_flow* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rist_flow*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rist_flow* %3, %struct.rist_flow** %9, align 8
  store i64* %4, i64** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %11, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @RTCP_PT_RTPFR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %5
  %28 = load i64*, i64** %10, align 8
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %30 = call i32 @rtcp_fb_get_ssrc_media_src(i64* %28, i64* %29)
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %32 = call i64 @memcmp(i64* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %37 = call i32 @msg_Info(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64* %36)
  br label %152

38:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %81, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 2
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 12
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64* %50, i64** %17, align 8
  %51 = load i64*, i64** %17, align 8
  %52 = call i32 @rtcp_fb_nack_get_range_start(i64* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i64*, i64** %17, align 8
  %54 = call i32 @rtcp_fb_nack_get_range_extra(i64* %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @vlc_mutex_lock(i32* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = load %struct.rist_flow*, %struct.rist_flow** %9, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @rist_retransmit(%struct.TYPE_7__* %58, %struct.rist_flow* %59, i32 %60)
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %74, %44
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = load %struct.rist_flow*, %struct.rist_flow** %9, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = call i32 @rist_retransmit(%struct.TYPE_7__* %67, %struct.rist_flow* %68, i32 %72)
  br label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %62

77:                                               ; preds = %62
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @vlc_mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %39

84:                                               ; preds = %39
  br label %152

85:                                               ; preds = %5
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @RTCP_PT_RTPFB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %144

89:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %140, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 2
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %143

95:                                               ; preds = %90
  %96 = load i64*, i64** %10, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 12
  %98 = load i32, i32* %12, align 4
  %99 = mul nsw i32 %98, 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  store i64* %101, i64** %20, align 8
  %102 = load i64*, i64** %20, align 8
  %103 = call i32 @rtcp_fb_nack_get_packet_id(i64* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i64*, i64** %20, align 8
  %105 = call i32 @rtcp_fb_nack_get_bitmask_lost(i64* %104)
  store i32 %105, i32* %19, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = call i32 @vlc_mutex_lock(i32* %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = load %struct.rist_flow*, %struct.rist_flow** %9, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @rist_retransmit(%struct.TYPE_7__* %109, %struct.rist_flow* %110, i32 %111)
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %133, %95
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 16
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %13, align 4
  %119 = shl i32 1, %118
  %120 = and i32 %117, %119
  %121 = load i32, i32* %13, align 4
  %122 = shl i32 1, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = load %struct.rist_flow*, %struct.rist_flow** %9, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = call i32 @rist_retransmit(%struct.TYPE_7__* %125, %struct.rist_flow* %126, i32 %130)
  br label %132

132:                                              ; preds = %124, %116
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %113

136:                                              ; preds = %113
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = call i32 @vlc_mutex_unlock(i32* %138)
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %90

143:                                              ; preds = %90
  br label %151

144:                                              ; preds = %85
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @RTCP_PT_RTPFR, align 8
  %148 = load i64*, i64** %10, align 8
  %149 = call i32 @rtcp_fb_get_fmt(i64* %148)
  %150 = call i32 @msg_Err(%struct.TYPE_7__* %145, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %146, i64 %147, i32 %149)
  br label %151

151:                                              ; preds = %144, %143
  br label %152

152:                                              ; preds = %34, %151, %84
  ret void
}

declare dso_local i32 @rtcp_fb_get_ssrc_media_src(i64*, i64*) #1

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @msg_Info(%struct.TYPE_7__*, i8*, i64*) #1

declare dso_local i32 @rtcp_fb_nack_get_range_start(i64*) #1

declare dso_local i32 @rtcp_fb_nack_get_range_extra(i64*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @rist_retransmit(%struct.TYPE_7__*, %struct.rist_flow*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @rtcp_fb_nack_get_packet_id(i64*) #1

declare dso_local i32 @rtcp_fb_nack_get_bitmask_lost(i64*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, i64, i64, i32) #1

declare dso_local i32 @rtcp_fb_get_fmt(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

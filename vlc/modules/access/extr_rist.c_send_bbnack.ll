; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_send_bbnack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_send_bbnack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, %struct.rist_flow* }
%struct.rist_flow = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@RTCP_FB_HEADER_SIZE = common dso_local global i32 0, align 4
@RTCP_FB_FCI_GENERIC_NACK_SIZE = common dso_local global i32 0, align 4
@NACK_FMT_BITMASK = common dso_local global i32 0, align 4
@RTCP_PT_RTPFB = common dso_local global i32 0, align 4
@MAX_NACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.TYPE_8__*, i32)* @send_bbnack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_bbnack(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.rist_flow*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load %struct.rist_flow*, %struct.rist_flow** %23, align 8
  store %struct.rist_flow* %24, %struct.rist_flow** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @RTCP_FB_HEADER_SIZE, align 4
  %26 = load i32, i32* @RTCP_FB_FCI_GENERIC_NACK_SIZE, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32* @malloc(i32 %30)
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %124

38:                                               ; preds = %4
  %39 = load i32*, i32** %13, align 8
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @rtp_set_hdr(i32* %40)
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* @NACK_FMT_BITMASK, align 4
  %44 = call i32 @rtcp_fb_set_fmt(i32* %42, i32 %43)
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* @RTCP_PT_RTPFB, align 4
  %47 = call i32 @rtcp_set_pt(i32* %45, i32 %46)
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 2, %49
  %51 = call i32 @rtcp_set_length(i32* %48, i32 %50)
  %52 = load i32, i32* @RTCP_FB_HEADER_SIZE, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @MAX_NACKS, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %15, align 8
  %58 = alloca i32, i64 %56, align 16
  store i64 %56, i64* %16, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32* %58, i32 %61, i32 %64)
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %88, %38
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* @RTCP_FB_FCI_GENERIC_NACK_SIZE, align 4
  %76 = load i32, i32* %17, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32* %79, i32** %18, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %58, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtcp_fb_nack_set_packet_id(i32* %80, i32 %84)
  %86 = load i32*, i32** %18, align 8
  %87 = call i32 @rtcp_fb_nack_set_bitmask_lost(i32* %86, i32 0)
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load i32, i32* @RTCP_FB_FCI_GENERIC_NACK_SIZE, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.rist_flow*, %struct.rist_flow** %10, align 8
  %114 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %113, i32 0, i32 1
  %115 = bitcast i32* %114 to %struct.sockaddr*
  %116 = load %struct.rist_flow*, %struct.rist_flow** %10, align 8
  %117 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @rist_WriteTo_i11e_Locked(i32 %109, i32 %110, i32* %111, i32 %112, %struct.sockaddr* %115, i32 %118)
  br label %120

120:                                              ; preds = %106, %101, %91
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @free(i32* %121)
  store i32* null, i32** %13, align 8
  %123 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %120, %37
  ret void
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rtp_set_hdr(i32*) #1

declare dso_local i32 @rtcp_fb_set_fmt(i32*, i32) #1

declare dso_local i32 @rtcp_set_pt(i32*, i32) #1

declare dso_local i32 @rtcp_set_length(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtcp_fb_nack_set_packet_id(i32*, i32) #1

declare dso_local i32 @rtcp_fb_nack_set_bitmask_lost(i32*, i32) #1

declare dso_local i32 @rist_WriteTo_i11e_Locked(i32, i32, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_send_rbnack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_send_rbnack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i64, %struct.rist_flow* }
%struct.rist_flow = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@RTCP_FB_HEADER_SIZE = common dso_local global i32 0, align 4
@RTCP_FB_FCI_GENERIC_NACK_SIZE = common dso_local global i32 0, align 4
@NACK_FMT_RANGE = common dso_local global i32 0, align 4
@RTCP_PT_RTPFR = common dso_local global i32 0, align 4
@__const.send_rbnack.name = private unnamed_addr constant [4 x i8] c"RIST", align 1
@MAX_NACKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.TYPE_8__*, i32)* @send_rbnack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rbnack(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.rist_flow*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [4 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load %struct.rist_flow*, %struct.rist_flow** %24, align 8
  store %struct.rist_flow* %25, %struct.rist_flow** %10, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @RTCP_FB_HEADER_SIZE, align 4
  %27 = load i32, i32* @RTCP_FB_FCI_GENERIC_NACK_SIZE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i8* @malloc(i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp eq i8* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %129

39:                                               ; preds = %4
  %40 = load i8*, i8** %13, align 8
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @rtp_set_hdr(i8* %41)
  %43 = load i8*, i8** %14, align 8
  %44 = load i32, i32* @NACK_FMT_RANGE, align 4
  %45 = call i32 @rtcp_fb_set_fmt(i8* %43, i32 %44)
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @RTCP_PT_RTPFR, align 4
  %48 = call i32 @rtcp_set_pt(i8* %46, i32 %47)
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 2, %50
  %52 = call i32 @rtcp_set_length(i8* %49, i32 %51)
  %53 = bitcast [4 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.send_rbnack.name, i32 0, i32 0), i64 4, i1 false)
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %56 = call i32 @rtcp_fb_set_ssrc_media_src(i8* %54, i8* %55)
  %57 = load i32, i32* @RTCP_FB_HEADER_SIZE, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @MAX_NACKS, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %16, align 8
  %63 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %17, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32* %63, i32 %66, i32 %69)
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %93, %39
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i32, i32* @RTCP_FB_FCI_GENERIC_NACK_SIZE, align 4
  %81 = load i32, i32* %18, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8* %84, i8** %19, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %63, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rtcp_fb_nack_set_range_start(i8* %85, i32 %89)
  %91 = load i8*, i8** %19, align 8
  %92 = call i32 @rtcp_fb_nack_set_range_extra(i8* %91, i32 0)
  br label %93

93:                                               ; preds = %75
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %71

96:                                               ; preds = %71
  %97 = load i32, i32* @RTCP_FB_FCI_GENERIC_NACK_SIZE, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %96
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.rist_flow*, %struct.rist_flow** %10, align 8
  %119 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %118, i32 0, i32 1
  %120 = bitcast i32* %119 to %struct.sockaddr*
  %121 = load %struct.rist_flow*, %struct.rist_flow** %10, align 8
  %122 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @rist_WriteTo_i11e_Locked(i32 %114, i32 %115, i8* %116, i32 %117, %struct.sockaddr* %120, i32 %123)
  br label %125

125:                                              ; preds = %111, %106, %96
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @free(i8* %126)
  store i8* null, i8** %13, align 8
  %128 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %129

129:                                              ; preds = %125, %38
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rtp_set_hdr(i8*) #1

declare dso_local i32 @rtcp_fb_set_fmt(i8*, i32) #1

declare dso_local i32 @rtcp_set_pt(i8*, i32) #1

declare dso_local i32 @rtcp_set_length(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtcp_fb_set_ssrc_media_src(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @rtcp_fb_nack_set_range_start(i8*, i32) #1

declare dso_local i32 @rtcp_fb_nack_set_range_extra(i8*, i32) #1

declare dso_local i32 @rist_WriteTo_i11e_Locked(i32, i32, i8*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_send_rtcp_feedback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_rist.c_send_rtcp_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.rist_flow = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@RTCP_EMPTY_RR_SIZE = common dso_local global i32 0, align 4
@RTCP_SDES_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.rist_flow*)* @send_rtcp_feedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rtcp_feedback(%struct.TYPE_4__* %0, %struct.rist_flow* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.rist_flow*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.rist_flow* %1, %struct.rist_flow** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %16 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlen(i32 %17)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 2
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 2
  %27 = ashr i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = shl i32 %28, 2
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @RTCP_EMPTY_RR_SIZE, align 4
  %33 = load i32, i32* @RTCP_SDES_SIZE, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32* @malloc(i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp eq i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %109

45:                                               ; preds = %31
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @rtp_set_hdr(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @rtcp_rr_set_pt(i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @rtcp_set_length(i32* %51, i32 1)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @rtcp_fb_set_int_ssrc_pkt_sender(i32* %53, i32 0)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @RTCP_EMPTY_RR_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @rtp_set_hdr(i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @rtp_set_cc(i32* %61, i32 1)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @rtcp_sdes_set_pt(i32* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 2
  %68 = add nsw i32 %67, 2
  %69 = call i32 @rtcp_set_length(i32* %65, i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @rtcp_sdes_set_cname(i32* %70, i32 1)
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %74 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strlen(i32 %75)
  %77 = call i32 @rtcp_sdes_set_name_length(i32* %72, i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @RTCP_EMPTY_RR_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* @RTCP_SDES_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %11, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %88 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @strlcpy(i8* %86, i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %96 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %101 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %100, i32 0, i32 1
  %102 = bitcast i32* %101 to %struct.sockaddr*
  %103 = load %struct.rist_flow*, %struct.rist_flow** %4, align 8
  %104 = getelementptr inbounds %struct.rist_flow, %struct.rist_flow* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rist_WriteTo_i11e_Locked(i32 %94, i32 %97, i32* %98, i32 %99, %struct.sockaddr* %102, i32 %105)
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @free(i32* %107)
  store i32* null, i32** %8, align 8
  br label %109

109:                                              ; preds = %45, %44
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rtp_set_hdr(i32*) #1

declare dso_local i32 @rtcp_rr_set_pt(i32*) #1

declare dso_local i32 @rtcp_set_length(i32*, i32) #1

declare dso_local i32 @rtcp_fb_set_int_ssrc_pkt_sender(i32*, i32) #1

declare dso_local i32 @rtp_set_cc(i32*, i32) #1

declare dso_local i32 @rtcp_sdes_set_pt(i32*) #1

declare dso_local i32 @rtcp_sdes_set_cname(i32*, i32) #1

declare dso_local i32 @rtcp_sdes_set_name_length(i32*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @rist_WriteTo_i11e_Locked(i32, i32, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

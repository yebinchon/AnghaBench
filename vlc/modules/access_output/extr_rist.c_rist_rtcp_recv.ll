; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_rist_rtcp_recv.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_rist.c_rist_rtcp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rist_flow = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Rist rtcp packet must have at least 4 bytes, we have %d\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Malformed feedback packet starting with %02x, ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Malformed feedback packet, wrong len %d, expecting %u bytes in the packet, got a buffer of %u bytes. ptype = %d\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Malformed SDES packet, wrong cname len %u, got a buffer of %u bytes.\00", align 1
@RTCP_SDES_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Receiver name: %s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"   Unrecognized RTCP packet with PTYPE=%02x!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.rist_flow*, i64*, i64)* @rist_rtcp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rist_rtcp_recv(%struct.TYPE_7__* %0, %struct.rist_flow* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.rist_flow*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.rist_flow* %1, %struct.rist_flow** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %9, align 8
  %20 = load i64*, i64** %7, align 8
  store i64* %20, i64** %10, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %128, %4
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %132

25:                                               ; preds = %21
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %12, align 8
  %31 = sub i64 %29, %30
  %32 = add i64 %31, 1
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @msg_Err(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %132

39:                                               ; preds = %25
  %40 = load i64*, i64** %10, align 8
  %41 = call i32 @rtp_check_hdr(i64* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @msg_Err(%struct.TYPE_7__* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  br label %132

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64*, i64** %10, align 8
  %52 = call i64 @rtcp_get_pt(i64* %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64*, i64** %10, align 8
  %54 = call i64 @rtcp_get_length(i64* %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add i64 1, %55
  %57 = mul i64 4, %56
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = load i64*, i64** %10, align 8
  %64 = call i64 @rtcp_get_length(i64* %63)
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @msg_Err(%struct.TYPE_7__* %62, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i64 %64, i64 %65, i64 %66, i64 %67)
  br label %132

69:                                               ; preds = %50
  %70 = load i64, i64* %11, align 8
  switch i64 %70, label %124 [
    i64 130, label %71
    i64 131, label %71
    i64 132, label %78
    i64 129, label %79
    i64 128, label %123
  ]

71:                                               ; preds = %69, %69
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.rist_flow*, %struct.rist_flow** %6, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = call i32 @process_nack(%struct.TYPE_7__* %72, i64 %73, i64 %74, %struct.rist_flow* %75, i64* %76)
  br label %128

78:                                               ; preds = %69
  br label %128

79:                                               ; preds = %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %79
  %85 = load i64*, i64** %10, align 8
  %86 = call i64 @rtcp_sdes_get_name_length(i64* %85)
  store i64 %86, i64* %16, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %14, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %14, align 8
  %94 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @msg_Err(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i64 %92, i64 %93)
  br label %132

95:                                               ; preds = %84
  %96 = load i64*, i64** %10, align 8
  %97 = load i32, i32* @RTCP_SDES_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @memcmp(i64* %99, i32 %102, i64 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %95
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i64*, i64** %10, align 8
  %111 = load i32, i32* @RTCP_SDES_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %16, align 8
  %115 = call i32 @memcpy(i32 %109, i64* %113, i64 %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @msg_Info(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %106, %95
  br label %122

122:                                              ; preds = %121, %79
  br label %128

123:                                              ; preds = %69
  br label %128

124:                                              ; preds = %69
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 (%struct.TYPE_7__*, i8*, i64, ...) @msg_Err(%struct.TYPE_7__* %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  br label %128

128:                                              ; preds = %124, %123, %122, %78, %71
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %12, align 8
  br label %21

132:                                              ; preds = %35, %43, %61, %90, %21
  ret void
}

declare dso_local i32 @msg_Err(%struct.TYPE_7__*, i8*, i64, ...) #1

declare dso_local i32 @rtp_check_hdr(i64*) #1

declare dso_local i64 @rtcp_get_pt(i64*) #1

declare dso_local i64 @rtcp_get_length(i64*) #1

declare dso_local i32 @process_nack(%struct.TYPE_7__*, i64, i64, %struct.rist_flow*, i64*) #1

declare dso_local i64 @rtcp_sdes_get_name_length(i64*) #1

declare dso_local i32 @memcmp(i64*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @msg_Info(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

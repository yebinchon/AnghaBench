; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_..codeccc.h_cc_ProbeAndExtract.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_..codeccc.h_cc_ProbeAndExtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cc_ProbeAndExtract.p_cc_ga94 = internal constant [4 x i32] [i32 71, i32 65, i32 57, i32 52], align 16
@cc_ProbeAndExtract.p_cc_dvd = internal constant [4 x i32] [i32 67, i32 67, i32 1, i32 248], align 16
@cc_ProbeAndExtract.p_cc_replaytv4a = internal constant [2 x i32] [i32 187, i32 2], align 4
@cc_ProbeAndExtract.p_cc_replaytv4b = internal constant [2 x i32] [i32 204, i32 2], align 4
@cc_ProbeAndExtract.p_cc_replaytv5a = internal constant [2 x i32] [i32 153, i32 2], align 4
@cc_ProbeAndExtract.p_cc_replaytv5b = internal constant [2 x i32] [i32 170, i32 2], align 4
@cc_ProbeAndExtract.p_cc_scte20 = internal constant [2 x i32] [i32 3, i32 129], align 4
@cc_ProbeAndExtract.p_cc_scte20_old = internal constant [2 x i32] [i32 3, i32 1], align 4
@CC_PAYLOAD_GA94 = common dso_local global i32 0, align 4
@CC_PAYLOAD_DVD = common dso_local global i32 0, align 4
@CC_PAYLOAD_REPLAYTV = common dso_local global i32 0, align 4
@CC_PAYLOAD_SCTE20 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @cc_ProbeAndExtract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_ProbeAndExtract(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %108

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @memcmp(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cc_ProbeAndExtract.p_cc_ga94, i64 0, i64 0), i32* %14, i32 4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 8
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* @CC_PAYLOAD_GA94, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %27, 5
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  store i32* %30, i32** %7, align 8
  br label %101

31:                                               ; preds = %20, %17, %13
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @memcmp(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @cc_ProbeAndExtract.p_cc_dvd, i64 0, i64 0), i32* %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 5
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @CC_PAYLOAD_DVD, align 4
  store i32 %39, i32* %9, align 4
  br label %100

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 8
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @memcmp(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cc_ProbeAndExtract.p_cc_replaytv4a, i64 0, i64 0), i32* %45, i32 2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = call i32 @memcmp(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cc_ProbeAndExtract.p_cc_replaytv4b, i64 0, i64 0), i32* %50, i32 2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48, %43
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @memcmp(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cc_ProbeAndExtract.p_cc_replaytv5a, i64 0, i64 0), i32* %55, i32 2)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = call i32 @memcmp(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cc_ProbeAndExtract.p_cc_replaytv5b, i64 0, i64 0), i32* %60, i32 2)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58, %48
  %64 = load i32, i32* @CC_PAYLOAD_REPLAYTV, align 4
  store i32 %64, i32* %9, align 4
  br label %99

65:                                               ; preds = %58, %53, %40
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @memcmp(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cc_ProbeAndExtract.p_cc_scte20, i64 0, i64 0), i32* %66, i32 2)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @memcmp(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @cc_ProbeAndExtract.p_cc_scte20_old, i64 0, i64 0), i32* %70, i32 2)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @CC_PAYLOAD_SCTE20, align 4
  store i32 %77, i32* %9, align 4
  br label %98

78:                                               ; preds = %73, %69
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 2
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* @CC_PAYLOAD_GA94, align 4
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 2
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32* %95, i32** %7, align 8
  br label %97

96:                                               ; preds = %83, %78
  br label %108

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %76
  br label %99

99:                                               ; preds = %98, %63
  br label %100

100:                                              ; preds = %99, %38
  br label %101

101:                                              ; preds = %100, %25
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @cc_Extract(i32* %102, i32 %103, i32 %104, i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %101, %96, %12
  ret void
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @cc_Extract(i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

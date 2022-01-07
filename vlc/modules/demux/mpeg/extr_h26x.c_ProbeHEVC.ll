; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_ProbeHEVC.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_ProbeHEVC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@HEVC_NAL_VPS = common dso_local global i32 0, align 4
@HEVC_NAL_SPS = common dso_local global i32 0, align 4
@HEVC_NAL_PPS = common dso_local global i32 0, align 4
@HEVC_NAL_BLA_W_LP = common dso_local global i32 0, align 4
@HEVC_NAL_CRA = common dso_local global i32 0, align 4
@HEVC_NAL_AUD = common dso_local global i32 0, align 4
@H26X_MIN_PEEK = common dso_local global i64 0, align 8
@HEVC_NAL_PREF_SEI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @ProbeHEVC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProbeHEVC(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %139

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %139

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @hevc_getNALType(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @hevc_getNALLayer(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @HEVC_NAL_VPS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %35, 6
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 255
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 255
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %34, %31
  store i32 -1, i32* %4, align 4
  br label %139

48:                                               ; preds = %42
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  store i32 0, i32* %4, align 4
  br label %139

51:                                               ; preds = %23
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @HEVC_NAL_SPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %139

59:                                               ; preds = %55
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %139

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @HEVC_NAL_PPS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %139

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %139

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @HEVC_NAL_BLA_W_LP, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @HEVC_NAL_CRA, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %4, align 4
  br label %139

100:                                              ; preds = %96, %91, %86, %81
  br label %135

101:                                              ; preds = %77, %73
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @HEVC_NAL_AUD, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* @H26X_MIN_PEEK, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %109, %105
  store i32 -1, i32* %4, align 4
  br label %139

120:                                              ; preds = %114
  br label %134

121:                                              ; preds = %101
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @HEVC_NAL_PREF_SEI, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32*, i32** %5, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %139

131:                                              ; preds = %125
  br label %133

132:                                              ; preds = %121
  store i32 -1, i32* %4, align 4
  br label %139

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %120
  br label %135

135:                                              ; preds = %134, %100
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %132, %130, %119, %99, %70, %69, %59, %58, %48, %47, %22, %15
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @hevc_getNALType(i32*) #1

declare dso_local i32 @hevc_getNALLayer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

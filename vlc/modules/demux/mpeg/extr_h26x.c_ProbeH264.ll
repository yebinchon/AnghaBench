; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_ProbeH264.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_ProbeH264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@H264_NAL_SPS = common dso_local global i32 0, align 4
@H264_NAL_PPS = common dso_local global i32 0, align 4
@H264_NAL_SLICE_IDR = common dso_local global i32 0, align 4
@H264_NAL_AU_DELIMITER = common dso_local global i32 0, align 4
@H264_NAL_SEI = common dso_local global i32 0, align 4
@H264_NAL_SPS_EXT = common dso_local global i32 0, align 4
@H264_NAL_SUBSET_SPS = common dso_local global i32 0, align 4
@H264_NAL_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @ProbeH264 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProbeH264(i32* %0, i64 %1, i8* %2) #0 {
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
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %154

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 31
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 96
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %154

31:                                               ; preds = %16
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @H264_NAL_SPS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %39, 3
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %38, %35
  store i32 -1, i32* %4, align 4
  br label %154

48:                                               ; preds = %41
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %153

51:                                               ; preds = %31
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @H264_NAL_PPS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %154

59:                                               ; preds = %55
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  br label %152

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @H264_NAL_SLICE_IDR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %69, %66
  store i32 -1, i32* %4, align 4
  br label %154

80:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %154

81:                                               ; preds = %62
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @H264_NAL_AU_DELIMITER, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88, %85
  store i32 -1, i32* %4, align 4
  br label %154

99:                                               ; preds = %93
  br label %150

100:                                              ; preds = %81
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @H264_NAL_SEI, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -1, i32* %4, align 4
  br label %154

108:                                              ; preds = %104
  br label %149

109:                                              ; preds = %100
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @H264_NAL_SPS_EXT, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @H264_NAL_SUBSET_SPS, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120, %117
  store i32 -1, i32* %4, align 4
  br label %154

126:                                              ; preds = %120
  br label %148

127:                                              ; preds = %113
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @H264_NAL_PREFIX, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139, %134, %131
  store i32 -1, i32* %4, align 4
  br label %154

145:                                              ; preds = %139
  br label %147

146:                                              ; preds = %127
  store i32 -1, i32* %4, align 4
  br label %154

147:                                              ; preds = %145
  br label %148

148:                                              ; preds = %147, %126
  br label %149

149:                                              ; preds = %148, %108
  br label %150

150:                                              ; preds = %149, %99
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %59
  br label %153

153:                                              ; preds = %152, %48
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %146, %144, %125, %107, %98, %80, %79, %58, %47, %30, %15
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

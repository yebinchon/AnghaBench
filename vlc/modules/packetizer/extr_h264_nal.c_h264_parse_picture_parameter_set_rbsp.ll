; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_parse_picture_parameter_set_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264_nal.c_h264_parse_picture_parameter_set_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i64, i64 }

@H264_PPS_ID_MAX = common dso_local global i64 0, align 8
@H264_SPS_ID_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @h264_parse_picture_parameter_set_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_parse_picture_parameter_set_rbsp(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @bs_read_ue(i32* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @bs_read_ue(i32* %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @H264_PPS_ID_MAX, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @H264_SPS_ID_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %157

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @bs_skip(i32* %36, i32 1)
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @bs_read(i32* %38, i32 1)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @bs_read_ue(i32* %42)
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ugt i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %157

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %130

51:                                               ; preds = %48
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @bs_read_ue(i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @bs_read_ue(i32* %62)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %57

67:                                               ; preds = %57
  br label %129

68:                                               ; preds = %51
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %81, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @bs_read_ue(i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @bs_read_ue(i32* %79)
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %72

84:                                               ; preds = %72
  br label %128

85:                                               ; preds = %68
  %86 = load i32, i32* %9, align 4
  %87 = icmp ugt i32 %86, 2
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp ult i32 %89, 6
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 @bs_read1(i32* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @bs_read_ue(i32* %94)
  br label %127

96:                                               ; preds = %88, %85
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 6
  br i1 %98, label %99, label %126

99:                                               ; preds = %96
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @bs_read_ue(i32* %100)
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %106, %99
  %104 = load i32, i32* %8, align 4
  %105 = icmp ugt i32 %104, 1
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub i32 %109, 1
  %111 = lshr i32 %110, 1
  %112 = add i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %103

113:                                              ; preds = %103
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %122, %113
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @bs_skip(i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %14, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %114

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125, %96
  br label %127

127:                                              ; preds = %126, %91
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %67
  br label %130

130:                                              ; preds = %129, %48
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @bs_read_ue(i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @bs_read_ue(i32* %133)
  %135 = load i32*, i32** %4, align 8
  %136 = call i8* @bs_read(i32* %135, i32 1)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load i32*, i32** %4, align 8
  %140 = call i8* @bs_read(i32* %139, i32 2)
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @bs_read_se(i32* %143)
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @bs_read_se(i32* %145)
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @bs_read_se(i32* %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i8* @bs_read(i32* %149, i32 1)
  %151 = load i32*, i32** %4, align 8
  %152 = call i8* @bs_read(i32* %151, i32 1)
  %153 = load i32*, i32** %4, align 8
  %154 = call i8* @bs_read(i32* %153, i32 1)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %130, %47, %28
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @bs_read_ue(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @bs_read1(i32*) #1

declare dso_local i32 @bs_read_se(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

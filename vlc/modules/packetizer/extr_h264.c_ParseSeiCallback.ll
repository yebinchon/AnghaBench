; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_ParseSeiCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_h264.c_ParseSeiCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, %struct.TYPE_29__, %struct.TYPE_26__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_31__, %struct.TYPE_28__, %struct.TYPE_22__* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32 }

@HXXX_ITU_T35_TYPE_CC = common dso_local global i32 0, align 4
@MULTIVIEW_2D = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_CHECKERBOARD = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_COL = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_ROW = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_SBS = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_TB = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Seen SEI recovery point, %d recovery frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*)* @ParseSeiCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSeiCallback(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %156 [
    i32 130, label %17
    i32 128, label %77
    i32 131, label %102
    i32 129, label %137
  ]

17:                                               ; preds = %2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %7, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @unlikely(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = call i32 @assert(%struct.TYPE_20__* %27)
  br label %157

29:                                               ; preds = %17
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %76

35:                                               ; preds = %29
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @bs_read(i32 %44, i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i8* @bs_read(i32 %53, i32 %58)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %41, %35
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @bs_read(i32 %71, i32 4)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %62
  br label %76

76:                                               ; preds = %75, %29
  br label %157

77:                                               ; preds = %2
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HXXX_ITU_T35_TYPE_CC, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @cc_storage_append(i32 %87, i32 1, i32 %93, i32 %99)
  br label %101

101:                                              ; preds = %84, %77
  br label %157

102:                                              ; preds = %2
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MULTIVIEW_2D, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %102
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %128 [
    i32 138, label %115
    i32 137, label %117
    i32 136, label %119
    i32 135, label %121
    i32 132, label %123
    i32 134, label %125
    i32 133, label %127
  ]

115:                                              ; preds = %110
  %116 = load i32, i32* @MULTIVIEW_STEREO_CHECKERBOARD, align 4
  store i32 %116, i32* %8, align 4
  br label %130

117:                                              ; preds = %110
  %118 = load i32, i32* @MULTIVIEW_STEREO_COL, align 4
  store i32 %118, i32* %8, align 4
  br label %130

119:                                              ; preds = %110
  %120 = load i32, i32* @MULTIVIEW_STEREO_ROW, align 4
  store i32 %120, i32* %8, align 4
  br label %130

121:                                              ; preds = %110
  %122 = load i32, i32* @MULTIVIEW_STEREO_SBS, align 4
  store i32 %122, i32* %8, align 4
  br label %130

123:                                              ; preds = %110
  %124 = load i32, i32* @MULTIVIEW_STEREO_TB, align 4
  store i32 %124, i32* %8, align 4
  br label %130

125:                                              ; preds = %110
  %126 = load i32, i32* @MULTIVIEW_STEREO_FRAME, align 4
  store i32 %126, i32* %8, align 4
  br label %130

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %110, %127
  %129 = load i32, i32* @MULTIVIEW_2D, align 4
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %128, %125, %123, %121, %119, %117, %115
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  store i32 %131, i32* %135, align 8
  br label %136

136:                                              ; preds = %130, %102
  br label %157

137:                                              ; preds = %2
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @msg_Dbg(%struct.TYPE_21__* %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142, %137
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %157

156:                                              ; preds = %2
  br label %157

157:                                              ; preds = %156, %149, %136, %101, %76, %26
  ret i32 1
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @assert(%struct.TYPE_20__*) #1

declare dso_local i8* @bs_read(i32, i32) #1

declare dso_local i32 @cc_storage_append(i32, i32, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

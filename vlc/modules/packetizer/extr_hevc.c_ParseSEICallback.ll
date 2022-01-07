; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseSEICallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseSEICallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, %struct.TYPE_34__, %struct.TYPE_32__, %struct.TYPE_29__, %struct.TYPE_28__, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32*, i32* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_31__, %struct.TYPE_25__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_33__, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32*, i32* }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }

@HXXX_ITU_T35_TYPE_CC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Seen SEI recovery point, %d recovery frames\00", align 1
@MULTIVIEW_2D = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_CHECKERBOARD = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_COL = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_ROW = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_SBS = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_TB = common dso_local global i32 0, align 4
@MULTIVIEW_STEREO_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i8*)* @ParseSEICallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSEICallback(%struct.TYPE_23__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %16, %struct.TYPE_25__** %6, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %203 [
    i32 130, label %20
    i32 128, label %40
    i32 129, label %65
    i32 132, label %80
    i32 131, label %115
    i32 133, label %185
  ]

20:                                               ; preds = %2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hevc_release_sei_pic_timing(i32 %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hevc_decode_sei_pic_timing(i32 %32, i32 %35)
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %20
  br label %203

40:                                               ; preds = %2
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HXXX_ITU_T35_TYPE_CC, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cc_storage_append(i32 %50, i32 1, i32 %56, i32 %62)
  br label %64

64:                                               ; preds = %47, %40
  br label %203

65:                                               ; preds = %2
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @msg_Dbg(%struct.TYPE_24__* %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %65
  br label %203

80:                                               ; preds = %2
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MULTIVIEW_2D, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %80
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %106 [
    i32 140, label %93
    i32 139, label %95
    i32 138, label %97
    i32 137, label %99
    i32 134, label %101
    i32 136, label %103
    i32 135, label %105
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* @MULTIVIEW_STEREO_CHECKERBOARD, align 4
  store i32 %94, i32* %7, align 4
  br label %108

95:                                               ; preds = %88
  %96 = load i32, i32* @MULTIVIEW_STEREO_COL, align 4
  store i32 %96, i32* %7, align 4
  br label %108

97:                                               ; preds = %88
  %98 = load i32, i32* @MULTIVIEW_STEREO_ROW, align 4
  store i32 %98, i32* %7, align 4
  br label %108

99:                                               ; preds = %88
  %100 = load i32, i32* @MULTIVIEW_STEREO_SBS, align 4
  store i32 %100, i32* %7, align 4
  br label %108

101:                                              ; preds = %88
  %102 = load i32, i32* @MULTIVIEW_STEREO_TB, align 4
  store i32 %102, i32* %7, align 4
  br label %108

103:                                              ; preds = %88
  %104 = load i32, i32* @MULTIVIEW_STEREO_FRAME, align 4
  store i32 %104, i32* %7, align 4
  br label %108

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %88, %105
  %107 = load i32, i32* @MULTIVIEW_2D, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %103, %101, %99, %97, %95, %93
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  store i32 %109, i32* %113, align 8
  br label %114

114:                                              ; preds = %108, %80
  br label %203

115:                                              ; preds = %2
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %119

119:                                              ; preds = %141, %115
  %120 = load i64, i64* %9, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @ARRAY_SIZE(i32* %124)
  %126 = icmp ult i64 %120, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %119
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %127
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %9, align 8
  br label %119

144:                                              ; preds = %119
  store i64 0, i64* %10, align 8
  br label %145

145:                                              ; preds = %167, %144
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @ARRAY_SIZE(i32* %150)
  %152 = icmp ult i64 %146, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %145
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %160, i32* %166, align 4
  br label %167

167:                                              ; preds = %153
  %168 = load i64, i64* %10, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %10, align 8
  br label %145

170:                                              ; preds = %145
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 1
  store i32 %174, i32* %177, align 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  br label %203

185:                                              ; preds = %2
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  store %struct.TYPE_22__* %188, %struct.TYPE_22__** %11, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 4
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  br label %203

203:                                              ; preds = %2, %185, %170, %114, %79, %64, %39
  ret i32 1
}

declare dso_local i32 @hevc_release_sei_pic_timing(i32) #1

declare dso_local i32 @hevc_decode_sei_pic_timing(i32, i32) #1

declare dso_local i32 @cc_storage_append(i32, i32, i32, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

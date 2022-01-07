; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_write_buffer_eac3.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_write_buffer_eac3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { i64, i32* }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@SPDIF_ERROR = common dso_local global i32 0, align 4
@EAC3_STRMTYP_DEPENDENT = common dso_local global i64 0, align 8
@AOUT_SPDIF_SIZE = common dso_local global i32 0, align 4
@SPDIF_MORE_DATA = common dso_local global i32 0, align 4
@IEC61937_EAC3 = common dso_local global i32 0, align 4
@SPDIF_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*)* @write_buffer_eac3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_buffer_eac3(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @vlc_a52_header_Parse(%struct.TYPE_21__* %7, i32* %16, i64 %19)
  %21 = load i64, i64* @VLC_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %2
  %31 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %154

32:                                               ; preds = %23
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %32
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %48, %50
  store i64 %51, i64* %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @vlc_a52_header_Parse(%struct.TYPE_21__* %8, i32* %52, i64 %53)
  %55 = load i64, i64* @VLC_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %83, label %57

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %83, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EAC3_STRMTYP_DEPENDENT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %78, %80
  %82 = icmp ugt i64 %76, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %73, %66, %62, %57, %39
  %84 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %154

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %32
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = icmp ne %struct.TYPE_19__* %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %94 = load i32, i32* @AOUT_SPDIF_SIZE, align 4
  %95 = mul nsw i32 %94, 4
  %96 = load i32, i32* @AOUT_SPDIF_SIZE, align 4
  %97 = call i64 @write_init(%struct.TYPE_22__* %92, %struct.TYPE_24__* %93, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %100, i32* %3, align 4
  br label %154

101:                                              ; preds = %91, %86
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = icmp ugt i64 %104, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %154

117:                                              ; preds = %101
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = call i32 @write_buffer(%struct.TYPE_22__* %118, %struct.TYPE_24__* %119)
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %122
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %125, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %133, 6
  br i1 %134, label %135, label %137

135:                                              ; preds = %117
  %136 = load i32, i32* @SPDIF_MORE_DATA, align 4
  store i32 %136, i32* %3, align 4
  br label %154

137:                                              ; preds = %117
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 6
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @SPDIF_ERROR, align 4
  store i32 %144, i32* %3, align 4
  br label %154

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = load i32, i32* @IEC61937_EAC3, align 4
  %149 = call i32 @write_finalize(%struct.TYPE_22__* %147, i32 %148, i32 1)
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load i32, i32* @SPDIF_SUCCESS, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %146, %143, %135, %115, %99, %83, %30
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @vlc_a52_header_Parse(%struct.TYPE_21__*, i32*, i64) #1

declare dso_local i64 @write_init(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @write_buffer(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @write_finalize(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

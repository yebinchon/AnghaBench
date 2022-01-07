; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__*, i32, i32*, %struct.TYPE_22__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32* }

@OPJ_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_j2k_decode(%struct.TYPE_23__* %0, i32* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %12 = icmp ne %struct.TYPE_24__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %14, i32* %5, align 4
  br label %152

15:                                               ; preds = %4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %103

23:                                               ; preds = %15
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = icmp ne %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %103

28:                                               ; preds = %23
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %103

35:                                               ; preds = %28
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %35
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %51
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %56
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %103

72:                                               ; preds = %64
  store i64 0, i64* %10, align 8
  br label %73

73:                                               ; preds = %92, %72
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  store i64 %85, i64* %91, align 8
  br label %92

92:                                               ; preds = %79
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %10, align 8
  br label %73

95:                                               ; preds = %73
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @opj_j2k_update_image_dimensions(%struct.TYPE_24__* %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %101, i32* %5, align 4
  br label %152

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %64, %56, %51, %35, %28, %23, %15
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = call i32* (...) @opj_image_create0()
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %117, i32* %5, align 4
  br label %152

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @opj_copy_image_header(%struct.TYPE_24__* %120, i32* %123)
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @opj_j2k_setup_decoding(%struct.TYPE_23__* %125, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %130, i32* %5, align 4
  br label %152

131:                                              ; preds = %119
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @opj_j2k_exec(%struct.TYPE_23__* %132, i32 %135, i32* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %131
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = call i32 @opj_image_destroy(%struct.TYPE_17__* %143)
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %146, align 8
  %147 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %147, i32* %5, align 4
  br label %152

148:                                              ; preds = %131
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = call i32 @opj_j2k_move_data_from_codec_to_output_image(%struct.TYPE_23__* %149, %struct.TYPE_24__* %150)
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %140, %129, %116, %100, %13
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @opj_j2k_update_image_dimensions(%struct.TYPE_24__*, i32*) #1

declare dso_local i32* @opj_image_create0(...) #1

declare dso_local i32 @opj_copy_image_header(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @opj_j2k_setup_decoding(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @opj_j2k_exec(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local i32 @opj_image_destroy(%struct.TYPE_17__*) #1

declare dso_local i32 @opj_j2k_move_data_from_codec_to_output_image(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

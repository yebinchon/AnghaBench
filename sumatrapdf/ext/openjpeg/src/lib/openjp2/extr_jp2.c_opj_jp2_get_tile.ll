; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_get_tile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_get_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_23__, %struct.TYPE_17__* }
%struct.TYPE_23__ = type { i32*, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32*, i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@EVT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"JP2 box which are after the codestream will not be read by this function.\0A\00", align 1
@EVT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to decode the codestream in the JP2 file\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@OPJ_CLRSPC_GRAY = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SYCC = common dso_local global i32 0, align 4
@OPJ_CLRSPC_EYCC = common dso_local global i32 0, align 4
@OPJ_CLRSPC_CMYK = common dso_local global i32 0, align 4
@OPJ_CLRSPC_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_jp2_get_tile(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_22__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %13 = icmp ne %struct.TYPE_22__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %15, i32* %6, align 4
  br label %172

16:                                               ; preds = %5
  %17 = load i32*, i32** %10, align 8
  %18 = load i32, i32* @EVT_WARNING, align 4
  %19 = call i32 @opj_event_msg(i32* %17, i32 %18, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @opj_j2k_get_tile(%struct.TYPE_17__* %22, i32* %23, %struct.TYPE_22__* %24, i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @EVT_ERROR, align 4
  %32 = call i32 @opj_event_msg(i32* %30, i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %33, i32* %6, align 4
  br label %172

34:                                               ; preds = %16
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %44, i32* %6, align 4
  br label %172

45:                                               ; preds = %34
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @opj_jp2_check_color(%struct.TYPE_22__* %46, %struct.TYPE_23__* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %53, i32* %6, align 4
  br label %172

54:                                               ; preds = %45
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %107

63:                                               ; preds = %54
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 17
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @OPJ_CLRSPC_GRAY, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %106

72:                                               ; preds = %63
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 18
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @OPJ_CLRSPC_SYCC, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %105

81:                                               ; preds = %72
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 24
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @OPJ_CLRSPC_EYCC, align 4
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %104

90:                                               ; preds = %81
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 12
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @OPJ_CLRSPC_CMYK, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %103

99:                                               ; preds = %90
  %100 = load i32, i32* @OPJ_CLRSPC_UNKNOWN, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  br label %104

104:                                              ; preds = %103, %86
  br label %105

105:                                              ; preds = %104, %77
  br label %106

106:                                              ; preds = %105, %68
  br label %107

107:                                              ; preds = %106, %59
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %110, align 8
  %112 = icmp ne %struct.TYPE_20__* %111, null
  br i1 %112, label %113, label %136

113:                                              ; preds = %107
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = call i32 @opj_jp2_free_pclr(%struct.TYPE_23__* %123)
  br label %135

125:                                              ; preds = %113
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @opj_jp2_apply_pclr(%struct.TYPE_22__* %126, %struct.TYPE_23__* %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %133, i32* %6, align 4
  br label %172

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %135, %107
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @opj_jp2_apply_cdef(%struct.TYPE_22__* %143, %struct.TYPE_23__* %145, i32* %146)
  br label %148

148:                                              ; preds = %142, %136
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  store i32* %158, i32** %160, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %154, %148
  %171 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %170, %132, %52, %43, %29, %14
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*) #1

declare dso_local i32 @opj_j2k_get_tile(%struct.TYPE_17__*, i32*, %struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @opj_jp2_check_color(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @opj_jp2_free_pclr(%struct.TYPE_23__*) #1

declare dso_local i32 @opj_jp2_apply_pclr(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @opj_jp2_apply_cdef(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

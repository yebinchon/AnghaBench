; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_decode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_jp2.c_opj_jp2_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_23__, i32, %struct.TYPE_17__* }
%struct.TYPE_23__ = type { i32*, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32*, i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to decode the codestream in the JP2 file\0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SRGB = common dso_local global i32 0, align 4
@OPJ_CLRSPC_GRAY = common dso_local global i32 0, align 4
@OPJ_CLRSPC_SYCC = common dso_local global i32 0, align 4
@OPJ_CLRSPC_EYCC = common dso_local global i32 0, align 4
@OPJ_CLRSPC_CMYK = common dso_local global i32 0, align 4
@OPJ_CLRSPC_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_jp2_decode(%struct.TYPE_21__* %0, i32* %1, %struct.TYPE_22__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %13, i32* %5, align 4
  br label %172

14:                                               ; preds = %4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @opj_j2k_decode(%struct.TYPE_17__* %17, i32* %18, %struct.TYPE_22__* %19, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @EVT_ERROR, align 4
  %26 = call i32 @opj_event_msg(i32* %24, i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %172

28:                                               ; preds = %14
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %38, i32* %5, align 4
  br label %172

39:                                               ; preds = %28
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %170, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @opj_jp2_check_color(%struct.TYPE_22__* %45, %struct.TYPE_23__* %47, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %52, i32* %5, align 4
  br label %172

53:                                               ; preds = %44
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @OPJ_CLRSPC_SRGB, align 4
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %106

62:                                               ; preds = %53
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 17
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @OPJ_CLRSPC_GRAY, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %105

71:                                               ; preds = %62
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 18
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @OPJ_CLRSPC_SYCC, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %104

80:                                               ; preds = %71
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 24
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @OPJ_CLRSPC_EYCC, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %103

89:                                               ; preds = %80
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 12
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @OPJ_CLRSPC_CMYK, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %102

98:                                               ; preds = %89
  %99 = load i32, i32* @OPJ_CLRSPC_UNKNOWN, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %76
  br label %105

105:                                              ; preds = %104, %67
  br label %106

106:                                              ; preds = %105, %58
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = icmp ne %struct.TYPE_20__* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = call i32 @opj_jp2_free_pclr(%struct.TYPE_23__* %122)
  br label %134

124:                                              ; preds = %112
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @opj_jp2_apply_pclr(%struct.TYPE_22__* %125, %struct.TYPE_23__* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %132, i32* %5, align 4
  br label %172

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %120
  br label %135

135:                                              ; preds = %134, %106
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @opj_jp2_apply_cdef(%struct.TYPE_22__* %142, %struct.TYPE_23__* %144, i32* %145)
  br label %147

147:                                              ; preds = %141, %135
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %147
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  store i32* %157, i32** %159, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %153, %147
  br label %170

170:                                              ; preds = %169, %39
  %171 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %131, %51, %37, %23, %12
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @opj_j2k_decode(%struct.TYPE_17__*, i32*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*) #1

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

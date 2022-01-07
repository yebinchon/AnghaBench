; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_oncopy.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_pdfapp.c_pdfapp_oncopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_14__, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }

@FZ_STEXT_BLOCK_TEXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdfapp_oncopy(%struct.TYPE_15__* %0, i16* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %8, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = call i32 @pdfapp_viewctm(i32* %7, %struct.TYPE_15__* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @fz_invert_matrix(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  call void @fz_transform_rect(%struct.TYPE_20__* sret %15, i32 %28, i32 %29)
  %30 = bitcast %struct.TYPE_20__* %14 to i8*
  %31 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %11, align 8
  br label %35

35:                                               ; preds = %139, %3
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %37 = icmp ne %struct.TYPE_19__* %36, null
  br i1 %37, label %38, label %143

38:                                               ; preds = %35
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FZ_STEXT_BLOCK_TEXT, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %139

45:                                               ; preds = %38
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  store %struct.TYPE_17__* %50, %struct.TYPE_17__** %12, align 8
  br label %51

51:                                               ; preds = %134, %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = icmp ne %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %138

54:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  store %struct.TYPE_18__* %57, %struct.TYPE_18__** %13, align 8
  br label %58

58:                                               ; preds = %125, %54
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %60 = icmp ne %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %129

61:                                               ; preds = %58
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  call void @fz_rect_from_quad(%struct.TYPE_20__* sret %17, i32 %64)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 65533, i32* %18, align 4
  br label %71

71:                                               ; preds = %70, %61
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %73, %75
  br i1 %76, label %77, label %124

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %79, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %85, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %91, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %89
  store i32 1, i32* %16, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i16*, i16** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i16, i16* %104, i64 %107
  store i16 10, i16* %108, align 2
  br label %109

109:                                              ; preds = %103, %98
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %95
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %112, 1
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32, i32* %18, align 4
  %117 = trunc i32 %116 to i16
  %118 = load i16*, i16** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i16, i16* %118, i64 %121
  store i16 %117, i16* %122, align 2
  br label %123

123:                                              ; preds = %115, %110
  br label %124

124:                                              ; preds = %123, %89, %83, %77, %71
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %13, align 8
  br label %58

129:                                              ; preds = %58
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 1, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %129
  br label %134

134:                                              ; preds = %133
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %12, align 8
  br label %51

138:                                              ; preds = %51
  br label %139

139:                                              ; preds = %138, %44
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %11, align 8
  br label %35

143:                                              ; preds = %35
  %144 = load i16*, i16** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i16, i16* %144, i64 %146
  store i16 0, i16* %147, align 2
  ret void
}

declare dso_local i32 @pdfapp_viewctm(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @fz_invert_matrix(i32) #1

declare dso_local void @fz_transform_rect(%struct.TYPE_20__* sret, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @fz_rect_from_quad(%struct.TYPE_20__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

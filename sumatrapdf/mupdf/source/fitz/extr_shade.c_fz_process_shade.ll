; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_process_shade.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_shade.c_fz_process_shade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i32, i8*, i32*, i32*, %struct.TYPE_18__* }

@FZ_FUNCTION_BASED = common dso_local global i64 0, align 8
@FZ_LINEAR = common dso_local global i64 0, align 8
@FZ_RADIAL = common dso_local global i64 0, align 8
@FZ_MESH_TYPE4 = common dso_local global i64 0, align 8
@FZ_MESH_TYPE5 = common dso_local global i64 0, align 8
@FZ_MESH_TYPE6 = common dso_local global i64 0, align 8
@FZ_MESH_TYPE7 = common dso_local global i64 0, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unexpected mesh type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_process_shade(i32* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3, i32* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %17, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 3
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  store i32* %20, i32** %21, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %35

29:                                               ; preds = %7
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @fz_colorspace_n(i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %28
  %36 = phi i32 [ 1, %28 ], [ %34, %29 ]
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FZ_FUNCTION_BASED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @fz_process_shade_type1(i32* %44, %struct.TYPE_18__* %45, i32 %46, %struct.TYPE_19__* %15)
  br label %128

48:                                               ; preds = %35
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FZ_LINEAR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @fz_process_shade_type2(i32* %55, %struct.TYPE_18__* %56, i32 %57, %struct.TYPE_19__* %15, i32 %58)
  br label %127

60:                                               ; preds = %48
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @FZ_RADIAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32*, i32** %8, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @fz_process_shade_type3(i32* %67, %struct.TYPE_18__* %68, i32 %69, %struct.TYPE_19__* %15)
  br label %126

71:                                               ; preds = %60
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FZ_MESH_TYPE4, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @fz_process_shade_type4(i32* %78, %struct.TYPE_18__* %79, i32 %80, %struct.TYPE_19__* %15)
  br label %125

82:                                               ; preds = %71
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FZ_MESH_TYPE5, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32*, i32** %8, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @fz_process_shade_type5(i32* %89, %struct.TYPE_18__* %90, i32 %91, %struct.TYPE_19__* %15)
  br label %124

93:                                               ; preds = %82
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @FZ_MESH_TYPE6, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32*, i32** %8, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @fz_process_shade_type6(i32* %100, %struct.TYPE_18__* %101, i32 %102, %struct.TYPE_19__* %15)
  br label %123

104:                                              ; preds = %93
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FZ_MESH_TYPE7, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @fz_process_shade_type7(i32* %111, %struct.TYPE_18__* %112, i32 %113, %struct.TYPE_19__* %15)
  br label %122

115:                                              ; preds = %104
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @fz_throw(i32* %116, i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %120)
  br label %122

122:                                              ; preds = %115, %110
  br label %123

123:                                              ; preds = %122, %99
  br label %124

124:                                              ; preds = %123, %88
  br label %125

125:                                              ; preds = %124, %77
  br label %126

126:                                              ; preds = %125, %66
  br label %127

127:                                              ; preds = %126, %54
  br label %128

128:                                              ; preds = %127, %43
  ret void
}

declare dso_local i32 @fz_colorspace_n(i32*, i32) #1

declare dso_local i32 @fz_process_shade_type1(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_process_shade_type2(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @fz_process_shade_type3(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_process_shade_type4(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_process_shade_type5(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_process_shade_type6(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_process_shade_type7(i32*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

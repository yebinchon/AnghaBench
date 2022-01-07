; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-ps.c_ps_write_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-ps.c_ps_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Postscript writer cannot cope with spot colors\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Postscript output cannot have alpha\00", align 1
@fz_zlib_alloc = common dso_local global i32 0, align 4
@fz_zlib_free = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"compression error %d\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%%%%Page: %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%%%%PageBoundingBox: 0 0 %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%%%%BeginPageSetup\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"<</PageSize [%d %d]>> setpagedevice\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%%%%EndPageSetup\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"/DataFile currentfile /FlateDecode filter def\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"/DeviceGray setcolorspace\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"/DeviceRGB setcolorspace\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"/DeviceCMYK setcolorspace\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Unexpected colorspace for ps output\00", align 1
@.str.13 = private unnamed_addr constant [167 x i8] c"<<\0A/ImageType 1\0A/Width %d\0A/Height %d\0A/ImageMatrix [ %g 0 0 -%g 0 %d ]\0A/MultipleDataSources false\0A/DataSource DataFile\0A/BitsPerComponent 8\0A/Interpolate false\0A>>\0Aimage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @ps_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_write_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %7, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 8
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %11, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %13, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 72
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 1
  %59 = add nsw i32 %56, %58
  %60 = load i32, i32* %13, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 %62, 72
  %64 = load i32, i32* %14, align 4
  %65 = ashr i32 %64, 1
  %66 = add nsw i32 %63, %65
  %67 = load i32, i32* %14, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sitofp i32 %69 to float
  %71 = load i32, i32* %16, align 4
  %72 = sitofp i32 %71 to float
  %73 = fdiv float %70, %72
  store float %73, float* %18, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sitofp i32 %74 to float
  %76 = load i32, i32* %17, align 4
  %77 = sitofp i32 %76 to float
  %78 = fdiv float %75, %77
  store float %78, float* %19, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %3
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %87 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %85, i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %84, %3
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %94 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %92, i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %104, i32* %107, align 8
  %108 = load i32, i32* @fz_zlib_alloc, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @fz_zlib_free, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32* %116, i32** %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %123 = call i32 @deflateInit(%struct.TYPE_6__* %121, i32 %122)
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @Z_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %95
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %130 = load i32, i32* %20, align 4
  %131 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %128, i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %95
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %133, i32* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %138, i32* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %141)
  %143 = load i32*, i32** %4, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %143, i32* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32*, i32** %4, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %146, i32* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load i32*, i32** %4, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %151, i32* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %154, i32* %155, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %157 = load i32, i32* %11, align 4
  switch i32 %157, label %170 [
    i32 1, label %158
    i32 3, label %162
    i32 4, label %166
  ]

158:                                              ; preds = %132
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @fz_write_string(i32* %159, i32* %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %174

162:                                              ; preds = %132
  %163 = load i32*, i32** %4, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i32 @fz_write_string(i32* %163, i32* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %174

166:                                              ; preds = %132
  %167 = load i32*, i32** %4, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 @fz_write_string(i32* %167, i32* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %174

170:                                              ; preds = %132
  %171 = load i32*, i32** %4, align 8
  %172 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %173 = call i32 (i32*, i32, i8*, ...) @fz_throw(i32* %171, i32 %172, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %174

174:                                              ; preds = %170, %166, %162, %158
  %175 = load i32*, i32** %4, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load float, float* %18, align 4
  %180 = fpext float %179 to double
  %181 = load float, float* %19, align 4
  %182 = fpext float %181 to double
  %183 = load i32, i32* %10, align 4
  %184 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %175, i32* %176, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.13, i64 0, i64 0), i32 %177, i32 %178, double %180, double %182, i32 %183)
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*, ...) #1

declare dso_local i32 @deflateInit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @fz_write_string(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_filter_show_char.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_filter_show_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 (i32*, i32, i32*, i32, i32, i32, %struct.TYPE_19__*)*, %struct.TYPE_21__, i32, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i8*, i64, i8*, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32*, i64, i32, i64 }

@FZ_REPLACEMENT_CHARACTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*, i32, i32*)* @filter_show_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_show_char(i32* %0, %struct.TYPE_18__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %9, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %10, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pdf_tos_make_trm(i32* %26, %struct.TYPE_21__* %28, %struct.TYPE_14__* %31, %struct.TYPE_17__* %32, i32 %33, i32* %11)
  store i32 0, i32* %13, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %45 = call i32 @pdf_lookup_cmap_full(i64 %42, i32 %43, i32* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %39, %4
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %56, %49, %46
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %65
  %76 = load i32, i32* @FZ_REPLACEMENT_CHARACTER, align 4
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 %76, i32* %77, align 16
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %71, %68
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32 (i32*, i32, i32*, i32, i32, i32, %struct.TYPE_19__*)*, i32 (i32*, i32, i32*, i32, i32, i32, %struct.TYPE_19__*)** %83, align 8
  %85 = icmp ne i32 (i32*, i32, i32*, i32, i32, i32, %struct.TYPE_19__*)* %84, null
  br i1 %85, label %86, label %159

86:                                               ; preds = %78
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @fz_concat(i32 %90, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %86
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @fz_font_descender(i32* %102, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i64 %106, i64* %107, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @fz_advance_glyph(i32* %108, i32 %111, i32 %115, i32 0)
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  store i8* %116, i8** %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @fz_font_ascender(i32* %118, i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  br label %146

124:                                              ; preds = %86
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  call void @fz_font_bbox(%struct.TYPE_19__* sret %17, i32* %125, i32 %128)
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 3
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 2
  store i8* %133, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i8* @fz_advance_glyph(i32* %136, i32 %139, i32 %143, i32 1)
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %124, %100
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32 (i32*, i32, i32*, i32, i32, i32, %struct.TYPE_19__*)*, i32 (i32*, i32, i32*, i32, i32, i32, %struct.TYPE_19__*)** %148, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %15, align 4
  %158 = call i32 %149(i32* %150, i32 %153, i32* %154, i32 %155, i32 %156, i32 %157, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %16)
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %146, %78
  %160 = load i32*, i32** %5, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = call i32 @pdf_tos_move_after_char(i32* %160, %struct.TYPE_21__* %162)
  %164 = load i32, i32* %14, align 4
  ret i32 %164
}

declare dso_local i32 @pdf_tos_make_trm(i32*, %struct.TYPE_21__*, %struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @pdf_lookup_cmap_full(i64, i32, i32*) #1

declare dso_local i32 @fz_concat(i32, i32) #1

declare dso_local i64 @fz_font_descender(i32*, i32) #1

declare dso_local i8* @fz_advance_glyph(i32*, i32, i32, i32) #1

declare dso_local i8* @fz_font_ascender(i32*, i32) #1

declare dso_local void @fz_font_bbox(%struct.TYPE_19__* sret, i32*, i32) #1

declare dso_local i32 @pdf_tos_move_after_char(i32*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

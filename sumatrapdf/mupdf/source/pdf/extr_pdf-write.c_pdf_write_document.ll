; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_pdf_write_document.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-write.c_pdf_write_document.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, i32 }

@pdf_default_write_options = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Can't do incremental writes on a repaired file\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Can't do incremental writes with garbage collection\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Can't do incremental writes with linearisation\00", align 1
@PDF_ENCRYPT_KEEP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"Can't do incremental writes when changing encryption\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"Can't write pdf that has unsaved sigs to a fz_output unless it supports fz_stream_from_output!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_write_document(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %11 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_16__* @pdf_default_write_options to i8*), i64 32, i1 false)
  %12 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = icmp ne %struct.TYPE_17__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %4
  br label %105

19:                                               ; preds = %15
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %8, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %36 = call i32 @fz_throw(i32* %34, i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %28, %23
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %50 = call i32 @fz_throw(i32* %48, i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %42, %37
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %64 = call i32 @fz_throw(i32* %62, i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %56, %51
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PDF_ENCRYPT_KEEP, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %79 = call i32 @fz_throw(i32* %77, i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %70, %65
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = call i64 @pdf_has_unsaved_sigs(i32* %81, %struct.TYPE_17__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %93 = call i32 @fz_throw(i32* %91, i32 %92, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %85, %80
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = call i32 @prepare_for_save(i32* %95, %struct.TYPE_17__* %96, %struct.TYPE_16__* %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %100, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = call i32 @do_pdf_save_document(i32* %101, %struct.TYPE_17__* %102, %struct.TYPE_15__* %10, %struct.TYPE_16__* %103)
  br label %105

105:                                              ; preds = %94, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #2

declare dso_local i64 @pdf_has_unsaved_sigs(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @prepare_for_save(i32*, %struct.TYPE_17__*, %struct.TYPE_16__*) #2

declare dso_local i32 @do_pdf_save_document(i32*, %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_prepare_object_for_alteration.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-object.c_prepare_object_for_alteration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }

@PDF_LIMIT = common dso_local global %struct.TYPE_16__* null, align 8
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"container and item belong to different documents\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, %struct.TYPE_16__*)* @prepare_object_for_alteration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_object_for_alteration(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** @PDF_LIMIT, align 8
  %12 = icmp ult %struct.TYPE_16__* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %81

14:                                               ; preds = %3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %36 [
    i32 128, label %18
    i32 129, label %27
  ]

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call %struct.TYPE_14__* @DICT(%struct.TYPE_16__* %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %7, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call %struct.TYPE_14__* @DICT(%struct.TYPE_16__* %23)
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  br label %37

27:                                               ; preds = %14
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = call %struct.TYPE_15__* @ARRAY(%struct.TYPE_16__* %28)
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %7, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = call %struct.TYPE_15__* @ARRAY(%struct.TYPE_16__* %32)
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  br label %37

36:                                               ; preds = %14
  br label %81

37:                                               ; preds = %27, %18
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = call %struct.TYPE_17__* @pdf_get_bound_document(i32* %41, %struct.TYPE_16__* %42)
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %8, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = icmp ne %struct.TYPE_17__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = icmp ne %struct.TYPE_17__* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %56 = call i32 @fz_throw(i32* %54, i32 %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %49, %46, %40
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %61, %58
  br label %81

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pdf_xref_ensure_incremental_object(i32* %73, %struct.TYPE_17__* %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @pdf_set_obj_parent(i32* %77, %struct.TYPE_16__* %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %71, %36, %13
  ret void
}

declare dso_local %struct.TYPE_14__* @DICT(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @ARRAY(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @pdf_get_bound_document(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @pdf_xref_ensure_incremental_object(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @pdf_set_obj_parent(i32*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

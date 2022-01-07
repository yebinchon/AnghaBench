; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_pdf_layer_config_info.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-layer.c_pdf_layer_config_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid layer config number\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Root/OCProperties\00", align 1
@Configs = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@Creator = common dso_local global i32 0, align 4
@Name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdf_layer_config_info(i32* %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %97

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %14
  br label %97

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %31, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %27
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %41 = call i32 @fz_throw(i32* %39, i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %30
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = call i32 @pdf_trailer(i32* %44, %struct.TYPE_9__* %45)
  %47 = call i32* @pdf_dict_getp(i32* %43, i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %97

51:                                               ; preds = %42
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @Configs, align 4
  %55 = call i32 @PDF_NAME(i32 %54)
  %56 = call i32* @pdf_dict_get(i32* %52, i32* %53, i32 %55)
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @pdf_is_array(i32* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32* @pdf_array_get(i32* %62, i32* %63, i32 %64)
  store i32* %65, i32** %10, align 8
  br label %80

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @D, align 4
  %73 = call i32 @PDF_NAME(i32 %72)
  %74 = call i32* @pdf_dict_get(i32* %70, i32* %71, i32 %73)
  store i32* %74, i32** %10, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %78 = call i32 @fz_throw(i32* %76, i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %69
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* @Creator, align 4
  %84 = call i32 @PDF_NAME(i32 %83)
  %85 = call i8* @pdf_dict_get_string(i32* %81, i32* %82, i32 %84, i32* null)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* @Name, align 4
  %92 = call i32 @PDF_NAME(i32 %91)
  %93 = call i8* @pdf_dict_get_string(i32* %89, i32* %90, i32 %92, i32* null)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %80, %50, %26, %13
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32* @pdf_dict_getp(i32*, i32, i8*) #1

declare dso_local i32 @pdf_trailer(i32*, %struct.TYPE_9__*) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i64 @pdf_is_array(i32*, i32*) #1

declare dso_local i32* @pdf_array_get(i32*, i32*, i32) #1

declare dso_local i8* @pdf_dict_get_string(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

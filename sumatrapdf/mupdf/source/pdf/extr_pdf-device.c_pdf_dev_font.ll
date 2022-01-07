; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-device.c_pdf_dev_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { i64, float, i32 }
%struct.TYPE_10__ = type { i64 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"pdf device does not support type 3 fonts\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"pdf device does not support substitute fonts\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"pdf device does not support font types found in this file\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"/F%d %g Tf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*, i32)* @pdf_dev_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_dev_font(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = call %struct.TYPE_9__* @CURRENT_GSTATE(%struct.TYPE_8__* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call float @fz_matrix_expansion(i32 %13)
  store float %14, float* %10, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32*, i32** %22, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load float, float* %32, align 8
  %34 = load float, float* %10, align 4
  %35 = fcmp oeq float %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %85

37:                                               ; preds = %30, %19, %4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @fz_font_t3_procs(i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %45 = call i32 @fz_throw(i32* %43, i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32*, i32** %7, align 8
  %48 = call %struct.TYPE_10__* @fz_font_flags(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %55 = call i32 @fz_throw(i32* %53, i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @pdf_font_writing_supported(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %63 = call i32 @fz_throw(i32* %61, i32 %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @pdf_dev_add_font_res(i32* %65, %struct.TYPE_8__* %66, i32* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load float, float* %10, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store float %71, float* %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load float, float* %82, align 8
  %84 = call i32 @fz_append_printf(i32* %74, i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %80, float %83)
  br label %85

85:                                               ; preds = %64, %36
  ret void
}

declare dso_local %struct.TYPE_9__* @CURRENT_GSTATE(%struct.TYPE_8__*) #1

declare dso_local float @fz_matrix_expansion(i32) #1

declare dso_local i64 @fz_font_t3_procs(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_10__* @fz_font_flags(i32*) #1

declare dso_local i32 @pdf_font_writing_supported(i32*) #1

declare dso_local i64 @pdf_dev_add_font_res(i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @fz_append_printf(i32*, i32, i8*, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

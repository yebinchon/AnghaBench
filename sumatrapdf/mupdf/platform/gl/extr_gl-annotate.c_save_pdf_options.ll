; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_save_pdf_options.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_save_pdf_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8**, i8**, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@cryptalgo_names = common dso_local global i8** null, align 8
@save_opts = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@NW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PDF write options:\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Incremental\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Pretty-print\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Ascii\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Decompress\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Compress\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Compress images\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Compress fonts\00", align 1
@PDF_ENCRYPT_KEEP = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"Linearize\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Garbage collect\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Clean syntax\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Sanitize syntax\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Encryption:\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Encryption\00", align 1
@PDF_ENCRYPT_RC4_40 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"User password:\00", align 1
@upwinput = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@UI_INPUT_EDIT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"Owner password:\00", align 1
@opwinput = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_pdf_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_pdf_options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8**, i8*** @cryptalgo_names, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 0), align 8
  %5 = getelementptr inbounds i8*, i8** %3, i64 %4
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %1, align 8
  %7 = load i32, i32* @T, align 4
  %8 = load i32, i32* @X, align 4
  %9 = load i32, i32* @NW, align 4
  %10 = call i32 @ui_layout(i32 %7, i32 %8, i32 %9, i32 2, i32 2)
  %11 = call i32 @ui_label(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @T, align 4
  %13 = load i32, i32* @X, align 4
  %14 = load i32, i32* @NW, align 4
  %15 = call i32 @ui_layout(i32 %12, i32 %13, i32 %14, i32 4, i32 2)
  %16 = call i32 @ui_checkbox(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 7))
  %17 = call i32 (...) @ui_spacer()
  %18 = call i32 @ui_checkbox(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 13))
  %19 = call i32 @ui_checkbox(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 12))
  %20 = call i32 @ui_checkbox(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 11))
  %21 = call i32 @ui_checkbox(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 10))
  %22 = call i32 @ui_checkbox(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 9))
  %23 = call i32 @ui_checkbox(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 8))
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 7), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 3), align 8
  %27 = load i64, i64* @PDF_ENCRYPT_KEEP, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 0), align 8
  br label %47

28:                                               ; preds = %0
  %29 = call i32 (...) @ui_spacer()
  %30 = call i32 @ui_checkbox(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 6))
  %31 = call i32 @ui_checkbox(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 5))
  %32 = call i32 @ui_checkbox(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 4))
  %33 = call i32 @ui_checkbox(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 3))
  %34 = call i32 (...) @ui_spacer()
  %35 = call i32 @ui_label(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %36 = load i8*, i8** %1, align 8
  %37 = load i8**, i8*** @cryptalgo_names, align 8
  %38 = load i8**, i8*** @cryptalgo_names, align 8
  %39 = call i32 @nelem(i8** %38)
  %40 = call i32 @ui_select(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %36, i8** %37, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %43, %28
  br label %47

47:                                               ; preds = %46, %26
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 0), align 8
  %49 = load i32, i32* @PDF_ENCRYPT_RC4_40, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %48, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = call i32 (...) @ui_spacer()
  %54 = call i32 @ui_label(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %55 = call i64 @ui_input(%struct.TYPE_5__* @upwinput, i32 32, i32 1)
  %56 = load i64, i64* @UI_INPUT_EDIT, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 1), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @upwinput, i32 0, i32 0), align 4
  %61 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 1), align 8
  %62 = call i32 @nelem(i8** %61)
  %63 = call i32 @fz_strlcpy(i8** %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = call i32 @ui_label(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %66 = call i64 @ui_input(%struct.TYPE_5__* @opwinput, i32 32, i32 1)
  %67 = load i64, i64* @UI_INPUT_EDIT, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 2), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @opwinput, i32 0, i32 0), align 4
  %72 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @save_opts, i32 0, i32 2), align 8
  %73 = call i32 @nelem(i8** %72)
  %74 = call i32 @fz_strlcpy(i8** %70, i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  br label %76

76:                                               ; preds = %75, %47
  ret void
}

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_label(i8*) #1

declare dso_local i32 @ui_checkbox(i8*, i64*) #1

declare dso_local i32 @ui_spacer(...) #1

declare dso_local i32 @ui_select(i8*, i8*, i8**, i32) #1

declare dso_local i32 @nelem(i8**) #1

declare dso_local i64 @ui_input(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @fz_strlcpy(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

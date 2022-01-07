; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_flags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctx = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Flags:\00", align 1
@PDF_ANNOT_IS_INVISIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" inv\00", align 1
@PDF_ANNOT_IS_HIDDEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c" hidden\00", align 1
@PDF_ANNOT_IS_PRINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c" print\00", align 1
@PDF_ANNOT_IS_NO_ZOOM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" nz\00", align 1
@PDF_ANNOT_IS_NO_ROTATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" nr\00", align 1
@PDF_ANNOT_IS_NO_VIEW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" nv\00", align 1
@PDF_ANNOT_IS_READ_ONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" ro\00", align 1
@PDF_ANNOT_IS_LOCKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" lock\00", align 1
@PDF_ANNOT_IS_TOGGLE_NO_VIEW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c" tnv\00", align 1
@PDF_ANNOT_IS_LOCKED_CONTENTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c" lc\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" none\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_annotate_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_annotate_flags() #0 {
  %1 = alloca [4096 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ctx, align 4
  %4 = load i32, i32* @selected_annot, align 4
  %5 = call i32 @pdf_annot_flags(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %7 = call i32 @fz_strlcpy(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4096)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PDF_ANNOT_IS_INVISIBLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %14 = call i32 @fz_strlcat(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4096)
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @PDF_ANNOT_IS_HIDDEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %22 = call i32 @fz_strlcat(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4096)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @PDF_ANNOT_IS_PRINT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %30 = call i32 @fz_strlcat(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 4096)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @PDF_ANNOT_IS_NO_ZOOM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %38 = call i32 @fz_strlcat(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 4096)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @PDF_ANNOT_IS_NO_ROTATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %46 = call i32 @fz_strlcat(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 4096)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @PDF_ANNOT_IS_NO_VIEW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %54 = call i32 @fz_strlcat(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 4096)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @PDF_ANNOT_IS_READ_ONLY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %62 = call i32 @fz_strlcat(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 4096)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @PDF_ANNOT_IS_LOCKED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %70 = call i32 @fz_strlcat(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 4096)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @PDF_ANNOT_IS_TOGGLE_NO_VIEW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %78 = call i32 @fz_strlcat(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4096)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @PDF_ANNOT_IS_LOCKED_CONTENTS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %86 = call i32 @fz_strlcat(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 4096)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %2, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %92 = call i32 @fz_strlcat(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 4096)
  br label %93

93:                                               ; preds = %90, %87
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i64 0, i64 0
  %95 = call i32 @ui_label(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %94)
  ret void
}

declare dso_local i32 @pdf_annot_flags(i32, i32) #1

declare dso_local i32 @fz_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @ui_label(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

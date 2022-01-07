; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_info.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_do_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@ui = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@T = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@W = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@FZ_META_INFO_TITLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Title: %s\00", align 1
@FZ_META_INFO_AUTHOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Author: %s\00", align 1
@FZ_META_FORMAT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Format: %s\00", align 1
@FZ_META_ENCRYPTION = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Encryption: %s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"info:Creator\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PDF Creator: %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"info:Producer\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"PDF Producer: %s\00", align 1
@FZ_PERMISSION_PRINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"print, \00", align 1
@FZ_PERMISSION_COPY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"copy, \00", align 1
@FZ_PERMISSION_EDIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"edit, \00", align 1
@FZ_PERMISSION_ANNOTATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"annotate, \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Permissions: %s\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Page: %d / %d\00", align 1
@currentpage = common dso_local global i32 0, align 4
@page_bounds = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"Size: %d x %d (%s)\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Size: %d x %d\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"ICC rendering: %s.\00", align 1
@currenticc = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Spot rendering: %s.\00", align 1
@currentseparations = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_info() #0 {
  %1 = alloca [100 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui, i32 0, i32 0), align 4
  %6 = mul nsw i32 14, %5
  %7 = call i32 @ui_dialog_begin(i32 500, i32 %6)
  %8 = load i32, i32* @T, align 4
  %9 = load i32, i32* @X, align 4
  %10 = load i32, i32* @W, align 4
  %11 = call i32 @ui_layout(i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  %12 = load i32, i32* @ctx, align 4
  %13 = load i32, i32* @doc, align 4
  %14 = load i8*, i8** @FZ_META_INFO_TITLE, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %16 = call i64 @fz_lookup_metadata(i32 %12, i32 %13, i8* %14, i8* %15, i32 100)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %20 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i32, i32* @ctx, align 4
  %23 = load i32, i32* @doc, align 4
  %24 = load i8*, i8** @FZ_META_INFO_AUTHOR, align 8
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %26 = call i64 @fz_lookup_metadata(i32 %22, i32 %23, i8* %24, i8* %25, i32 100)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %30 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* @ctx, align 4
  %33 = load i32, i32* @doc, align 4
  %34 = load i8*, i8** @FZ_META_FORMAT, align 8
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %36 = call i64 @fz_lookup_metadata(i32 %32, i32 %33, i8* %34, i8* %35, i32 100)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %40 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* @ctx, align 4
  %43 = load i32, i32* @doc, align 4
  %44 = load i8*, i8** @FZ_META_ENCRYPTION, align 8
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %46 = call i64 @fz_lookup_metadata(i32 %42, i32 %43, i8* %44, i8* %45, i32 100)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %50 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* @ctx, align 4
  %53 = load i32, i32* @doc, align 4
  %54 = call i64 @pdf_specifics(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %127

56:                                               ; preds = %51
  %57 = load i32, i32* @ctx, align 4
  %58 = load i32, i32* @doc, align 4
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %60 = call i64 @fz_lookup_metadata(i32 %57, i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %59, i32 100)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %64 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* @ctx, align 4
  %67 = load i32, i32* @doc, align 4
  %68 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %69 = call i64 @fz_lookup_metadata(i32 %66, i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %68, i32 100)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %73 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %65
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %75, align 16
  %76 = load i32, i32* @ctx, align 4
  %77 = load i32, i32* @doc, align 4
  %78 = load i32, i32* @FZ_PERMISSION_PRINT, align 4
  %79 = call i64 @fz_has_permission(i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %83 = call i32 @fz_strlcat(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 100)
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i32, i32* @ctx, align 4
  %86 = load i32, i32* @doc, align 4
  %87 = load i32, i32* @FZ_PERMISSION_COPY, align 4
  %88 = call i64 @fz_has_permission(i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %92 = call i32 @fz_strlcat(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 100)
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, i32* @ctx, align 4
  %95 = load i32, i32* @doc, align 4
  %96 = load i32, i32* @FZ_PERMISSION_EDIT, align 4
  %97 = call i64 @fz_has_permission(i32 %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %101 = call i32 @fz_strlcat(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i32, i32* @ctx, align 4
  %104 = load i32, i32* @doc, align 4
  %105 = load i32, i32* @FZ_PERMISSION_ANNOTATE, align 4
  %106 = call i64 @fz_has_permission(i32 %103, i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %110 = call i32 @fz_strlcat(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 100)
  br label %111

111:                                              ; preds = %108, %102
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %113 = call i32 @strlen(i8* %112)
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %117 = call i32 @strlen(i8* %116)
  %118 = sub nsw i32 %117, 2
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 %119
  store i8 0, i8* %120, align 1
  br label %124

121:                                              ; preds = %111
  %122 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %123 = call i32 @fz_strlcat(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 100)
  br label %124

124:                                              ; preds = %121, %115
  %125 = getelementptr inbounds [100 x i8], [100 x i8]* %1, i64 0, i64 0
  %126 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %124, %51
  %128 = load i32, i32* @ctx, align 4
  %129 = load i32, i32* @doc, align 4
  %130 = load i32, i32* @currentpage, align 4
  %131 = call i32 @fz_page_number_from_location(i32 %128, i32 %129, i32 %130)
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* @ctx, align 4
  %134 = load i32, i32* @doc, align 4
  %135 = call i32 @fz_count_pages(i32 %133, i32 %134)
  %136 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %132, i32 %135)
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @page_bounds, i32 0, i32 3), align 8
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @page_bounds, i32 0, i32 2), align 8
  %139 = sub nsw i64 %137, %138
  %140 = sitofp i64 %139 to float
  %141 = fadd float %140, 5.000000e-01
  %142 = fptosi float %141 to i32
  store i32 %142, i32* %2, align 4
  %143 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @page_bounds, i32 0, i32 1), align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @page_bounds, i32 0, i32 0), align 8
  %145 = sub nsw i64 %143, %144
  %146 = sitofp i64 %145 to float
  %147 = fadd float %146, 5.000000e-01
  %148 = fptosi float %147 to i32
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i8* @paper_size_name(i32 %149, i32 %150)
  store i8* %151, i8** %4, align 8
  %152 = load i8*, i8** %4, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %127
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* %2, align 4
  %157 = call i8* @paper_size_name(i32 %155, i32 %156)
  store i8* %157, i8** %4, align 8
  br label %158

158:                                              ; preds = %154, %127
  %159 = load i8*, i8** %4, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* %3, align 4
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %162, i32 %163, i8* %164)
  br label %170

166:                                              ; preds = %158
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %161
  %171 = load i64, i64* @currenticc, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %175 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %174)
  %176 = load i64, i64* @currentseparations, align 8
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)
  %180 = call i32 (i8*, ...) @ui_label(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i8* %179)
  %181 = call i32 (...) @ui_dialog_end()
  ret void
}

declare dso_local i32 @ui_dialog_begin(i32, i32) #1

declare dso_local i32 @ui_layout(i32, i32, i32, i32, i32) #1

declare dso_local i64 @fz_lookup_metadata(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @ui_label(i8*, ...) #1

declare dso_local i64 @pdf_specifics(i32, i32) #1

declare dso_local i64 @fz_has_permission(i32, i32, i32) #1

declare dso_local i32 @fz_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fz_page_number_from_location(i32, i32, i32) #1

declare dso_local i32 @fz_count_pages(i32, i32) #1

declare dso_local i8* @paper_size_name(i32, i32) #1

declare dso_local i32 @ui_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

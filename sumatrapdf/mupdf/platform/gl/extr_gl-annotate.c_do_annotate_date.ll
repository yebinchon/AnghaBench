; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_date.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-annotate.c_do_annotate_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@ctx = common dso_local global i32 0, align 4
@selected_annot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%Y-%m-%d %H:%M UTC\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Date: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_annotate_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_annotate_date() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = load i32, i32* @ctx, align 4
  %5 = load i32, i32* @selected_annot, align 4
  %6 = call i64 @pdf_annot_modification_date(i32 %4, i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %0
  %10 = call %struct.tm* @gmtime(i64* %1)
  store %struct.tm* %10, %struct.tm** %2, align 8
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = icmp ne %struct.tm* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %15 = load %struct.tm*, %struct.tm** %2, align 8
  %16 = call i32 @strftime(i8* %14, i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.tm* %15)
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %18 = call i32 @ui_label(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13, %9
  br label %20

20:                                               ; preds = %19, %0
  ret void
}

declare dso_local i64 @pdf_annot_modification_date(i32, i32) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @ui_label(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

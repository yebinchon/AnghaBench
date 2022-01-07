; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showxref.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfshow.c_showxref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i64 }

@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xref\0A0 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%05d: %010d %05d %c \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @showxref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showxref() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = load i32, i32* @ctx, align 4
  %5 = load i32, i32* @doc, align 4
  %6 = call i32 @pdf_xref_len(i32 %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @ctx, align 4
  %8 = load i32, i32* @out, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i32, i8*, i32, ...) @fz_write_printf(i32 %7, i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %44, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i32, i32* @ctx, align 4
  %17 = load i32, i32* @doc, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call %struct.TYPE_3__* @pdf_get_xref_entry(i32 %16, i32 %17, i32 %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %3, align 8
  %20 = load i32, i32* @ctx, align 4
  %21 = load i32, i32* @out, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 8
  %39 = sext i8 %38 to i32
  br label %41

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i32 [ %39, %35 ], [ 45, %40 ]
  %43 = call i32 (i32, i32, i8*, i32, ...) @fz_write_printf(i32 %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %26, i32 %29, i32 %42)
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %11

47:                                               ; preds = %11
  ret void
}

declare dso_local i32 @pdf_xref_len(i32, i32) #1

declare dso_local i32 @fz_write_printf(i32, i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_3__* @pdf_get_xref_entry(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

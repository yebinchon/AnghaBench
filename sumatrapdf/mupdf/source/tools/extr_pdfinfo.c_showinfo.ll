; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfinfo.c_showinfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfinfo.c_showinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"1-N\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Retrieving info from pages %d-%d...\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Page %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i8*, i32, i8*)* @showinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showinfo(i32* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %16, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = call i32 (...) @infousage()
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pdf_count_pages(i32* %32, i32 %35)
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %87, %26
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i8* @fz_parse_page_range(i32* %38, i8* %39, i32* %12, i32* %13, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %88

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %47, i32* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %84, %52
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @gatherpageinfo(i32* %59, %struct.TYPE_6__* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %58
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %67, i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @printinfo(i32* %71, %struct.TYPE_6__* %72, i8* %73, i32 %74, i32 %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %77, i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = call i32 @clearinfo(i32* %80, %struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %66, %58
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %54

87:                                               ; preds = %54
  br label %37

88:                                               ; preds = %37
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @printinfo(i32* %92, %struct.TYPE_6__* %93, i8* %94, i32 %95, i32 -1)
  br label %97

97:                                               ; preds = %91, %88
  ret void
}

declare dso_local i32 @infousage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @pdf_count_pages(i32*, i32) #1

declare dso_local i8* @fz_parse_page_range(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

declare dso_local i32 @gatherpageinfo(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @printinfo(i32*, %struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @clearinfo(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

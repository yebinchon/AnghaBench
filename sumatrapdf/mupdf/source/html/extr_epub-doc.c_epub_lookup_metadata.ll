; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_lookup_metadata.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_epub-doc.c_epub_lookup_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@FZ_META_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EPUB\00", align 1
@FZ_META_INFO_TITLE = common dso_local global i32 0, align 4
@FZ_META_INFO_AUTHOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*, i32)* @epub_lookup_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epub_lookup_metadata(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %12, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* @FZ_META_FORMAT, align 4
  %17 = call i32 @strcmp(i8* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @fz_strlcpy(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  br label %61

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @FZ_META_INFO_TITLE, align 4
  %27 = call i32 @strcmp(i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @fz_strlcpy(i8* %35, i8* %38, i32 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %61

42:                                               ; preds = %29, %24
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* @FZ_META_INFO_AUTHOR, align 4
  %45 = call i32 @strcmp(i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @fz_strlcpy(i8* %53, i8* %56, i32 %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %61

60:                                               ; preds = %47, %42
  store i32 -1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %52, %34, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @fz_strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

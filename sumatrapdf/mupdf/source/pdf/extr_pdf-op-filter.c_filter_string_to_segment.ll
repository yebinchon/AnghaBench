; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_filter_string_to_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-op-filter.c_filter_string_to_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@FZ_REPLACEMENT_CHARACTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot encode character\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_13__*, i8*, i32, i32*, i32*, i32*)* @filter_string_to_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_string_to_segment(i32* %0, %struct.TYPE_13__* %1, i8* %2, i32 %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %15, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %16, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %17, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  %39 = load i32*, i32** %14, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %108, %7
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %40
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = call i32 @pdf_decode_cmap(i32 %47, i8* %48, i8* %49, i32* %18)
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %10, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @pdf_lookup_cmap(i32 %59, i32 %60)
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load i32, i32* @FZ_REPLACEMENT_CHARACTER, align 4
  store i32 %65, i32* %21, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @fz_warn(i32* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %73

68:                                               ; preds = %44
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i32 @filter_show_char(i32* %69, %struct.TYPE_13__* %70, i32 %71, i32* %21)
  store i32 %72, i32* %20, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @filter_show_space(i32* %81, %struct.TYPE_13__* %82, i32 %87)
  br label %89

89:                                               ; preds = %80, %76, %73
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @mcid_char(i32* %90, %struct.TYPE_13__* %91, i32 %92, i32 %93)
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 32
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i1 [ false, %97 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = load i32*, i32** %14, align 8
  store i32 %106, i32* %107, align 4
  br label %114

108:                                              ; preds = %89
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %110
  store i32 %113, i32* %111, align 4
  br label %40

114:                                              ; preds = %104, %40
  ret void
}

declare dso_local i32 @pdf_decode_cmap(i32, i8*, i8*, i32*) #1

declare dso_local i32 @pdf_lookup_cmap(i32, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @filter_show_char(i32*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @filter_show_space(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mcid_char(i32*, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

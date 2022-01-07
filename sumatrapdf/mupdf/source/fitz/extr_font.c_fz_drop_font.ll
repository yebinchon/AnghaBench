; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_drop_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_drop_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, %struct.TYPE_9__**, i32, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i64, i32 (i32*, i64)* }

@FZ_LOCK_FREETYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"FT_Done_Face(%s): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_drop_font(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 12
  %11 = call i32 @fz_drop_imp(i32* %7, %struct.TYPE_9__* %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %153

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @free_resources(i32* %20, %struct.TYPE_9__* %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %32
  %34 = call i32 @fz_drop_display_list(i32* %27, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 11
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = call i32 @fz_free(i32* %39, %struct.TYPE_9__* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = call i32 @fz_free(i32* %44, %struct.TYPE_9__* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 9
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = call i32 @fz_free(i32* %49, %struct.TYPE_9__* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @fz_free(i32* %54, %struct.TYPE_9__* %57)
  br label %59

59:                                               ; preds = %38, %14
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %67 = call i32 @fz_lock(i32* %65, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @FT_Done_Face(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @FZ_LOCK_FREETYPE, align 4
  %75 = call i32 @fz_unlock(i32* %73, i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ft_error_string(i32 %83)
  %85 = call i32 @fz_warn(i32* %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %84)
  br label %86

86:                                               ; preds = %78, %64
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @fz_drop_freetype(i32* %87)
  br label %89

89:                                               ; preds = %86, %59
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 256
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i32*, i32** %3, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %97, i64 %99
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = call i32 @fz_free(i32* %94, %struct.TYPE_9__* %101)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %90

106:                                              ; preds = %90
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @fz_drop_buffer(i32* %107, i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = call i32 @fz_free(i32* %112, %struct.TYPE_9__* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call i32 @fz_free(i32* %117, %struct.TYPE_9__* %120)
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = call i32 @fz_free(i32* %122, %struct.TYPE_9__* %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32 (i32*, i64)*, i32 (i32*, i64)** %129, align 8
  %131 = icmp ne i32 (i32*, i64)* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %106
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32 (i32*, i64)*, i32 (i32*, i64)** %141, align 8
  %143 = load i32*, i32** %3, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 %142(i32* %143, i64 %147)
  br label %149

149:                                              ; preds = %138, %132, %106
  %150 = load i32*, i32** %3, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = call i32 @fz_free(i32* %150, %struct.TYPE_9__* %151)
  br label %153

153:                                              ; preds = %149, %13
  ret void
}

declare dso_local i32 @fz_drop_imp(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @free_resources(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @fz_drop_display_list(i32*, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i32 @fz_free(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @fz_lock(i32*, i32) #1

declare dso_local i32 @FT_Done_Face(i32) #1

declare dso_local i32 @fz_unlock(i32*, i32) #1

declare dso_local i32 @fz_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @ft_error_string(i32) #1

declare dso_local i32 @fz_drop_freetype(i32*) #1

declare dso_local i32 @fz_drop_buffer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

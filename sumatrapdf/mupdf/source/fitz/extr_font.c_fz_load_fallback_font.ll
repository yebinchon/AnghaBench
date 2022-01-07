; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_load_fallback_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_font.c_fz_load_fallback_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32* }

@UCDN_SCRIPT_HAN = common dso_local global i32 0, align 4
@UCDN_LAST_SCRIPT = common dso_local global i32 0, align 4
@UCDN_SCRIPT_ARABIC = common dso_local global i32 0, align 4
@FZ_LANG_ur = common dso_local global i32 0, align 4
@FZ_LANG_urd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_load_fallback_font(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call i64 @nelem(%struct.TYPE_10__* %27)
  %29 = trunc i64 %28 to i32
  %30 = icmp sge i32 %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21, %6
  store i32* null, i32** %7, align 8
  br label %126

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @UCDN_SCRIPT_HAN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %51 [
    i32 131, label %39
    i32 130, label %42
    i32 129, label %45
    i32 128, label %48
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @UCDN_LAST_SCRIPT, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %16, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* @UCDN_LAST_SCRIPT, align 4
  %44 = add nsw i32 %43, 2
  store i32 %44, i32* %16, align 4
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @UCDN_LAST_SCRIPT, align 4
  %47 = add nsw i32 %46, 3
  store i32 %47, i32* %16, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @UCDN_LAST_SCRIPT, align 4
  %50 = add nsw i32 %49, 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %37, %48, %45, %42, %39
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @UCDN_SCRIPT_ARABIC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @FZ_LANG_ur, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @FZ_LANG_urd, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @UCDN_LAST_SCRIPT, align 4
  %66 = add nsw i32 %65, 5
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32** %80, i32*** %14, align 8
  br label %91

81:                                               ; preds = %68
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32** %90, i32*** %14, align 8
  br label %91

91:                                               ; preds = %81, %71
  %92 = load i32**, i32*** %14, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %123, label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32* @fz_load_system_fallback_font(%struct.TYPE_9__* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32**, i32*** %14, align 8
  store i32* %102, i32** %103, align 8
  %104 = load i32**, i32*** %14, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %122, label %107

107:                                              ; preds = %95
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i8* @fz_lookup_noto_font(%struct.TYPE_9__* %108, i32 %109, i32 %110, i32* %18, i32* %17)
  store i8* %111, i8** %15, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32* @fz_new_font_from_memory(%struct.TYPE_9__* %115, i32* null, i8* %116, i32 %117, i32 %118, i32 0)
  %120 = load i32**, i32*** %14, align 8
  store i32* %119, i32** %120, align 8
  br label %121

121:                                              ; preds = %114, %107
  br label %122

122:                                              ; preds = %121, %95
  br label %123

123:                                              ; preds = %122, %91
  %124 = load i32**, i32*** %14, align 8
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %7, align 8
  br label %126

126:                                              ; preds = %123, %31
  %127 = load i32*, i32** %7, align 8
  ret i32* %127
}

declare dso_local i64 @nelem(%struct.TYPE_10__*) #1

declare dso_local i32* @fz_load_system_fallback_font(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @fz_lookup_noto_font(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32* @fz_new_font_from_memory(%struct.TYPE_9__*, i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

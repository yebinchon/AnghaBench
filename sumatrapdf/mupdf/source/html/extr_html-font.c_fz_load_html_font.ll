; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-font.c_fz_load_html_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-font.c_fz_load_html_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"<builtin>\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"monospace\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"serif\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fz_load_html_font(i32* %0, %struct.TYPE_8__* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %14, align 8
  br label %25

25:                                               ; preds = %69, %6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %73

28:                                               ; preds = %25
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %29, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = mul nsw i32 1, %41
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 %42, %49
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = mul nsw i32 4, %56
  %58 = add nsw i32 %50, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %35
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %16, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %17, align 8
  br label %67

67:                                               ; preds = %62, %35
  br label %68

68:                                               ; preds = %67, %28
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %14, align 8
  br label %25

73:                                               ; preds = %25
  %74 = load i32*, i32** %17, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32*, i32** %17, align 8
  store i32* %77, i32** %7, align 8
  br label %146

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i8* @fz_lookup_builtin_font(i32* %79, i8* %80, i32 %81, i32 %82, i32* %18)
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %126

86:                                               ; preds = %78
  %87 = load i32*, i32** %8, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32* @fz_new_font_from_memory(i32* %87, i32* null, i8* %88, i32 %89, i32 0, i32 0)
  store i32* %90, i32** %20, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = call %struct.TYPE_10__* @fz_font_flags(i32* %91)
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %21, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %86
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %95, %86
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %106, %103
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %20, align 8
  %121 = call i32 @fz_add_html_font_face(i32* %115, %struct.TYPE_8__* %116, i8* %117, i32 %118, i32 %119, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = call i32 @fz_drop_font(i32* %122, i32* %123)
  %125 = load i32*, i32** %20, align 8
  store i32* %125, i32** %7, align 8
  br label %146

126:                                              ; preds = %78
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @strcmp(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %134, %130, %126
  %139 = load i32*, i32** %8, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32* @fz_load_html_default_font(i32* %139, %struct.TYPE_8__* %140, i8* %141, i32 %142, i32 %143)
  store i32* %144, i32** %7, align 8
  br label %146

145:                                              ; preds = %134
  store i32* null, i32** %7, align 8
  br label %146

146:                                              ; preds = %145, %138, %114, %76
  %147 = load i32*, i32** %7, align 8
  ret i32* %147
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @fz_lookup_builtin_font(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32* @fz_new_font_from_memory(i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @fz_font_flags(i32*) #1

declare dso_local i32 @fz_add_html_font_face(i32*, %struct.TYPE_8__*, i8*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @fz_drop_font(i32*, i32*) #1

declare dso_local i32* @fz_load_html_default_font(i32*, %struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

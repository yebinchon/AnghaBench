; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-font.c_fz_load_html_default_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_html-font.c_fz_load_html_default_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32** }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"monospace\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sans-serif\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Courier\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Helvetica\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Charis SIL\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Times\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"cannot load html font: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_4__*, i8*, i32, i32)* @fz_load_html_default_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fz_load_html_default_font(i32* %0, %struct.TYPE_4__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %36

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %30 ], [ %35, %31 ]
  store i8* %37, i8** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  br label %46

46:                                               ; preds = %41, %40
  %47 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %40 ], [ %45, %41 ]
  store i8* %47, i8** %14, align 8
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 4, i32 0
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i32 [ 8, %50 ], [ %55, %51 ]
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %57, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %117, label %71

71:                                               ; preds = %56
  %72 = load i32*, i32** %6, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i8* @fz_lookup_builtin_font(i32* %72, i8* %73, i32 %74, i32 %75, i32* %17)
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = load i32*, i32** %6, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @fz_lookup_builtin_font(i32* %80, i8* %81, i32 %82, i32 %83, i32* %17)
  store i8* %84, i8** %16, align 8
  br label %85

85:                                               ; preds = %79, %71
  %86 = load i8*, i8** %16, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = call i32 @fz_throw(i32* %89, i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32*, i32** %6, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32* @fz_new_font_from_memory(i32* %94, i32* null, i8* %95, i32 %96, i32 0, i32 1)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* %97, i32** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call %struct.TYPE_5__* @fz_font_flags(i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %107, i32* %116, align 4
  br label %117

117:                                              ; preds = %93, %56
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  ret i32* %124
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @fz_lookup_builtin_font(i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

declare dso_local i32* @fz_new_font_from_memory(i32*, i32*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @fz_font_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

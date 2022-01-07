; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_load_builtin_font.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-font.c_pdf_load_builtin_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { float, float, float }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Times-Roman\00", align 1
@FZ_ERROR_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot find builtin font: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Times\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ZapfDingbats\00", align 1
@PDF_FD_SYMBOLIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i8*, i32)* @pdf_load_builtin_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdf_load_builtin_font(i32* %0, %struct.TYPE_8__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i8* @pdf_clean_font_name(i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call %struct.TYPE_10__* @fz_load_system_font(i32* %20, i8* %21, i32 0, i32 0, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %19
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @fz_lookup_base14_font(i32* %34, i8* %35, i32* %12)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @FZ_ERROR_SYNTAX, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @fz_throw(i32* %40, i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.TYPE_10__* @fz_new_font_from_memory(i32* %45, i8* %46, i8* %47, i32 %48, i32 0, i32 1)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strstr(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  br label %63

63:                                               ; preds = %44, %19
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @PDF_FD_SYMBOLIC, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %9, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load float, float* %84, align 4
  %86 = fmul float 1.000000e+03, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = fdiv float %86, %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store float %90, float* %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load float, float* %94, align 4
  %96 = fmul float 1.000000e+03, %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load float, float* %98, align 4
  %100 = fdiv float %96, %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store float %100, float* %102, align 4
  ret void
}

declare dso_local i8* @pdf_clean_font_name(i8*) #1

declare dso_local %struct.TYPE_10__* @fz_load_system_font(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @fz_lookup_base14_font(i32*, i8*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @fz_new_font_from_memory(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

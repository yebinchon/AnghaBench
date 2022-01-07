; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_find_xml_encoding.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_xml.c_find_xml_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"<?xml\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"encoding=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"iso-8859-1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"latin1\00", align 1
@fz_unicode_from_iso8859_1 = common dso_local global i16* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"iso-8859-7\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"greek\00", align 1
@fz_unicode_from_iso8859_7 = common dso_local global i16* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"koi8\00", align 1
@fz_unicode_from_koi8u = common dso_local global i16* null, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"windows-1250\00", align 1
@fz_unicode_from_windows_1250 = common dso_local global i16* null, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"windows-1251\00", align 1
@fz_unicode_from_windows_1251 = common dso_local global i16* null, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"windows-1252\00", align 1
@fz_unicode_from_windows_1252 = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (i8*)* @find_xml_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @find_xml_encoding(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i16* null, i16** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 62)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %77

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @strstr(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %74

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 10
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @startswith(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @startswith(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %22
  %33 = load i16*, i16** @fz_unicode_from_iso8859_1, align 8
  store i16* %33, i16** %3, align 8
  br label %73

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @startswith(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @startswith(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %34
  %43 = load i16*, i16** @fz_unicode_from_iso8859_7, align 8
  store i16* %43, i16** %3, align 8
  br label %72

44:                                               ; preds = %38
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @startswith(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i16*, i16** @fz_unicode_from_koi8u, align 8
  store i16* %49, i16** %3, align 8
  br label %71

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @startswith(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i16*, i16** @fz_unicode_from_windows_1250, align 8
  store i16* %55, i16** %3, align 8
  br label %70

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @startswith(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i16*, i16** @fz_unicode_from_windows_1251, align 8
  store i16* %61, i16** %3, align 8
  br label %69

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @startswith(i8* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i16*, i16** @fz_unicode_from_windows_1252, align 8
  store i16* %67, i16** %3, align 8
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %60
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %48
  br label %72

72:                                               ; preds = %71, %42
  br label %73

73:                                               ; preds = %72, %32
  br label %74

74:                                               ; preds = %73, %17
  br label %75

75:                                               ; preds = %74, %11
  %76 = load i8*, i8** %4, align 8
  store i8 62, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %1
  %78 = load i16*, i16** %3, align 8
  ret i16* %78
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

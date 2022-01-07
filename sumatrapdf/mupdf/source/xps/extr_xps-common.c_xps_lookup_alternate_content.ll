; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_lookup_alternate_content.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-common.c_xps_lookup_alternate_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Choice\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Requires\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"xps\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Fallback\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xps_lookup_alternate_content(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32* @fz_xml_down(i32* %11)
  store i32* %12, i32** %7, align 8
  br label %13

13:                                               ; preds = %63, %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @fz_xml_is_tag(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @fz_xml_att(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  store i8* %25, i8** %9, align 8
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @fz_xml_att(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @fz_strlcpy(i8* %26, i64 %28, i32 64)
  br label %30

30:                                               ; preds = %46, %24
  %31 = call i8* @fz_strsep(i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ true, %33 ], [ %41, %37 ]
  br label %44

44:                                               ; preds = %42, %30
  %45 = phi i1 [ false, %30 ], [ %43, %42 ]
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %30

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @fz_xml_down(i32* %51)
  store i32* %52, i32** %4, align 8
  br label %67

53:                                               ; preds = %47
  br label %62

54:                                               ; preds = %20, %16
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @fz_xml_is_tag(i32* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @fz_xml_down(i32* %59)
  store i32* %60, i32** %4, align 8
  br label %67

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @fz_xml_next(i32* %64)
  store i32* %65, i32** %7, align 8
  br label %13

66:                                               ; preds = %13
  store i32* null, i32** %4, align 8
  br label %67

67:                                               ; preds = %66, %58, %50
  %68 = load i32*, i32** %4, align 8
  ret i32* %68
}

declare dso_local i32* @fz_xml_down(i32*) #1

declare dso_local i64 @fz_xml_is_tag(i32*, i8*) #1

declare dso_local i64 @fz_xml_att(i32*, i8*) #1

declare dso_local i32 @fz_strlcpy(i8*, i64, i32) #1

declare dso_local i8* @fz_strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fz_xml_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

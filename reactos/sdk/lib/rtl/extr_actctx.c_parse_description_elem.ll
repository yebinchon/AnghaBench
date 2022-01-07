; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_description_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_description_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown attr %s=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Got description %wZ\0A\00", align 1
@descriptionW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"unknown elem %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @parse_description_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_description_elem(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %20, %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @next_xml_attr(i32* %17, i32* %6, i32* %7, i64* %10, i64* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @xmlstr2unicode(i32* %6)
  store i32 %21, i32* %11, align 4
  %22 = call i32 @xmlstr2unicode(i32* %7)
  store i32 %22, i32* %12, align 4
  %23 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  br label %16

24:                                               ; preds = %16
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %2, align 8
  br label %67

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %2, align 8
  br label %67

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @parse_text_content(i32* %35, i32* %5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @FALSE, align 8
  store i64 %39, i64* %2, align 8
  br label %67

40:                                               ; preds = %34
  %41 = call i32 @xmlstr2unicode(i32* %5)
  store i32 %41, i32* %11, align 4
  %42 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  br label %43

43:                                               ; preds = %64, %40
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @next_xml_elem(i32* %47, i32* %4)
  store i64 %48, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load i32, i32* @descriptionW, align 4
  %54 = call i64 @xmlstr_cmp_end(i32* %4, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = call i64 @parse_end_element(i32* %57)
  store i64 %58, i64* %9, align 8
  br label %65

59:                                               ; preds = %52
  %60 = call i32 @xmlstr2unicode(i32* %4)
  store i32 %60, i32* %11, align 4
  %61 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  %62 = load i32*, i32** %3, align 8
  %63 = call i64 @parse_unknown_elem(i32* %62, i32* %4)
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %59
  br label %43

65:                                               ; preds = %56, %50
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %65, %38, %32, %27
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i32 @parse_text_content(i32*, i32*) #1

declare dso_local i32 @DPRINT(i8*, i32*) #1

declare dso_local i64 @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i64 @parse_end_element(i32*) #1

declare dso_local i64 @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

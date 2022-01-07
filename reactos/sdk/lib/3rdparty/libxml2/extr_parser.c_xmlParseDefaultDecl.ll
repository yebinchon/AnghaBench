; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseDefaultDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseDefaultDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@CUR_PTR = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_REQUIRED = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_IMPLIED = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_NONE = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_FIXED = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Space required after '#FIXED'\0A\00", align 1
@XML_PARSER_DTD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Attribute default value declaration error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseDefaultDecl(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32**, i32*** %5, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @CUR_PTR, align 4
  %10 = call i64 @CMP9(i32 %9, i8 signext 35, i8 signext 82, i8 signext 69, i8 signext 81, i8 zeroext 85, i8 signext 73, i8 signext 82, i8 signext 69, i8 signext 68)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @SKIP(i32 9)
  %14 = load i32, i32* @XML_ATTRIBUTE_REQUIRED, align 4
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i32, i32* @CUR_PTR, align 4
  %17 = call i64 @CMP8(i32 %16, i8 signext 35, i8 signext 73, i8 signext 77, i8 signext 80, i8 signext 76, i8 signext 73, i8 signext 69, i8 signext 68)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32 @SKIP(i32 8)
  %21 = load i32, i32* @XML_ATTRIBUTE_IMPLIED, align 4
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %15
  %23 = load i32, i32* @XML_ATTRIBUTE_NONE, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @CUR_PTR, align 4
  %25 = call i64 @CMP6(i32 %24, i8 signext 35, float 7.000000e+01, i8 signext 73, i8 signext 88, i8 signext 69, i8 signext 68)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = call i32 @SKIP(i32 6)
  %29 = load i32, i32* @XML_ATTRIBUTE_FIXED, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* @SKIP_BLANKS, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %35 = call i32 @xmlFatalErrMsg(%struct.TYPE_5__* %33, i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32* @xmlParseAttValue(%struct.TYPE_5__* %38)
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* @XML_PARSER_DTD, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @xmlFatalErrMsg(%struct.TYPE_5__* %46, i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %55

52:                                               ; preds = %37
  %53 = load i32*, i32** %7, align 8
  %54 = load i32**, i32*** %5, align 8
  store i32* %53, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %19, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @CMP9(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 zeroext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i64 @CMP8(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @CMP6(i32, i8 signext, float, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @xmlFatalErrMsg(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32* @xmlParseAttValue(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

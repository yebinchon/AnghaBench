; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseExternalID.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseExternalID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHRINK = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Space required after 'SYSTEM'\0A\00", align 1
@XML_ERR_URI_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Space required after 'PUBLIC'\0A\00", align 1
@XML_ERR_PUBID_REQUIRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Space required after the Public Identifier\0A\00", align 1
@CUR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlParseExternalID(i32 %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %9 = load i32, i32* @SHRINK, align 4
  %10 = load i32**, i32*** %6, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @CUR_PTR, align 4
  %12 = call i64 @CMP6(i32 %11, i8 signext 83, i8 zeroext 89, i8 signext 83, i8 signext 84, i8 signext 69, i8 signext 77)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = call i32 @SKIP(i32 6)
  %16 = load i64, i64* @SKIP_BLANKS, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %21 = call i32 @xmlFatalErrMsg(i32 %19, i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @xmlParseSystemLiteral(i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @XML_ERR_URI_REQUIRED, align 4
  %30 = call i32 @xmlFatalErr(i32 %28, i32 %29, i32* null)
  br label %31

31:                                               ; preds = %27, %22
  br label %91

32:                                               ; preds = %3
  %33 = load i32, i32* @CUR_PTR, align 4
  %34 = call i64 @CMP6(i32 %33, i8 signext 80, i8 zeroext 85, i8 signext 66, i8 signext 76, i8 signext 73, i8 signext 67)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %90

36:                                               ; preds = %32
  %37 = call i32 @SKIP(i32 6)
  %38 = load i64, i64* @SKIP_BLANKS, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %43 = call i32 @xmlFatalErrMsg(i32 %41, i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %5, align 4
  %46 = call i32* @xmlParsePubidLiteral(i32 %45)
  %47 = load i32**, i32*** %6, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @XML_ERR_PUBID_REQUIRED, align 4
  %54 = call i32 @xmlFatalErr(i32 %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i64, i64* @SKIP_BLANKS, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %64 = call i32 @xmlFatalErrMsg(i32 %62, i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %58
  br label %80

66:                                               ; preds = %55
  %67 = load i64, i64* @SKIP_BLANKS, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32* null, i32** %4, align 8
  br label %93

70:                                               ; preds = %66
  %71 = load i8, i8* @CUR, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 39
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8, i8* @CUR, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 34
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32* null, i32** %4, align 8
  br label %93

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i32, i32* %5, align 4
  %82 = call i32* @xmlParseSystemLiteral(i32 %81)
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @XML_ERR_URI_REQUIRED, align 4
  %88 = call i32 @xmlFatalErr(i32 %86, i32 %87, i32* null)
  br label %89

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %32
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i32*, i32** %8, align 8
  store i32* %92, i32** %4, align 8
  br label %93

93:                                               ; preds = %91, %78, %69
  %94 = load i32*, i32** %4, align 8
  ret i32* %94
}

declare dso_local i64 @CMP6(i32, i8 signext, i8 zeroext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErrMsg(i32, i32, i8*) #1

declare dso_local i32* @xmlParseSystemLiteral(i32) #1

declare dso_local i32 @xmlFatalErr(i32, i32, i32*) #1

declare dso_local i32* @xmlParsePubidLiteral(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseVersionInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseVersionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CUR_PTR = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ERR_EQUAL_REQUIRED = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_STRING_NOT_CLOSED = common dso_local global i32 0, align 4
@XML_ERR_STRING_NOT_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlParseVersionInfo(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @CUR_PTR, align 4
  %6 = call i64 @CMP7(i32 %5, i8 signext 118, i8 signext 101, i8 signext 114, i8 signext 115, i8 signext 105, i8 signext 111, i8 signext 110)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %1
  %9 = call i32 @SKIP(i32 7)
  %10 = load i32, i32* @SKIP_BLANKS, align 4
  %11 = load i8, i8* @RAW, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 61
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @XML_ERR_EQUAL_REQUIRED, align 4
  %17 = call i32 @xmlFatalErr(i32 %15, i32 %16, i32* null)
  store i32* null, i32** %2, align 8
  br label %64

18:                                               ; preds = %8
  %19 = load i32, i32* @NEXT, align 4
  %20 = load i32, i32* @SKIP_BLANKS, align 4
  %21 = load i8, i8* @RAW, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 34
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32, i32* @NEXT, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32* @xmlParseVersionNum(i32 %26)
  store i32* %27, i32** %4, align 8
  %28 = load i8, i8* @RAW, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 34
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @XML_ERR_STRING_NOT_CLOSED, align 4
  %34 = call i32 @xmlFatalErr(i32 %32, i32 %33, i32* null)
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @NEXT, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %61

38:                                               ; preds = %18
  %39 = load i8, i8* @RAW, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 39
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32, i32* @NEXT, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32* @xmlParseVersionNum(i32 %44)
  store i32* %45, i32** %4, align 8
  %46 = load i8, i8* @RAW, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 39
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @XML_ERR_STRING_NOT_CLOSED, align 4
  %52 = call i32 @xmlFatalErr(i32 %50, i32 %51, i32* null)
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @NEXT, align 4
  br label %55

55:                                               ; preds = %53, %49
  br label %60

56:                                               ; preds = %38
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @XML_ERR_STRING_NOT_STARTED, align 4
  %59 = call i32 @xmlFatalErr(i32 %57, i32 %58, i32* null)
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %37
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i32*, i32** %4, align 8
  store i32* %63, i32** %2, align 8
  br label %64

64:                                               ; preds = %62, %14
  %65 = load i32*, i32** %2, align 8
  ret i32* %65
}

declare dso_local i64 @CMP7(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErr(i32, i32, i32*) #1

declare dso_local i32* @xmlParseVersionNum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

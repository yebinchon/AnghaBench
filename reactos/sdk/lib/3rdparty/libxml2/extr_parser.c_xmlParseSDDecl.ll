; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseSDDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseSDDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@RAW = common dso_local global i8 0, align 1
@XML_ERR_EQUAL_REQUIRED = common dso_local global i32 0, align 4
@NEXT = common dso_local global i32 0, align 4
@XML_ERR_STANDALONE_VALUE = common dso_local global i32 0, align 4
@XML_ERR_STRING_NOT_CLOSED = common dso_local global i32 0, align 4
@XML_ERR_STRING_NOT_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseSDDecl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -2, i32* %4, align 4
  %5 = load i32, i32* @SKIP_BLANKS, align 4
  %6 = load i32, i32* @CUR_PTR, align 4
  %7 = call i64 @CMP10(i32 %6, i8 signext 115, i8 signext 116, i8 signext 97, i8 signext 110, i8 signext 100, i8 signext 97, i8 signext 108, i8 signext 111, i8 signext 110, i8 signext 101)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %118

9:                                                ; preds = %1
  %10 = call i32 @SKIP(i32 10)
  %11 = load i32, i32* @SKIP_BLANKS, align 4
  %12 = load i8, i8* @RAW, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 61
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @XML_ERR_EQUAL_REQUIRED, align 4
  %18 = call i32 @xmlFatalErr(i32 %16, i32 %17, i32* null)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %120

20:                                               ; preds = %9
  %21 = load i32, i32* @NEXT, align 4
  %22 = load i32, i32* @SKIP_BLANKS, align 4
  %23 = load i8, i8* @RAW, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 39
  br i1 %25, label %26, label %67

26:                                               ; preds = %20
  %27 = load i32, i32* @NEXT, align 4
  %28 = load i8, i8* @RAW, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 110
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = call signext i8 @NXT(i32 1)
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 111
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  %36 = call i32 @SKIP(i32 2)
  br label %56

37:                                               ; preds = %31, %26
  %38 = load i8, i8* @RAW, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 121
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = call signext i8 @NXT(i32 1)
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 101
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call signext i8 @NXT(i32 2)
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 115
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  %50 = call i32 @SKIP(i32 3)
  br label %55

51:                                               ; preds = %45, %41, %37
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @XML_ERR_STANDALONE_VALUE, align 4
  %54 = call i32 @xmlFatalErr(i32 %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %51, %49
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i8, i8* @RAW, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 39
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @XML_ERR_STRING_NOT_CLOSED, align 4
  %63 = call i32 @xmlFatalErr(i32 %61, i32 %62, i32* null)
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @NEXT, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %117

67:                                               ; preds = %20
  %68 = load i8, i8* @RAW, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %71, label %112

71:                                               ; preds = %67
  %72 = load i32, i32* @NEXT, align 4
  %73 = load i8, i8* @RAW, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 110
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = call signext i8 @NXT(i32 1)
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 111
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  %81 = call i32 @SKIP(i32 2)
  br label %101

82:                                               ; preds = %76, %71
  %83 = load i8, i8* @RAW, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 121
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = call signext i8 @NXT(i32 1)
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 101
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = call signext i8 @NXT(i32 2)
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 115
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  store i32 1, i32* %4, align 4
  %95 = call i32 @SKIP(i32 3)
  br label %100

96:                                               ; preds = %90, %86, %82
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @XML_ERR_STANDALONE_VALUE, align 4
  %99 = call i32 @xmlFatalErr(i32 %97, i32 %98, i32* null)
  br label %100

100:                                              ; preds = %96, %94
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i8, i8* @RAW, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 34
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @XML_ERR_STRING_NOT_CLOSED, align 4
  %108 = call i32 @xmlFatalErr(i32 %106, i32 %107, i32* null)
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @NEXT, align 4
  br label %111

111:                                              ; preds = %109, %105
  br label %116

112:                                              ; preds = %67
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @XML_ERR_STRING_NOT_STARTED, align 4
  %115 = call i32 @xmlFatalErr(i32 %113, i32 %114, i32* null)
  br label %116

116:                                              ; preds = %112, %111
  br label %117

117:                                              ; preds = %116, %66
  br label %118

118:                                              ; preds = %117, %1
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %15
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @CMP10(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErr(i32, i32, i32*) #1

declare dso_local signext i8 @NXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

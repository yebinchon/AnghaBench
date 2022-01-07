; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEnumeratedType.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseEnumeratedType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CUR_PTR = common dso_local global i32 0, align 4
@SKIP_BLANKS = common dso_local global i64 0, align 8
@XML_ERR_SPACE_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Space required after 'NOTATION'\0A\00", align 1
@XML_ATTRIBUTE_NOTATION = common dso_local global i32 0, align 4
@XML_ATTRIBUTE_ENUMERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseEnumeratedType(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %6 = load i32, i32* @CUR_PTR, align 4
  %7 = call i64 @CMP8(i32 %6, i8 signext 78, i8 signext 79, i8 signext 84, i8 signext 65, i8 signext 84, i8 signext 73, i8 signext 79, i8 signext 78)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = call i32 @SKIP(i32 8)
  %11 = load i64, i64* @SKIP_BLANKS, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @XML_ERR_SPACE_REQUIRED, align 4
  %16 = call i32 @xmlFatalErrMsg(i32 %14, i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = call i32* @xmlParseNotationType(i32 %18)
  %20 = load i32**, i32*** %5, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load i32, i32* @XML_ATTRIBUTE_NOTATION, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32* @xmlParseEnumerationType(i32 %28)
  %30 = load i32**, i32*** %5, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @XML_ATTRIBUTE_ENUMERATION, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %34, %25, %24, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @CMP8(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP(i32) #1

declare dso_local i32 @xmlFatalErrMsg(i32, i32, i8*) #1

declare dso_local i32* @xmlParseNotationType(i32) #1

declare dso_local i32* @xmlParseEnumerationType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

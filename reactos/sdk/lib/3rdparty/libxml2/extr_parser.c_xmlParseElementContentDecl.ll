; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementContentDecl.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlParseElementContentDecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@RAW = common dso_local global i8 0, align 1
@XML_ERR_ELEMCONTENT_NOT_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"xmlParseElementContentDecl : %s '(' expected\0A\00", align 1
@NEXT = common dso_local global i32 0, align 4
@GROW = common dso_local global i32 0, align 4
@XML_PARSER_EOF = common dso_local global i64 0, align 8
@SKIP_BLANKS = common dso_local global i32 0, align 4
@CUR_PTR = common dso_local global i32 0, align 4
@XML_ELEMENT_TYPE_MIXED = common dso_local global i32 0, align 4
@XML_ELEMENT_TYPE_ELEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParseElementContentDecl(%struct.TYPE_8__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32**, i32*** %7, align 8
  store i32* null, i32** %16, align 8
  %17 = load i8, i8* @RAW, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 40
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load i32, i32* @XML_ERR_ELEMCONTENT_NOT_STARTED, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @xmlFatalErrMsgStr(%struct.TYPE_8__* %21, i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32* %23)
  store i32 -1, i32* %4, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load i32, i32* @NEXT, align 4
  %27 = load i32, i32* @GROW, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XML_PARSER_EOF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %54

34:                                               ; preds = %25
  %35 = load i32, i32* @SKIP_BLANKS, align 4
  %36 = load i32, i32* @CUR_PTR, align 4
  %37 = call i64 @CMP7(i32 %36, i8 signext 35, i8 signext 80, i8 signext 67, i8 signext 68, i8 signext 65, i8 signext 84, i8 signext 65)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32* @xmlParseElementMixedContentDecl(%struct.TYPE_8__* %40, i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32, i32* @XML_ELEMENT_TYPE_MIXED, align 4
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32* @xmlParseElementChildrenContentDeclPriv(%struct.TYPE_8__* %45, i32 %46, i32 1)
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* @XML_ELEMENT_TYPE_ELEMENT, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* @SKIP_BLANKS, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32**, i32*** %7, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %33, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @xmlFatalErrMsgStr(%struct.TYPE_8__*, i32, i8*, i32*) #1

declare dso_local i64 @CMP7(i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32* @xmlParseElementMixedContentDecl(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @xmlParseElementChildrenContentDeclPriv(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

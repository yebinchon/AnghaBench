; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_testSAX.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmllint.c_testSAX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"user_data\00", align 1
@callbacks = common dso_local global i64 0, align 8
@noout = common dso_local global i64 0, align 8
@emptySAXHandler = common dso_local global i8* null, align 8
@debugSAX2Handler = common dso_local global i8* null, align 8
@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SAX generated a doc !\0A\00", align 1
@XMLLINT_ERR_VALID = common dso_local global i32 0, align 4
@debugSAXHandler = common dso_local global i8* null, align 8
@progresult = common dso_local global i32 0, align 4
@repeat = common dso_local global i64 0, align 8
@sax1 = common dso_local global i64 0, align 8
@wxschemas = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @testSAX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSAX(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* @callbacks, align 8
  %9 = load i64, i64* @noout, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @emptySAXHandler, align 8
  store i8* %12, i8** %3, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** @debugSAX2Handler, align 8
  store i8* %14, i8** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %18 = call i32* @xmlParserInputBufferCreateFilename(i8* %16, i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %68

22:                                               ; preds = %15
  %23 = call %struct.TYPE_7__* (...) @xmlNewParserCtxt()
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %7, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @xmlFreeParserInputBuffer(i32* %27)
  br label %68

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %42 = call i32* @xmlNewIOInputStream(%struct.TYPE_7__* %39, i32* %40, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @xmlFreeParserInputBuffer(i32* %46)
  br label %68

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @inputPush(%struct.TYPE_7__* %49, i32* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = call i32 @xmlParseDocument(%struct.TYPE_7__* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @xmlFreeDoc(i32* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %58, %48
  br label %68

68:                                               ; preds = %67, %45, %26, %21
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = call i32 @xmlFreeParserCtxt(%struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32* @xmlParserInputBufferCreateFilename(i8*, i32) #1

declare dso_local %struct.TYPE_7__* @xmlNewParserCtxt(...) #1

declare dso_local i32 @xmlFreeParserInputBuffer(i32*) #1

declare dso_local i32* @xmlNewIOInputStream(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @inputPush(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @xmlParseDocument(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @xmlFreeDoc(i32*) #1

declare dso_local i32 @xmlFreeParserCtxt(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

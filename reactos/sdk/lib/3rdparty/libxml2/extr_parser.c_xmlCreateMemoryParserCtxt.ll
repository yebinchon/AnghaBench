; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateMemoryParserCtxt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateMemoryParserCtxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }

@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlCreateMemoryParserCtxt(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %58

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %58

16:                                               ; preds = %12
  %17 = call i32* (...) @xmlNewParserCtxt()
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %58

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %25 = call %struct.TYPE_9__* @xmlParserInputBufferCreateMem(i8* %22, i32 %23, i32 %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %8, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @xmlFreeParserCtxt(i32* %29)
  store i32* null, i32** %3, align 8
  br label %58

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = call %struct.TYPE_8__* @xmlNewInputStream(i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %7, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = icmp eq %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = call i32 @xmlFreeParserInputBuffer(%struct.TYPE_9__* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @xmlFreeParserCtxt(i32* %39)
  store i32* null, i32** %3, align 8
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = call i32 @xmlBufResetInput(i32 %51, %struct.TYPE_8__* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = call i32 @inputPush(i32* %54, %struct.TYPE_8__* %55)
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %41, %36, %28, %20, %15, %11
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32* @xmlNewParserCtxt(...) #1

declare dso_local %struct.TYPE_9__* @xmlParserInputBufferCreateMem(i8*, i32, i32) #1

declare dso_local i32 @xmlFreeParserCtxt(i32*) #1

declare dso_local %struct.TYPE_8__* @xmlNewInputStream(i32*) #1

declare dso_local i32 @xmlFreeParserInputBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @xmlBufResetInput(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @inputPush(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

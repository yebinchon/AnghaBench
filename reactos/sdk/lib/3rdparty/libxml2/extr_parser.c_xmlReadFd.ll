; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlReadFd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlReadFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlReadFd(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %54

16:                                               ; preds = %4
  %17 = call i32 (...) @xmlInitParser()
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %20 = call %struct.TYPE_5__* @xmlParserInputBufferCreateFd(i32 %18, i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %11, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32* null, i32** %5, align 8
  br label %54

24:                                               ; preds = %16
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = call i32* (...) @xmlNewParserCtxt()
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = call i32 @xmlFreeParserInputBuffer(%struct.TYPE_5__* %31)
  store i32* null, i32** %5, align 8
  br label %54

33:                                               ; preds = %24
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %37 = call i32* @xmlNewIOInputStream(i32* %34, %struct.TYPE_5__* %35, i32 %36)
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = call i32 @xmlFreeParserInputBuffer(%struct.TYPE_5__* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @xmlFreeParserCtxt(i32* %43)
  store i32* null, i32** %5, align 8
  br label %54

45:                                               ; preds = %33
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @inputPush(i32* %46, i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32* @xmlDoRead(i32* %49, i8* %50, i8* %51, i32 %52, i32 0)
  store i32* %53, i32** %5, align 8
  br label %54

54:                                               ; preds = %45, %40, %30, %23, %15
  %55 = load i32*, i32** %5, align 8
  ret i32* %55
}

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local %struct.TYPE_5__* @xmlParserInputBufferCreateFd(i32, i32) #1

declare dso_local i32* @xmlNewParserCtxt(...) #1

declare dso_local i32 @xmlFreeParserInputBuffer(%struct.TYPE_5__*) #1

declare dso_local i32* @xmlNewIOInputStream(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @xmlFreeParserCtxt(i32*) #1

declare dso_local i32 @inputPush(i32*, i32*) #1

declare dso_local i32* @xmlDoRead(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtReadFd.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtReadFd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlCtxtReadFd(i32* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %52

17:                                               ; preds = %5
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32* null, i32** %6, align 8
  br label %52

21:                                               ; preds = %17
  %22 = call i32 (...) @xmlInitParser()
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @xmlCtxtReset(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %27 = call %struct.TYPE_5__* @xmlParserInputBufferCreateFd(i32 %25, i32 %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %12, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32* null, i32** %6, align 8
  br label %52

31:                                               ; preds = %21
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %37 = call i32* @xmlNewIOInputStream(i32* %34, %struct.TYPE_5__* %35, i32 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = call i32 @xmlFreeParserInputBuffer(%struct.TYPE_5__* %41)
  store i32* null, i32** %6, align 8
  br label %52

43:                                               ; preds = %31
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @inputPush(i32* %44, i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32* @xmlDoRead(i32* %47, i8* %48, i8* %49, i32 %50, i32 1)
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %43, %40, %30, %20, %16
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local i32 @xmlCtxtReset(i32*) #1

declare dso_local %struct.TYPE_5__* @xmlParserInputBufferCreateFd(i32, i32) #1

declare dso_local i32* @xmlNewIOInputStream(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @xmlFreeParserInputBuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @inputPush(i32*, i32*) #1

declare dso_local i32* @xmlDoRead(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

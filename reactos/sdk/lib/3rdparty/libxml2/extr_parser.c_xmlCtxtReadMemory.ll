; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtReadMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtReadMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlCtxtReadMemory(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %53

19:                                               ; preds = %6
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32* null, i32** %7, align 8
  br label %53

23:                                               ; preds = %19
  %24 = call i32 (...) @xmlInitParser()
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @xmlCtxtReset(i32* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %30 = call i32* @xmlParserInputBufferCreateMem(i8* %27, i32 %28, i32 %29)
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32* null, i32** %7, align 8
  br label %53

34:                                               ; preds = %23
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %38 = call i32* @xmlNewIOInputStream(i32* %35, i32* %36, i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @xmlFreeParserInputBuffer(i32* %42)
  store i32* null, i32** %7, align 8
  br label %53

44:                                               ; preds = %34
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @inputPush(i32* %45, i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32* @xmlDoRead(i32* %48, i8* %49, i8* %50, i32 %51, i32 1)
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %44, %41, %33, %22, %18
  %54 = load i32*, i32** %7, align 8
  ret i32* %54
}

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local i32 @xmlCtxtReset(i32*) #1

declare dso_local i32* @xmlParserInputBufferCreateMem(i8*, i32, i32) #1

declare dso_local i32* @xmlNewIOInputStream(i32*, i32*, i32) #1

declare dso_local i32 @xmlFreeParserInputBuffer(i32*) #1

declare dso_local i32 @inputPush(i32*, i32*) #1

declare dso_local i32* @xmlDoRead(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

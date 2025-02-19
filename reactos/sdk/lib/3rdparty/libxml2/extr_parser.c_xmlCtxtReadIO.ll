; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtReadIO.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCtxtReadIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XML_CHAR_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xmlCtxtReadIO(i32* %0, i32* %1, i32 (i8*)* %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32 (i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 (i8*)* %2, i32 (i8*)** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32* null, i32** %8, align 8
  br label %63

21:                                               ; preds = %7
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32* null, i32** %8, align 8
  br label %63

25:                                               ; preds = %21
  %26 = call i32 (...) @xmlInitParser()
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @xmlCtxtReset(i32* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %33 = call i32* @xmlParserInputBufferCreateIO(i32* %29, i32 (i8*)* %30, i8* %31, i32 %32)
  store i32* %33, i32** %16, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %38 = icmp ne i32 (i8*)* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32 (i8*)*, i32 (i8*)** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 %40(i8* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32* null, i32** %8, align 8
  br label %63

44:                                               ; preds = %25
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* @XML_CHAR_ENCODING_NONE, align 4
  %48 = call i32* @xmlNewIOInputStream(i32* %45, i32* %46, i32 %47)
  store i32* %48, i32** %17, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @xmlFreeParserInputBuffer(i32* %52)
  store i32* null, i32** %8, align 8
  br label %63

54:                                               ; preds = %44
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 @inputPush(i32* %55, i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32* @xmlDoRead(i32* %58, i8* %59, i8* %60, i32 %61, i32 1)
  store i32* %62, i32** %8, align 8
  br label %63

63:                                               ; preds = %54, %51, %43, %24, %20
  %64 = load i32*, i32** %8, align 8
  ret i32* %64
}

declare dso_local i32 @xmlInitParser(...) #1

declare dso_local i32 @xmlCtxtReset(i32*) #1

declare dso_local i32* @xmlParserInputBufferCreateIO(i32*, i32 (i8*)*, i8*, i32) #1

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

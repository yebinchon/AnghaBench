; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateURLParserCtxt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_parser.c_xmlCreateURLParserCtxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"cannot allocate parser context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @xmlCreateURLParserCtxt(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  %9 = call %struct.TYPE_8__* (...) @xmlNewParserCtxt()
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @xmlErrMemory(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %60

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @xmlCtxtUseOptionsInternal(%struct.TYPE_8__* %18, i32 %19, i32* null)
  br label %21

21:                                               ; preds = %17, %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32* @xmlLoadExternalEntity(i8* %24, i32* null, %struct.TYPE_8__* %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = call i32 @xmlFreeParserCtxt(%struct.TYPE_8__* %30)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %60

32:                                               ; preds = %21
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @inputPush(%struct.TYPE_8__* %33, i32* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = call i8* @xmlParserGetDirectory(i8* %44)
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %40, %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %51, %46
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %3, align 8
  br label %60

60:                                               ; preds = %58, %29, %12
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %61
}

declare dso_local %struct.TYPE_8__* @xmlNewParserCtxt(...) #1

declare dso_local i32 @xmlErrMemory(i32*, i8*) #1

declare dso_local i32 @xmlCtxtUseOptionsInternal(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32* @xmlLoadExternalEntity(i8*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @xmlFreeParserCtxt(%struct.TYPE_8__*) #1

declare dso_local i32 @inputPush(%struct.TYPE_8__*, i32*) #1

declare dso_local i8* @xmlParserGetDirectory(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

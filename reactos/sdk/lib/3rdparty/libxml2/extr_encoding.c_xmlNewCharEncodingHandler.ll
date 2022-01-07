; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlNewCharEncodingHandler.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlNewCharEncodingHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32*, i32*, i32*, i32*, i32, i32 }

@XML_I18N_NO_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xmlNewCharEncodingHandler : no name !\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"xmlNewCharEncodingHandler : out of memory !\0A\00", align 1
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @xmlNewCharEncodingHandler(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [500 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @xmlGetEncodingAlias(i8* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @XML_I18N_NO_NAME, align 4
  %24 = call i32 @xmlEncodingErr(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %84

25:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 499
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @toupper(i8 signext %34)
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %50

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %26

50:                                               ; preds = %45, %26
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 %52
  store i8 0, i8* %53, align 1
  %54 = getelementptr inbounds [500 x i8], [500 x i8]* %10, i64 0, i64 0
  %55 = call i8* @xmlMemStrdup(i8* %54)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @xmlEncodingErrMemory(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %84

60:                                               ; preds = %50
  %61 = call i64 @xmlMalloc(i32 4)
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = icmp eq %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @xmlFree(i8* %66)
  %68 = call i32 @xmlEncodingErrMemory(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %84

69:                                               ; preds = %60
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = call i32 @memset(%struct.TYPE_5__* %70, i32 0, i32 4)
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = call i32 @xmlRegisterCharEncodingHandler(%struct.TYPE_5__* %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %4, align 8
  br label %84

84:                                               ; preds = %69, %65, %58, %22
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %85
}

declare dso_local i8* @xmlGetEncodingAlias(i8*) #1

declare dso_local i32 @xmlEncodingErr(i32, i8*, i32*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i8* @xmlMemStrdup(i8*) #1

declare dso_local i32 @xmlEncodingErrMemory(i8*) #1

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @xmlRegisterCharEncodingHandler(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmlparser.c_create_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmlparser.c_create_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_XMLParser30 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IXMLParser = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"IXMLParser is not available (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Expected 0 got %d\0A\00", align 1
@XMLFLAG_SAX = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Expected S_OK got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"expected NULL\0A\00", align 1
@thenodefactory = common dso_local global i32 0, align 4
@XMLPARSER_IDLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @create_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %2 to i8**
  %7 = call i64 @CoCreateInstance(i32* @CLSID_XMLParser30, i32* null, i32 %5, i32* @IID_IXMLParser, i8** %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = call i64 @FAILED(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @win_skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %113

14:                                               ; preds = %0
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @IXMLParser_GetFlags(i32* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i64, i64* @XMLFLAG_SAX, align 8
  %24 = call i64 @IXMLParser_SetFlags(i32* %22, i64 %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %1, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @IXMLParser_GetFlags(i32* %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @XMLFLAG_SAX, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @IXMLParser_GetFactory(i32* %39, i32** null)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* @E_INVALIDARG, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %1, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i64 @IXMLParser_GetFactory(i32* %47, i32** %3)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @IXMLParser_SetFactory(i32* %59, i32* @thenodefactory)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i64 @IXMLParser_GetFactory(i32* %67, i32** %3)
  store i64 %68, i64* %1, align 8
  %69 = load i64, i64* %1, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %1, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = icmp eq i32* %75, @thenodefactory
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32*, i32** %2, align 8
  %80 = call i64 @IXMLParser_SetInput(i32* %79, i32* null)
  store i64 %80, i64* %1, align 8
  %81 = load i64, i64* %1, align 8
  %82 = load i64, i64* @E_INVALIDARG, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %1, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i64 @IXMLParser_SetFactory(i32* %87, i32* null)
  store i64 %88, i64* %1, align 8
  %89 = load i64, i64* %1, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %1, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call i64 @IXMLParser_SetFlags(i32* %95, i64 0)
  store i64 %96, i64* %1, align 8
  %97 = load i64, i64* %1, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %1, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %2, align 8
  %104 = call i64 @IXMLParser_GetParserState(i32* %103)
  store i64 %104, i64* %1, align 8
  %105 = load i64, i64* %1, align 8
  %106 = load i64, i64* @XMLPARSER_IDLE, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %1, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @IXMLParser_Release(i32* %111)
  br label %113

113:                                              ; preds = %14, %11
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @win_skip(i8*, i64) #1

declare dso_local i64 @IXMLParser_GetFlags(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IXMLParser_SetFlags(i32*, i64) #1

declare dso_local i64 @IXMLParser_GetFactory(i32*, i32**) #1

declare dso_local i64 @IXMLParser_SetFactory(i32*, i32*) #1

declare dso_local i64 @IXMLParser_SetInput(i32*, i32*) #1

declare dso_local i64 @IXMLParser_GetParserState(i32*) #1

declare dso_local i32 @IXMLParser_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

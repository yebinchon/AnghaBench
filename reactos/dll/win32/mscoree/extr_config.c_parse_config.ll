; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_config.c_parse_config.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mscoree/extr_config.c_parse_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32*, i64, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@ConfigFileHandlerVtbl = common dso_local global i32 0, align 4
@ConfigFileHandlerErrorVtbl = common dso_local global i32 0, align 4
@STATE_ROOT = common dso_local global i32 0, align 4
@CLSID_SAXXMLReader = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ISAXXMLReader = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call %struct.TYPE_6__* @HeapAlloc(i32 %9, i32 0, i32 48)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %14, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32* @ConfigFileHandlerVtbl, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32* @ConfigFileHandlerErrorVtbl, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* @STATE_ROOT, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %35 = bitcast i32** %6 to i32*
  %36 = call i32 @CoCreateInstance(i32* @CLSID_SAXXMLReader, i32* null, i32 %34, i32* @IID_ISAXXMLReader, i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @SUCCEEDED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %15
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = call i32 @ISAXXMLReader_putContentHandler(i32* %41, %struct.TYPE_8__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @SUCCEEDED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = call i32 @ISAXXMLReader_putErrorHandler(i32* %49, %struct.TYPE_7__* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %40
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @SUCCEEDED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ISAXXMLReader_parse(i32* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @ISAXXMLReader_Release(i32* %62)
  br label %64

64:                                               ; preds = %61, %15
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = call i32 @ISAXContentHandler_Release(%struct.TYPE_8__* %66)
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_6__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ISAXXMLReader_putContentHandler(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ISAXXMLReader_putErrorHandler(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ISAXXMLReader_parse(i32*, i32) #1

declare dso_local i32 @ISAXXMLReader_Release(i32*) #1

declare dso_local i32 @ISAXContentHandler_Release(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

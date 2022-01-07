; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_persiststream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_persiststream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IXMLDOMDocument = common dso_local global i32 0, align 4
@IID_IPersistStreamInit = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@IID_IPersistStream = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@IID_IPersist = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@E_POINTER = common dso_local global i64 0, align 8
@CLSID_DOMDocument2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong clsid %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_persiststream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_persiststream() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i32* @create_document(i32* @IID_IXMLDOMDocument)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = bitcast i32** %1 to i8**
  %11 = call i64 @IXMLDOMDocument_QueryInterface(i32* %9, i32* @IID_IPersistStreamInit, i8** %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i32, i8*, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i64 @IPersistStreamInit_InitNew(i32* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %6, align 8
  %25 = call i32 (i32, i8*, i64, ...) @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i64 @IPersistStreamInit_GetSizeMax(i32* %26, i32* %4)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @E_NOTIMPL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = bitcast i32** %2 to i8**
  %36 = call i64 @IXMLDOMDocument_QueryInterface(i32* %34, i32* @IID_IPersistStream, i8** %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %6, align 8
  %42 = call i32 (i32, i8*, i64, ...) @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32*, i32** %1, align 8
  %45 = icmp eq i32* %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %2, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 (i32, i8*, i64, ...) @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %48, i32* %49)
  %51 = load i32*, i32** %2, align 8
  %52 = bitcast i32** %5 to i8**
  %53 = call i64 @IPersistStream_QueryInterface(i32* %51, i32* @IID_IPersist, i8** %52)
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @E_NOINTERFACE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %6, align 8
  %59 = call i32 (i32, i8*, i64, ...) @ok(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = bitcast i32** %5 to i8**
  %62 = call i64 @IXMLDOMDocument_QueryInterface(i32* %60, i32* @IID_IPersist, i8** %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @E_NOINTERFACE, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %6, align 8
  %68 = call i32 (i32, i8*, i64, ...) @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = call i64 @IPersistStreamInit_GetClassID(i32* %69, i32* null)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @E_POINTER, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i32, i8*, i64, ...) @ok(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = call i32 @memset(i32* %7, i32 0, i32 4)
  %78 = load i32*, i32** %1, align 8
  %79 = call i64 @IPersistStreamInit_GetClassID(i32* %78, i32* %7)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %6, align 8
  %85 = call i32 (i32, i8*, i64, ...) @ok(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = call i32 @IsEqualGUID(i32* %7, i32* @CLSID_DOMDocument2)
  %87 = call i64 @wine_dbgstr_guid(i32* %7)
  %88 = call i32 (i32, i8*, i64, ...) @ok(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @IPersistStream_Release(i32* %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @IPersistStreamInit_Release(i32* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @IXMLDOMDocument_Release(i32* %93)
  ret void
}

declare dso_local i32* @create_document(i32*) #1

declare dso_local i64 @IXMLDOMDocument_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @IPersistStreamInit_InitNew(i32*) #1

declare dso_local i64 @IPersistStreamInit_GetSizeMax(i32*, i32*) #1

declare dso_local i64 @IPersistStream_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IPersistStreamInit_GetClassID(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i64 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

declare dso_local i32 @IPersistStreamInit_Release(i32*) #1

declare dso_local i32 @IXMLDOMDocument_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

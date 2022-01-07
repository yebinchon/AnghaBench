; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@test_QueryInterface.IID_UndocumentedScriptIface = internal constant %struct.TYPE_14__ { i32 1906061392, i32 63955, i32 4559, %struct.TYPE_13__ { i32 164, i32 147, i32 0, i32 64, i32 5, i32 35, i32 168, i32 160 } }, align 4
@IID_IRunnableObject = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"QueryInterface returned %08x, expected E_NOINTERFACE\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"qirunnable=%p, expected NULL\0A\00", align 1
@IID_IHTMLDOMNode = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"qi=%p, expected NULL\0A\00", align 1
@IID_IHTMLDOMNode2 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@IID_IPersistPropertyBag = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@IID_IMarshal = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@IID_IExternalConnection = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@IID_IStdMarshalInfo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@IID_ITargetFrame = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@IID_IDispatch = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not get IDispatch interface: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"disp == doc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_QueryInterface(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  store i32* %6, i32** %4, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32** %3 to i8**
  %9 = call i32 @IUnknown_QueryInterface(i32* %7, %struct.TYPE_14__* @IID_IRunnableObject, i8** %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @E_NOINTERFACE, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %19)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32** %3 to i8**
  %23 = call i32 @IUnknown_QueryInterface(i32* %21, %struct.TYPE_14__* @IID_IHTMLDOMNode, i8** %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @E_NOINTERFACE, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast i32** %3 to i8**
  %37 = call i32 @IUnknown_QueryInterface(i32* %35, %struct.TYPE_14__* @IID_IHTMLDOMNode2, i8** %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @E_NOINTERFACE, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %47)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = bitcast i32** %3 to i8**
  %51 = call i32 @IUnknown_QueryInterface(i32* %49, %struct.TYPE_14__* @IID_IPersistPropertyBag, i8** %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @E_NOINTERFACE, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %61)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = bitcast i32** %3 to i8**
  %65 = call i32 @IUnknown_QueryInterface(i32* %63, %struct.TYPE_14__* @test_QueryInterface.IID_UndocumentedScriptIface, i8** %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @E_NOINTERFACE, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %3, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %75)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = bitcast i32** %3 to i8**
  %79 = call i32 @IUnknown_QueryInterface(i32* %77, %struct.TYPE_14__* @IID_IMarshal, i8** %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @E_NOINTERFACE, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = icmp eq i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %89)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = bitcast i32** %3 to i8**
  %93 = call i32 @IUnknown_QueryInterface(i32* %91, %struct.TYPE_14__* @IID_IExternalConnection, i8** %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @E_NOINTERFACE, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %103)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = bitcast i32** %3 to i8**
  %107 = call i32 @IUnknown_QueryInterface(i32* %105, %struct.TYPE_14__* @IID_IStdMarshalInfo, i8** %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @E_NOINTERFACE, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %3, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %117)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = bitcast i32** %3 to i8**
  %121 = call i32 @IUnknown_QueryInterface(i32* %119, %struct.TYPE_14__* @IID_ITargetFrame, i8** %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @E_NOINTERFACE, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %5, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %3, align 8
  %129 = icmp eq i32* %128, null
  %130 = zext i1 %129 to i32
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = bitcast i32** %3 to i8**
  %135 = call i32 @IUnknown_QueryInterface(i32* %133, %struct.TYPE_14__* @IID_IDispatch, i8** %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @S_OK, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %5, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = icmp ne i32* %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @IUnknown_Release(i32* %147)
  ret void
}

declare dso_local i32 @IUnknown_QueryInterface(i32*, %struct.TYPE_14__*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

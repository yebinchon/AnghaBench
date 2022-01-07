; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_create_nsxhr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_create_nsxhr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pServMgr = common dso_local global i32 0, align 4
@NS_SCRIPTSECURITYMANAGER_CONTRACTID = common dso_local global i32 0, align 4
@IID_nsIScriptSecurityManager = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Could not get sec manager service: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"GetSystemPrincipal failed: %08x\0A\00", align 1
@IID_nsIGlobalObject = common dso_local global i32 0, align 4
@NS_OK = common dso_local global i64 0, align 8
@pCompMgr = common dso_local global i32 0, align 4
@NS_XMLHTTPREQUEST_CONTRACTID = common dso_local global i32 0, align 4
@IID_nsIXMLHttpRequest = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not get nsIXMLHttpRequest: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"nsIXMLHttpRequest_Init failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @create_nsxhr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @pServMgr, align 4
  %10 = load i32, i32* @NS_SCRIPTSECURITYMANAGER_CONTRACTID, align 4
  %11 = bitcast i32** %4 to i8**
  %12 = call i64 @nsIServiceManager_GetServiceByContractID(i32 %9, i32 %10, i32* @IID_nsIScriptSecurityManager, i8** %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @NS_FAILED(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32* null, i32** %2, align 8
  br label %72

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @nsIScriptSecurityManager_GetSystemPrincipal(i32* %20, i32** %5)
  store i64 %21, i64* %8, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @nsIScriptSecurityManager_Release(i32* %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @NS_FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  store i32* null, i32** %2, align 8
  br label %72

30:                                               ; preds = %19
  %31 = load i32*, i32** %3, align 8
  %32 = bitcast i32** %6 to i8**
  %33 = call i64 @nsIDOMWindow_QueryInterface(i32* %31, i32* @IID_nsIGlobalObject, i8** %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @NS_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @pCompMgr, align 4
  %40 = load i32, i32* @NS_XMLHTTPREQUEST_CONTRACTID, align 4
  %41 = bitcast i32** %7 to i8**
  %42 = call i64 @nsIComponentManager_CreateInstanceByContractID(i32 %39, i32 %40, i32* null, i32* @IID_nsIXMLHttpRequest, i8** %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @NS_FAILED(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @nsISupports_Release(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @nsIGlobalObject_Release(i32* %51)
  store i32* null, i32** %2, align 8
  br label %72

53:                                               ; preds = %30
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i64 @nsIXMLHttpRequest_Init(i32* %54, i32* %55, i32* null, i32* %56, i32* null, i32* null)
  store i64 %57, i64* %8, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @nsISupports_Release(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @nsIGlobalObject_Release(i32* %60)
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @NS_FAILED(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %53
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @nsIXMLHttpRequest_Release(i32* %68)
  store i32* null, i32** %2, align 8
  br label %72

70:                                               ; preds = %53
  %71 = load i32*, i32** %7, align 8
  store i32* %71, i32** %2, align 8
  br label %72

72:                                               ; preds = %70, %65, %46, %27, %16
  %73 = load i32*, i32** %2, align 8
  ret i32* %73
}

declare dso_local i64 @nsIServiceManager_GetServiceByContractID(i32, i32, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @nsIScriptSecurityManager_GetSystemPrincipal(i32*, i32**) #1

declare dso_local i32 @nsIScriptSecurityManager_Release(i32*) #1

declare dso_local i64 @nsIDOMWindow_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsIComponentManager_CreateInstanceByContractID(i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @nsISupports_Release(i32*) #1

declare dso_local i32 @nsIGlobalObject_Release(i32*) #1

declare dso_local i64 @nsIXMLHttpRequest_Init(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nsIXMLHttpRequest_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

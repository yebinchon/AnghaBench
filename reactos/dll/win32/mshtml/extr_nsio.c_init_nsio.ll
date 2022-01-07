; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_init_nsio.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_init_nsio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_IOSERVICE_CID = common dso_local global i32 0, align 4
@IID_nsIFactory = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not get factory: %08x\0A\00", align 1
@IID_nsIIOService = common dso_local global i32 0, align 4
@nsio = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Couldn not create nsIOService instance %08x\0A\00", align 1
@IID_nsINetUtil = common dso_local global i32 0, align 4
@net_util = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not get nsINetUtil interface: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"UnregisterFactory failed: %08x\0A\00", align 1
@NS_IOSERVICE_CLASSNAME = common dso_local global i32 0, align 4
@NS_IOSERVICE_CONTRACTID = common dso_local global i32 0, align 4
@nsIOServiceFactory = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"RegisterFactory failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_nsio(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32** %5 to i8**
  %9 = call i32 @nsIComponentManager_GetClassObject(i32* %7, i32* @NS_IOSERVICE_CID, i32* @IID_nsIFactory, i8** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @NS_FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %61

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @nsIFactory_CreateInstance(i32* %17, i32* null, i32* @IID_nsIIOService, i8** bitcast (i32* @nsio to i8**))
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @NS_FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @nsIFactory_Release(i32* %25)
  br label %61

27:                                               ; preds = %16
  %28 = load i32, i32* @nsio, align 4
  %29 = call i32 @nsIIOService_QueryInterface(i32 %28, i32* @IID_nsINetUtil, i8** bitcast (i32* @net_util to i8**))
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @NS_FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @nsio, align 4
  %37 = call i32 @nsIIOService_Release(i32 %36)
  br label %61

38:                                               ; preds = %27
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @nsIComponentRegistrar_UnregisterFactory(i32* %39, i32* @NS_IOSERVICE_CID, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @nsIFactory_Release(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @NS_FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @NS_IOSERVICE_CLASSNAME, align 4
  %53 = load i32, i32* @NS_IOSERVICE_CONTRACTID, align 4
  %54 = call i32 @nsIComponentRegistrar_RegisterFactory(i32* %51, i32* @NS_IOSERVICE_CID, i32 %52, i32 %53, i32* @nsIOServiceFactory)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @NS_FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %13, %22, %33, %58, %50
  ret void
}

declare dso_local i32 @nsIComponentManager_GetClassObject(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @nsIFactory_Release(i32*) #1

declare dso_local i32 @nsIIOService_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @nsIIOService_Release(i32) #1

declare dso_local i32 @nsIComponentRegistrar_UnregisterFactory(i32*, i32*, i32*) #1

declare dso_local i32 @nsIComponentRegistrar_RegisterFactory(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

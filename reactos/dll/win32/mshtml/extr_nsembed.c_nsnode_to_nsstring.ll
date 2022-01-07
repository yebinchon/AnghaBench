; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_nsnode_to_nsstring.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsembed.c_nsnode_to_nsstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pCompMgr = common dso_local global i32 0, align 4
@NS_HTMLSERIALIZER_CONTRACTID = common dso_local global i32 0, align 4
@IID_nsIContentSerializer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not get nsIContentSerializer: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Init failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Flush failed: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsnode_to_nsstring(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @pCompMgr, align 4
  %10 = load i32, i32* @NS_HTMLSERIALIZER_CONTRACTID, align 4
  %11 = bitcast i32** %6 to i8**
  %12 = call i32 @nsIComponentManager_CreateInstanceByContractID(i32 %9, i32 %10, i32* null, i32* @IID_nsIContentSerializer, i8** %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @NS_FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @E_FAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @nsIContentSerializer_Init(i32* %21, i32 0, i32 100, i32* null, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @NS_FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @nsnode_to_nsstring_rec(i32* %32, i32* %33, i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @SUCCEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %31
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @nsIContentSerializer_Flush(i32* %40, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @NS_FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %39
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @nsIContentSerializer_Release(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @nsIComponentManager_CreateInstanceByContractID(i32, i32, i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsIContentSerializer_Init(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nsnode_to_nsstring_rec(i32*, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @nsIContentSerializer_Flush(i32*, i32*) #1

declare dso_local i32 @nsIContentSerializer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

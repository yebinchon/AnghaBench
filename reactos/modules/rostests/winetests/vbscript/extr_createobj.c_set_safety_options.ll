; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_createobj.c_set_safety_options.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_createobj.c_set_safety_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IObjectSafety = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Could not get IObjectSafety: %08x\0A\00", align 1
@INTERFACESAFE_FOR_UNTRUSTED_DATA = common dso_local global i32 0, align 4
@INTERFACE_USES_DISPEX = common dso_local global i32 0, align 4
@INTERFACE_USES_SECURITY_MANAGER = common dso_local global i32 0, align 4
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SetInterfaceSafetyOptions failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"GetInterfaceSafetyOptions failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"supported=%x, expected %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"enabled=%x, expected %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @set_safety_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_safety_options(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32** %5 to i8**
  %13 = call i64 @IUnknown_QueryInterface(i32* %11, i32* @IID_IObjectSafety, i8** %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %10, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @FAILED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %74

25:                                               ; preds = %2
  %26 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %27 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %9, align 4
  br label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @IObjectSafety_SetInterfaceSafetyOptions(i32* %38, i32* @IID_IActiveScriptParse, i32 %39, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @S_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 -559038737, i32* %7, align 4
  store i32 -559038737, i32* %6, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @IObjectSafety_GetInterfaceSafetyOptions(i32* %49, i32* @IID_IActiveScriptParse, i32* %6, i32* %7)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %10, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @IObjectSafety_Release(i32* %72)
  br label %74

74:                                               ; preds = %37, %24
  ret void
}

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IObjectSafety_SetInterfaceSafetyOptions(i32*, i32*, i32, i32) #1

declare dso_local i64 @IObjectSafety_GetInterfaceSafetyOptions(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IObjectSafety_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

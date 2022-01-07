; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_cocreateinstance_proxy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_cocreateinstance_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@CLSID_ShellDesktop = common dso_local global i32 0, align 4
@CLSCTX_INPROC = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@IID_IMultiQI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"created object is not a proxy, so was created in the wrong apartment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_cocreateinstance_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_cocreateinstance_proxy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %5 = call i32 @pCoInitializeEx(i32* null, i32 %4)
  %6 = load i32, i32* @CLSCTX_INPROC, align 4
  %7 = bitcast i32** %1 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_ShellDesktop, i32* null, i32 %6, i32* @IID_IUnknown, i8** %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @ok_ole_success(i64 %9, i64 (i32*, i32*, i32, i32*, i8**)* @CoCreateInstance)
  %11 = load i32*, i32** %1, align 8
  %12 = bitcast i32** %2 to i8**
  %13 = call i64 @IUnknown_QueryInterface(i32* %11, i32* @IID_IMultiQI, i8** %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @IMultiQI_Release(i32* %23)
  br label %25

25:                                               ; preds = %22, %0
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @IUnknown_Release(i32* %26)
  %28 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i32 @pCoInitializeEx(i32*, i32) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok_ole_success(i64, i64 (i32*, i32*, i32, i32*, i8**)*) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @IMultiQI_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

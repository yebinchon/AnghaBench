; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_inproc_handler.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_inproc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@CLSID_WineTest = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"CoCreateInstance\00", align 1
@IID_IWineTest = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"IUnknown_QueryInterface on handler for invalid interface returned 0x%08x instead of E_NOINTERFACE\0A\00", align 1
@IID_IOleObject = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"IUnknown_QueryInterface(&IID_IOleObject)\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_inproc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_inproc_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @TRUE, align 4
  %5 = call i32 @reg_unreg_wine_test_class(i32 %4)
  %6 = call i64 @FAILED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %40

9:                                                ; preds = %0
  %10 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %11 = bitcast i32** %2 to i8**
  %12 = call i32 @CoCreateInstance(i32* @CLSID_WineTest, i32* null, i32 %10, i32* @IID_IUnknown, i8** %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @ok_ole_success(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @SUCCEEDED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %9
  %19 = load i32*, i32** %2, align 8
  %20 = bitcast i32** %3 to i8**
  %21 = call i32 @IUnknown_QueryInterface(i32* %19, i32* @IID_IWineTest, i8** %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @E_NOINTERFACE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = bitcast i32** %3 to i8**
  %30 = call i32 @IUnknown_QueryInterface(i32* %28, i32* @IID_IOleObject, i8** %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @ok_ole_success(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @IUnknown_Release(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @IUnknown_Release(i32* %35)
  br label %37

37:                                               ; preds = %18, %9
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @reg_unreg_wine_test_class(i32 %38)
  br label %40

40:                                               ; preds = %37, %8
  ret void
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reg_unreg_wine_test_class(i32) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

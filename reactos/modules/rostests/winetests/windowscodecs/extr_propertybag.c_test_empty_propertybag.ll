; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_propertybag.c_test_empty_propertybag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_propertybag.c_test_empty_propertybag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_WICImagingFactory = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IWICComponentFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"CoCreateInstance failed, hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Creating EncoderPropertyBag failed, hr=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_propertybag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_propertybag() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %5 = bitcast i32** %2 to i8**
  %6 = call i64 @CoCreateInstance(i32* @CLSID_WICImagingFactory, i32* null, i32 %4, i32* @IID_IWICComponentFactory, i8** %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @IWICComponentFactory_CreateEncoderPropertyBag(i32* %13, i32* null, i32 0, i32** %3)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %1, align 8
  %22 = call i64 @FAILED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  br label %34

25:                                               ; preds = %0
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @test_propertybag_countproperties(i32* %26, i32 0)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @test_propertybag_getpropertyinfo(i32* %28, i32 0)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @IPropertyBag2_Release(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @IWICComponentFactory_Release(i32* %32)
  br label %34

34:                                               ; preds = %25, %24
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IWICComponentFactory_CreateEncoderPropertyBag(i32*, i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @test_propertybag_countproperties(i32*, i32) #1

declare dso_local i32 @test_propertybag_getpropertyinfo(i32*, i32) #1

declare dso_local i32 @IPropertyBag2_Release(i32*) #1

declare dso_local i32 @IWICComponentFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_propertybag.c_test_filled_propertybag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_propertybag.c_test_filled_propertybag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@PROPBAG2_TYPE_DATA = common dso_local global i32 0, align 4
@VT_UI1 = common dso_local global i32 0, align 4
@wszTestProperty1 = common dso_local global i32 0, align 4
@VT_R4 = common dso_local global i32 0, align 4
@wszTestProperty2 = common dso_local global i32 0, align 4
@CLSID_WICImagingFactory = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IWICComponentFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"CoCreateInstance failed, hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Creating EncoderPropertyBag failed, hr=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filled_propertybag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filled_propertybag() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [2 x %struct.TYPE_5__], align 16
  %5 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* @PROPBAG2_TYPE_DATA, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %10 = load i32, i32* @VT_UI1, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %14 = load i32, i32* @wszTestProperty1, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i64 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* @PROPBAG2_TYPE_DATA, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %21 = load i32, i32* @VT_R4, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %25 = load i32, i32* @wszTestProperty2, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %28 = bitcast i32** %2 to i8**
  %29 = call i64 @CoCreateInstance(i32* @CLSID_WICImagingFactory, i32* null, i32 %27, i32* @IID_IWICComponentFactory, i8** %28)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %38 = call i64 @IWICComponentFactory_CreateEncoderPropertyBag(i32* %36, %struct.TYPE_5__* %37, i32 2, i32** %3)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %1, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %0
  br label %62

49:                                               ; preds = %0
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @test_propertybag_countproperties(i32* %50, i32 2)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @test_propertybag_getpropertyinfo(i32* %52, i32 2)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @test_propertybag_write(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @test_propertybag_read(i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @IPropertyBag2_Release(i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @IWICComponentFactory_Release(i32* %60)
  br label %62

62:                                               ; preds = %49, %48
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IWICComponentFactory_CreateEncoderPropertyBag(i32*, %struct.TYPE_5__*, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @test_propertybag_countproperties(i32*, i32) #1

declare dso_local i32 @test_propertybag_getpropertyinfo(i32*, i32) #1

declare dso_local i32 @test_propertybag_write(i32*) #1

declare dso_local i32 @test_propertybag_read(i32*) #1

declare dso_local i32 @IPropertyBag2_Release(i32*) #1

declare dso_local i32 @IWICComponentFactory_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

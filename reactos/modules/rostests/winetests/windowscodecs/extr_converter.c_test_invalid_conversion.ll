; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_invalid_conversion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/windowscodecs/extr_converter.c_test_invalid_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@testdata_32bppBGRA = common dso_local global i32 0, align 4
@GUID_VendorMicrosoft = common dso_local global i32 0, align 4
@WINCODEC_ERR_COMPONENTNOTFOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"WICConvertBitmapSource returned %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invalid_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invalid_conversion() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @CreateTestBitmap(i32* @testdata_32bppBGRA, %struct.TYPE_4__** %1)
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = call i64 @WICConvertBitmapSource(i32* @GUID_VendorMicrosoft, i32* %6, i32** %2)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @WINCODEC_ERR_COMPONENTNOTFOUND, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = call i32 @DeleteTestBitmap(%struct.TYPE_4__* %14)
  ret void
}

declare dso_local i32 @CreateTestBitmap(i32*, %struct.TYPE_4__**) #1

declare dso_local i64 @WICConvertBitmapSource(i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @DeleteTestBitmap(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

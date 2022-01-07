; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxwriter_dispex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_mxwriter_dispex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_MXXMLWriter = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IMXWriter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_IDispatchEx = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@CLSID_MXXMLWriter60 = common dso_local global i32 0, align 4
@mxwriter_support_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mxwriter_dispex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mxwriter_dispex() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = bitcast i32** %2 to i8**
  %7 = call i32 @CoCreateInstance(i32* @CLSID_MXXMLWriter, i32* null, i32 %5, i32* @IID_IMXWriter, i8** %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @S_OK, align 4
  %10 = call i32 @EXPECT_HR(i32 %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast i32** %1 to i8**
  %13 = call i32 @IMXWriter_QueryInterface(i32* %11, i32* @IID_IDispatchEx, i8** %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = call i32 @EXPECT_HR(i32 %14, i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = bitcast i32** %3 to i8**
  %19 = call i32 @IDispatchEx_QueryInterface(i32* %17, i32* @IID_IUnknown, i8** %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @test_obj_dispex(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @IUnknown_Release(i32* %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @IDispatchEx_Release(i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @IMXWriter_Release(i32* %26)
  %28 = load i32, i32* @mxwriter_support_data, align 4
  %29 = call i64 @is_clsid_supported(i32* @CLSID_MXXMLWriter60, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %0
  %32 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %33 = bitcast i32** %3 to i8**
  %34 = call i32 @CoCreateInstance(i32* @CLSID_MXXMLWriter60, i32* null, i32 %32, i32* @IID_IUnknown, i8** %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @test_obj_dispex(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @IUnknown_Release(i32* %43)
  br label %45

45:                                               ; preds = %31, %0
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IMXWriter_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IDispatchEx_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @test_obj_dispex(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i32 @IMXWriter_Release(i32*) #1

declare dso_local i64 @is_clsid_supported(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

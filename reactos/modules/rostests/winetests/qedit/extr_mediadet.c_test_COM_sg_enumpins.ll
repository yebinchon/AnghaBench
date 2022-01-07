; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qedit/extr_mediadet.c_test_COM_sg_enumpins.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qedit/extr_mediadet.c_test_COM_sg_enumpins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_SampleGrabber = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IBaseFilter = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SampleGrabber create failed: %08x, expected S_OK\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"EnumPins create failed: %08x, expected S_OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 2\0A\00", align 1
@IID_IEnumPins = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"QueryInterface for IID_IEnumPins failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"QueryInterface for self failed (%p != %p)\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"QueryInterface for IID_IUnknown failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"refcount == %u, expected 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_COM_sg_enumpins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_COM_sg_enumpins() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %8 = bitcast i32** %1 to i8**
  %9 = call i32 @CoCreateInstance(i32* @CLSID_SampleGrabber, i32* null, i32 %7, i32* @IID_IBaseFilter, i8** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @S_OK, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32, i8*, i32, ...) @ok(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @IBaseFilter_EnumPins(i32* %16, i32** %2)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @IEnumPins_AddRef(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = bitcast i32** %3 to i8**
  %33 = call i32 @IEnumPins_QueryInterface(i32* %31, i32* @IID_IEnumPins, i8** %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i8*, i32, ...) @ok(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = icmp eq i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %2, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %45, i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @IEnumPins_Release(i32* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = bitcast i32** %4 to i8**
  %52 = call i32 @IEnumPins_QueryInterface(i32* %50, i32* @IID_IUnknown, i8** %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @IUnknown_AddRef(i32* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 4
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @IUnknown_Release(i32* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %72, %0
  %69 = load i32*, i32** %2, align 8
  %70 = call i64 @IEnumPins_Release(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %68

73:                                               ; preds = %68
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @IBaseFilter_Release(i32* %74)
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IBaseFilter_EnumPins(i32*, i32**) #1

declare dso_local i32 @IEnumPins_AddRef(i32*) #1

declare dso_local i32 @IEnumPins_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IEnumPins_Release(i32*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

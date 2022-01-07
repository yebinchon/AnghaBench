; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_default_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c_test_default_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@properties_test_data = common dso_local global %struct.TYPE_3__* null, align 8
@IID_IXMLDOMDocument2 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"expected %s, for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_default_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_default_properties() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @properties_test_data, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %1, align 8
  br label %6

6:                                                ; preds = %20, %17, %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @is_clsid_supported(i64 %14, i32* @IID_IXMLDOMDocument2)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 1
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %1, align 8
  br label %6

20:                                               ; preds = %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %25 = bitcast i32** %2 to i8**
  %26 = call i64 @CoCreateInstance(i64 %23, i32* null, i32 %24, i32* @IID_IXMLDOMDocument2, i8** %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @_bstr_(i32 %36)
  %38 = call i64 @IXMLDOMDocument2_getProperty(i32* %33, i32 %37, i32* %3)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = call i32 @V_BSTR(i32* %3)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @_bstr_(i32 %48)
  %50 = call i64 @lstrcmpW(i32 %45, i32 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, i64, ...) @ok(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %59)
  %61 = call i32 @VariantClear(i32* %3)
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @IXMLDOMDocument2_Release(i32* %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 1
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %1, align 8
  br label %6

66:                                               ; preds = %6
  ret void
}

declare dso_local i32 @is_clsid_supported(i64, i32*) #1

declare dso_local i64 @CoCreateInstance(i64, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @IXMLDOMDocument2_getProperty(i32*, i32, i32*) #1

declare dso_local i32 @_bstr_(i32) #1

declare dso_local i64 @lstrcmpW(i32, i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IXMLDOMDocument2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_OleCreateFontIndirect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_OleCreateFontIndirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@arial_font = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IID_IFont = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@CLSID_StdFont = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OleCreateFontIndirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OleCreateFontIndirect() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 48, i32* %6, align 8
  %7 = load i32, i32* @arial_font, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 7
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 120000, i32* %10, align 8
  %11 = load i32, i32* @FW_NORMAL, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 5
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @ANSI_CHARSET, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 4
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = bitcast i32** %4 to i8**
  %22 = call i64 @pOleCreateFontIndirect(%struct.TYPE_5__* %1, i32* @IID_IFont, i8** %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = call i32 @EXPECT_HR(i64 %23, i64 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @IFont_Release(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 47, i32* %28, align 8
  %29 = bitcast i32** %4 to i8**
  %30 = call i64 @pOleCreateFontIndirect(%struct.TYPE_5__* %1, i32* @IID_IFont, i8** %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = call i32 @EXPECT_HR(i64 %31, i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @IFont_Release(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 49, i32* %36, align 8
  %37 = bitcast i32** %4 to i8**
  %38 = call i64 @pOleCreateFontIndirect(%struct.TYPE_5__* %1, i32* @IID_IFont, i8** %37)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = call i32 @EXPECT_HR(i64 %39, i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @IFont_Release(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = bitcast i32** %4 to i8**
  %46 = call i64 @pOleCreateFontIndirect(%struct.TYPE_5__* %1, i32* @IID_IFont, i8** %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = call i32 @EXPECT_HR(i64 %47, i64 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @IFont_Release(i32* %50)
  %52 = call i64 @OleInitialize(i32* null)
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %60 = bitcast i32** %2 to i8**
  %61 = call i64 @CoGetClassObject(i32* @CLSID_StdFont, i32 %59, i32* null, i32* @IID_IClassFactory, i8** %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = bitcast i32** %3 to i8**
  %70 = call i64 @IUnknown_QueryInterface(i32* %68, i32* @IID_IUnknown, i8** %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @IUnknown_Release(i32* %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @IUnknown_Release(i32* %79)
  %81 = call i32 (...) @OleUninitialize()
  ret void
}

declare dso_local i64 @pOleCreateFontIndirect(%struct.TYPE_5__*, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i64, i64) #1

declare dso_local i32 @IFont_Release(i32*) #1

declare dso_local i64 @OleInitialize(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @OleUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_returns.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_returns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MSSansSerif_font = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@IID_IFont = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@CTL_E_INVALIDPROPERTYVALUE = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_returns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_returns() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 56, i32* %4, align 8
  %5 = load i32, i32* @MSSansSerif_font, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 120000, i32* %8, align 4
  %9 = load i32, i32* @FW_NORMAL, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** @FALSE, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** @FALSE, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @FALSE, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = bitcast i32** %1 to i8**
  %19 = call i32 @pOleCreateFontIndirect(%struct.TYPE_5__* %2, i32* @IID_IFont, i8** %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @S_OK, align 4
  %22 = call i32 @EXPECT_HR(i32 %20, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @IFont_put_Name(i32* %23, i32* null)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CTL_E_INVALIDPROPERTYVALUE, align 4
  %27 = call i32 @EXPECT_HR(i32 %25, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @IFont_get_Name(i32* %28, i32* null)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @E_POINTER, align 4
  %32 = call i32 @EXPECT_HR(i32 %30, i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @IFont_get_Size(i32* %33, i32* null)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @E_POINTER, align 4
  %37 = call i32 @EXPECT_HR(i32 %35, i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @IFont_get_Bold(i32* %38, i32* null)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @E_POINTER, align 4
  %42 = call i32 @EXPECT_HR(i32 %40, i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @IFont_Release(i32* %43)
  ret void
}

declare dso_local i32 @pOleCreateFontIndirect(%struct.TYPE_5__*, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IFont_put_Name(i32*, i32*) #1

declare dso_local i32 @IFont_get_Name(i32*, i32*) #1

declare dso_local i32 @IFont_get_Size(i32*, i32*) #1

declare dso_local i32 @IFont_get_Bold(i32*, i32*) #1

declare dso_local i32 @IFont_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

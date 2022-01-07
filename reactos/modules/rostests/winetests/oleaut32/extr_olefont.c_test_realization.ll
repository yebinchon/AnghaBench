; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_realization.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_olefont.c_test_realization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@marlett_font = common dso_local global i32 0, align 4
@FW_NORMAL = common dso_local global i32 0, align 4
@ANSI_CHARSET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@IID_IFont = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"got charset %d\0A\00", align 1
@arial_font = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"got name %s\0A\00", align 1
@SYMBOL_CHARSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_realization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_realization() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 48, i32* %6, align 8
  %7 = load i32, i32* @marlett_font, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 120000, i32* %10, align 4
  %11 = load i32, i32* @FW_NORMAL, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  store i32 %11, i32* %12, align 8
  %13 = load i64, i64* @ANSI_CHARSET, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  store i64 %13, i64* %14, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = bitcast i32** %1 to i8**
  %22 = call i32 @pOleCreateFontIndirect(%struct.TYPE_5__* %2, i32* @IID_IFont, i8** %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = call i32 @EXPECT_HR(i32 %23, i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @IFont_get_Charset(i32* %26, i64* %5)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @S_OK, align 4
  %30 = call i32 @EXPECT_HR(i32 %28, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ANSI_CHARSET, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @IFont_Release(i32* %37)
  %39 = load i32, i32* @arial_font, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = bitcast i32** %1 to i8**
  %42 = call i32 @pOleCreateFontIndirect(%struct.TYPE_5__* %2, i32* @IID_IFont, i8** %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = call i32 @EXPECT_HR(i32 %43, i32 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @IFont_get_Charset(i32* %46, i64* %5)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = call i32 @EXPECT_HR(i32 %48, i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @ANSI_CHARSET, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @marlett_font, align 4
  %58 = call i32 @SysAllocString(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32*, i32** %1, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @IFont_put_Name(i32* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = call i32 @EXPECT_HR(i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @SysFreeString(i32 %65)
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @IFont_get_Name(i32* %67, i32* %4)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @S_OK, align 4
  %71 = call i32 @EXPECT_HR(i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @marlett_font, align 4
  %74 = call i32 @lstrcmpiW(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = call i64 @wine_dbgstr_w(i32 %78)
  %80 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @SysFreeString(i32 %81)
  %83 = load i32*, i32** %1, align 8
  %84 = call i32 @IFont_get_Charset(i32* %83, i64* %5)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @S_OK, align 4
  %87 = call i32 @EXPECT_HR(i32 %85, i32 %86)
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @SYMBOL_CHARSET, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @IFont_Release(i32* %94)
  ret void
}

declare dso_local i32 @pOleCreateFontIndirect(%struct.TYPE_5__*, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32, i32) #1

declare dso_local i32 @IFont_get_Charset(i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IFont_Release(i32*) #1

declare dso_local i32 @SysAllocString(i32) #1

declare dso_local i32 @IFont_put_Name(i32*, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @IFont_get_Name(i32*, i32*) #1

declare dso_local i32 @lstrcmpiW(i32, i32) #1

declare dso_local i64 @wine_dbgstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

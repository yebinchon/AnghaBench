; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiDoPalette.c_Test_NtGdiDoPalette_GdiPalSetEntries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiDoPalette.c_Test_NtGdiDoPalette_GdiPalSetEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.Test_NtGdiDoPalette_GdiPalSetEntries.palEntries = private unnamed_addr constant [5 x %struct.TYPE_6__] [%struct.TYPE_6__ zeroinitializer, %struct.TYPE_6__ { i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ { i32 51, i32 102, i32 153, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ { i32 37, i32 132, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_6__ { i32 18, i32 52, i32 86, i32 17, i32 0, i32 0, i32 0, i32 0 }], align 16
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@GdiPalSetEntries = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GdiPalGetEntries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_NtGdiDoPalette_GdiPalSetEntries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [5 x %struct.TYPE_6__], align 16
  %5 = alloca [5 x %struct.TYPE_6__], align 16
  %6 = bitcast [5 x %struct.TYPE_6__]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([5 x %struct.TYPE_6__]* @__const.Test_NtGdiDoPalette_GdiPalSetEntries.palEntries to i8*), i64 160, i1 false)
  %7 = call i64 (...) @CreateTestPalette()
  store i64 %7, i64* %2, align 8
  %8 = load i32, i32* @ERROR_SUCCESS, align 4
  %9 = call i32 @SetLastError(i32 %8)
  %10 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %11 = load i32, i32* @GdiPalSetEntries, align 4
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @NtGdiDoPalette(i64 23, i32 0, i32 1, %struct.TYPE_6__* %10, i32 %11, i32 %12)
  %14 = call i32 @ok_long(i32 %13, i32 0)
  %15 = call i32 (...) @GetLastError()
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  %17 = call i32 @ok_long(i32 %15, i32 %16)
  %18 = load i32, i32* @DEFAULT_PALETTE, align 4
  %19 = call i64 @GetStockObject(i32 %18)
  %20 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %21 = load i32, i32* @GdiPalSetEntries, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i32 @NtGdiDoPalette(i64 %19, i32 0, i32 1, %struct.TYPE_6__* %20, i32 %21, i32 %22)
  %24 = call i32 @ok_long(i32 %23, i32 0)
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @ERROR_SUCCESS, align 4
  %27 = call i32 @ok_long(i32 %25, i32 %26)
  %28 = load i64, i64* %2, align 8
  %29 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %30 = load i32, i32* @GdiPalSetEntries, align 4
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @NtGdiDoPalette(i64 %28, i32 0, i32 1, %struct.TYPE_6__* %29, i32 %30, i32 %31)
  %33 = call i32 @ok_long(i32 %32, i32 1)
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %36 = load i32, i32* @GdiPalSetEntries, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @NtGdiDoPalette(i64 %34, i32 0, i32 2, %struct.TYPE_6__* %35, i32 %36, i32 %37)
  %39 = call i32 @ok_long(i32 %38, i32 2)
  %40 = load i64, i64* %2, align 8
  %41 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %42 = load i32, i32* @GdiPalSetEntries, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @NtGdiDoPalette(i64 %40, i32 0, i32 3, %struct.TYPE_6__* %41, i32 %42, i32 %43)
  %45 = call i32 @ok_long(i32 %44, i32 3)
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %48 = load i32, i32* @GdiPalSetEntries, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @NtGdiDoPalette(i64 %46, i32 0, i32 5, %struct.TYPE_6__* %47, i32 %48, i32 %49)
  %51 = call i32 @ok_long(i32 %50, i32 5)
  %52 = load i64, i64* %2, align 8
  %53 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %54 = load i32, i32* @GdiPalSetEntries, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @NtGdiDoPalette(i64 %52, i32 0, i32 6, %struct.TYPE_6__* %53, i32 %54, i32 %55)
  %57 = call i32 @ok_long(i32 %56, i32 5)
  %58 = load i64, i64* %2, align 8
  %59 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %60 = load i32, i32* @GdiPalSetEntries, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @NtGdiDoPalette(i64 %58, i32 3, i32 6, %struct.TYPE_6__* %59, i32 %60, i32 %61)
  %63 = call i32 @ok_long(i32 %62, i32 2)
  %64 = load i64, i64* %2, align 8
  %65 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %66 = load i32, i32* @GdiPalSetEntries, align 4
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @NtGdiDoPalette(i64 %64, i32 0, i32 5, %struct.TYPE_6__* %65, i32 %66, i32 %67)
  %69 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %70 = call i32 @ZeroMemory(%struct.TYPE_6__* %69, i32 160)
  %71 = load i64, i64* %2, align 8
  %72 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %73 = load i32, i32* @GdiPalSetEntries, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i32 @NtGdiDoPalette(i64 %71, i32 0, i32 5, %struct.TYPE_6__* %72, i32 %73, i32 %74)
  %76 = call i32 @ok_long(i32 %75, i32 5)
  %77 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %78 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %79 = call i32 @memcmp(%struct.TYPE_6__* %77, %struct.TYPE_6__* %78, i32 160)
  %80 = call i32 @ok_int(i32 %79, i32 0)
  %81 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %82 = call i32 @ZeroMemory(%struct.TYPE_6__* %81, i32 160)
  %83 = load i64, i64* %2, align 8
  %84 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %85 = load i32, i32* @GdiPalGetEntries, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = call i32 @NtGdiDoPalette(i64 %83, i32 0, i32 5, %struct.TYPE_6__* %84, i32 %85, i32 %86)
  %88 = call i32 @ok_long(i32 %87, i32 5)
  %89 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %90 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %91 = call i32 @memcmp(%struct.TYPE_6__* %89, %struct.TYPE_6__* %90, i32 160)
  %92 = call i32 @ok_int(i32 %91, i32 0)
  %93 = load i64, i64* %2, align 8
  %94 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %95 = load i32, i32* @GdiPalSetEntries, align 4
  %96 = load i32, i32* @TRUE, align 4
  %97 = call i32 @NtGdiDoPalette(i64 %93, i32 0, i32 4, %struct.TYPE_6__* %94, i32 %95, i32 %96)
  %98 = call i32 @ok_long(i32 %97, i32 4)
  %99 = call i32 (...) @GetLastError()
  %100 = load i32, i32* @ERROR_SUCCESS, align 4
  %101 = call i32 @ok_long(i32 %99, i32 %100)
  %102 = call i64 (...) @CreateTestPalette()
  store i64 %102, i64* %2, align 8
  %103 = load i64, i64* %2, align 8
  %104 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %105 = load i32, i32* @GdiPalSetEntries, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @NtGdiDoPalette(i64 %103, i32 0, i32 5, %struct.TYPE_6__* %104, i32 %105, i32 %106)
  %108 = load i64, i64* %2, align 8
  %109 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %110 = load i32, i32* @GdiPalGetEntries, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @NtGdiDoPalette(i64 %108, i32 0, i32 5, %struct.TYPE_6__* %109, i32 %110, i32 %111)
  %113 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ok_int(i32 %115, i32 0)
  %117 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ok_int(i32 %119, i32 0)
  %121 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ok_int(i32 %123, i32 0)
  %125 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %5, i64 0, i64 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 16
  %128 = call i32 @ok_int(i32 %127, i32 0)
  %129 = call i32 @CreateCompatibleDC(i32* null)
  store i32 %129, i32* %1, align 4
  %130 = load i32, i32* %1, align 4
  %131 = load i64, i64* %2, align 8
  %132 = call i64 @SelectPalette(i32 %130, i64 %131, i32 0)
  store i64 %132, i64* %3, align 8
  %133 = load i64, i64* %2, align 8
  %134 = getelementptr inbounds [5 x %struct.TYPE_6__], [5 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %135 = load i32, i32* @GdiPalSetEntries, align 4
  %136 = load i32, i32* @TRUE, align 4
  %137 = call i32 @NtGdiDoPalette(i64 %133, i32 0, i32 4, %struct.TYPE_6__* %134, i32 %135, i32 %136)
  %138 = call i32 @ok_long(i32 %137, i32 4)
  %139 = load i32, i32* %1, align 4
  %140 = load i64, i64* %3, align 8
  %141 = call i64 @SelectPalette(i32 %139, i64 %140, i32 0)
  %142 = load i64, i64* %2, align 8
  %143 = load i32, i32* @GdiPalGetEntries, align 4
  %144 = load i32, i32* @TRUE, align 4
  %145 = call i32 @NtGdiDoPalette(i64 %142, i32 0, i32 1, %struct.TYPE_6__* null, i32 %143, i32 %144)
  %146 = call i32 @ok_long(i32 %145, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreateTestPalette(...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @ok_long(i32, i32) #2

declare dso_local i32 @NtGdiDoPalette(i64, i32, i32, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @GetStockObject(i32) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @ok_int(i32, i32) #2

declare dso_local i32 @memcmp(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @CreateCompatibleDC(i32*) #2

declare dso_local i64 @SelectPalette(i32, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

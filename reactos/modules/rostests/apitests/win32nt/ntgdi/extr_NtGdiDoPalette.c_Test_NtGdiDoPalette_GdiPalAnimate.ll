; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiDoPalette.c_Test_NtGdiDoPalette_GdiPalAnimate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntgdi/extr_NtGdiDoPalette.c_Test_NtGdiDoPalette_GdiPalAnimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.Test_NtGdiDoPalette_GdiPalAnimate.palEntries = private unnamed_addr constant [5 x %struct.TYPE_3__] [%struct.TYPE_3__ zeroinitializer, %struct.TYPE_3__ { i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 51, i32 102, i32 153, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 37, i32 132, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.TYPE_3__ { i32 18, i32 52, i32 86, i32 17, i32 0, i32 0, i32 0, i32 0 }], align 16
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@GdiPalAnimate = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GdiPalGetEntries = common dso_local global i32 0, align 4
@PC_EXPLICIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_NtGdiDoPalette_GdiPalAnimate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x %struct.TYPE_3__], align 16
  %3 = alloca [5 x %struct.TYPE_3__], align 16
  %4 = bitcast [5 x %struct.TYPE_3__]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([5 x %struct.TYPE_3__]* @__const.Test_NtGdiDoPalette_GdiPalAnimate.palEntries to i8*), i64 160, i1 false)
  %5 = load i32, i32* @ERROR_SUCCESS, align 4
  %6 = call i32 @SetLastError(i32 %5)
  %7 = load i32, i32* @DEFAULT_PALETTE, align 4
  %8 = call i32 @GetStockObject(i32 %7)
  %9 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %10 = load i32, i32* @GdiPalAnimate, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @NtGdiDoPalette(i32 %8, i32 0, i32 1, %struct.TYPE_3__* %9, i32 %10, i32 %11)
  %13 = call i32 @ok_long(i32 %12, i32 0)
  %14 = call i32 (...) @GetLastError()
  %15 = load i32, i32* @ERROR_SUCCESS, align 4
  %16 = call i32 @ok_long(i32 %14, i32 %15)
  %17 = call i32 (...) @CreateTestPalette()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @GdiPalAnimate, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @NtGdiDoPalette(i32 %18, i32 0, i32 1, %struct.TYPE_3__* null, i32 %19, i32 %20)
  %22 = call i32 @ok_long(i32 %21, i32 0)
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @GdiPalAnimate, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @NtGdiDoPalette(i32 %23, i32 0, i32 1, %struct.TYPE_3__* null, i32 %24, i32 %25)
  %27 = call i32 @ok_long(i32 %26, i32 0)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @DeleteObject(i32 %28)
  %30 = call i32 (...) @CreateTestPalette()
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %33 = load i32, i32* @GdiPalAnimate, align 4
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @NtGdiDoPalette(i32 %31, i32 0, i32 5, %struct.TYPE_3__* %32, i32 %33, i32 %34)
  %36 = call i32 @ok_long(i32 %35, i32 2)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @DeleteObject(i32 %37)
  %39 = call i32 (...) @CreateTestPalette()
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %42 = load i32, i32* @GdiPalAnimate, align 4
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @NtGdiDoPalette(i32 %40, i32 1, i32 5, %struct.TYPE_3__* %41, i32 %42, i32 %43)
  %45 = call i32 @ok_long(i32 %44, i32 2)
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @DeleteObject(i32 %46)
  %48 = call i32 (...) @CreateTestPalette()
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %51 = load i32, i32* @GdiPalAnimate, align 4
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @NtGdiDoPalette(i32 %49, i32 2, i32 5, %struct.TYPE_3__* %50, i32 %51, i32 %52)
  %54 = call i32 @ok_long(i32 %53, i32 1)
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @DeleteObject(i32 %55)
  %57 = call i32 (...) @CreateTestPalette()
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* %1, align 4
  %59 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %60 = load i32, i32* @GdiPalAnimate, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @NtGdiDoPalette(i32 %58, i32 3, i32 5, %struct.TYPE_3__* %59, i32 %60, i32 %61)
  %63 = call i32 @ok_long(i32 %62, i32 1)
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @DeleteObject(i32 %64)
  %66 = call i32 (...) @CreateTestPalette()
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %69 = load i32, i32* @GdiPalAnimate, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = call i32 @NtGdiDoPalette(i32 %67, i32 4, i32 5, %struct.TYPE_3__* %68, i32 %69, i32 %70)
  %72 = call i32 @ok_long(i32 %71, i32 0)
  %73 = load i32, i32* %1, align 4
  %74 = call i32 @DeleteObject(i32 %73)
  %75 = call i32 (...) @CreateTestPalette()
  store i32 %75, i32* %1, align 4
  %76 = load i32, i32* %1, align 4
  %77 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %78 = load i32, i32* @GdiPalAnimate, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @NtGdiDoPalette(i32 %76, i32 5, i32 5, %struct.TYPE_3__* %77, i32 %78, i32 %79)
  %81 = call i32 @ok_long(i32 %80, i32 0)
  %82 = load i32, i32* %1, align 4
  %83 = call i32 @DeleteObject(i32 %82)
  %84 = call i32 (...) @CreateTestPalette()
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %87 = load i32, i32* @GdiPalAnimate, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @NtGdiDoPalette(i32 %85, i32 0, i32 5, %struct.TYPE_3__* %86, i32 %87, i32 %88)
  %90 = call i32 @ok_long(i32 %89, i32 2)
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @DeleteObject(i32 %91)
  %93 = call i32 (...) @CreateTestPalette()
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %96 = load i32, i32* @GdiPalAnimate, align 4
  %97 = load i32, i32* @FALSE, align 4
  %98 = call i32 @NtGdiDoPalette(i32 %94, i32 3, i32 5, %struct.TYPE_3__* %95, i32 %96, i32 %97)
  %99 = call i32 @ok_long(i32 %98, i32 1)
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @DeleteObject(i32 %100)
  %102 = call i32 (...) @CreateTestPalette()
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %105 = load i32, i32* @GdiPalAnimate, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @NtGdiDoPalette(i32 %103, i32 0, i32 5, %struct.TYPE_3__* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %1, align 4
  %109 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %110 = load i32, i32* @GdiPalGetEntries, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @NtGdiDoPalette(i32 %108, i32 0, i32 5, %struct.TYPE_3__* %109, i32 %110, i32 %111)
  %113 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 16
  %116 = call i32 @ok_int(i32 %115, i32 1)
  %117 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ok_int(i32 %119, i32 2)
  %121 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ok_int(i32 %123, i32 3)
  %125 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ok_int(i32 %127, i32 0)
  %129 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 16
  %132 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 16
  %135 = call i32 @ok_int(i32 %131, i32 %134)
  %136 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ok_int(i32 %138, i32 %141)
  %143 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ok_int(i32 %145, i32 %148)
  %150 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ok_int(i32 %152, i32 %155)
  %157 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 16
  %160 = call i32 @ok_int(i32 %159, i32 11)
  %161 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ok_int(i32 %163, i32 55)
  %165 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ok_int(i32 %167, i32 77)
  %169 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 2
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @PC_EXPLICIT, align 4
  %173 = call i32 @ok_int(i32 %171, i32 %172)
  %174 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 16
  %177 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 3
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 16
  %180 = call i32 @ok_int(i32 %176, i32 %179)
  %181 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 3
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ok_int(i32 %183, i32 %186)
  %188 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ok_int(i32 %190, i32 %193)
  %195 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %3, i64 0, i64 3
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds [5 x %struct.TYPE_3__], [5 x %struct.TYPE_3__]* %2, i64 0, i64 3
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ok_int(i32 %197, i32 %200)
  %202 = load i32, i32* %1, align 4
  %203 = call i32 @DeleteObject(i32 %202)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @ok_long(i32, i32) #2

declare dso_local i32 @NtGdiDoPalette(i32, i32, i32, %struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CreateTestPalette(...) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i32 @ok_int(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

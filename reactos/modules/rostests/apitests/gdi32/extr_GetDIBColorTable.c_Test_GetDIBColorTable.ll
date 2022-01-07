; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetDIBColorTable.c_Test_GetDIBColorTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetDIBColorTable.c_Test_GetDIBColorTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [8 x i32] }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to select bitmap\0A\00", align 1
@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"error=%ld\0A\00", align 1
@DIB_PAL_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetDIBColorTable() #0 {
  %1 = alloca %struct.anon, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [257 x i32], align 16
  %9 = bitcast %struct.anon* %1 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %2, align 8
  %10 = call i64 @CreateCompatibleDC(i32 0)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SetLastError(i32 0)
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %18 = call i32 @GetDIBColorTable(i64 %16, i32 0, i32 257, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ok_long(i32 %19, i32 2)
  %21 = call i32 @ok_err(i32 0)
  %22 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = call i32 @ok_long(i32 %23, i32 0)
  %25 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ok_long(i32 %26, i32 16777215)
  %28 = call i64 @CreateBitmap(i32 1, i32 1, i32 1, i32 1, i32* null)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @SelectObject(i64 %33, i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %42 = call i32 @GetDIBColorTable(i64 %40, i32 0, i32 257, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ok_long(i32 %43, i32 2)
  %45 = call i32 @ok_err(i32 0)
  %46 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = call i32 @ok_long(i32 %47, i32 0)
  %49 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ok_long(i32 %50, i32 16777215)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @SelectObject(i64 %52, i64 %53)
  %55 = load i64, i64* %3, align 8
  %56 = call i32 @DeleteObject(i64 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 4, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 2, i32* %62, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 2, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i32 8, i32* %71, align 8
  %72 = load i32, i32* @BI_RGB, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 10
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 9
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  store i32 1, i32* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 6
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 7
  store i32 3, i32* %87, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 8
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 0
  store i32 16711680, i32* %92, align 4
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %93, i64 0, i64 1
  store i32 65280, i32* %94, align 4
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 2
  store i32 255, i32* %96, align 4
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = load i32, i32* @DIB_RGB_COLORS, align 4
  %100 = bitcast i32* %6 to %struct.TYPE_7__**
  %101 = call i64 @CreateDIBSection(i64 %97, %struct.TYPE_7__* %98, i32 %99, %struct.TYPE_7__** %100, i32 0, i32 0)
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %3, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = icmp ne i8* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %3, align 8
  %110 = call i64 @SelectObject(i64 %108, i64 %109)
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %113 = call i32 @GetDIBColorTable(i64 %111, i32 0, i32 257, i32* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @ok_long(i32 %114, i32 256)
  %116 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %117 = load i32, i32* %116, align 16
  %118 = call i32 @ok_long(i32 %117, i32 16711680)
  %119 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ok_long(i32 %120, i32 65280)
  %122 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ok_long(i32 %123, i32 255)
  %125 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ok_long(i32 %126, i32 0)
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %130 = call i32 @SetDIBColorTable(i64 %128, i32 0, i32 4, i32* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @ok_long(i32 %131, i32 4)
  %133 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 3
  store i32 3855, i32* %133, align 4
  %134 = load i64, i64* %5, align 8
  %135 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %136 = call i32 @SetDIBColorTable(i64 %134, i32 0, i32 4, i32* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @ok_long(i32 %137, i32 4)
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %141 = call i32 @GetDIBColorTable(i64 %139, i32 0, i32 257, i32* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @ok_long(i32 %142, i32 256)
  %144 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = call i32 @ok_long(i32 %145, i32 16711680)
  %147 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ok_long(i32 %148, i32 65280)
  %150 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ok_long(i32 %151, i32 255)
  %153 = getelementptr inbounds [257 x i32], [257 x i32]* %8, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ok_long(i32 %154, i32 3855)
  %156 = load i64, i64* %5, align 8
  %157 = call i64 @GetStockObject(i32 21)
  %158 = call i64 @SelectObject(i64 %156, i64 %157)
  %159 = load i64, i64* %3, align 8
  %160 = call i32 @DeleteObject(i64 %159)
  %161 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %161, i64 0, i64 0
  store i32 1, i32* %162, align 4
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %163, i64 0, i64 1
  store i32 2, i32* %164, align 4
  %165 = getelementptr inbounds %struct.anon, %struct.anon* %1, i32 0, i32 1
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %165, i64 0, i64 2
  store i32 3, i32* %166, align 4
  %167 = load i64, i64* %5, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %169 = load i32, i32* @DIB_PAL_COLORS, align 4
  %170 = bitcast i32* %6 to %struct.TYPE_7__**
  %171 = call i64 @CreateDIBSection(i64 %167, %struct.TYPE_7__* %168, i32 %169, %struct.TYPE_7__** %170, i32 0, i32 0)
  store i64 %171, i64* %3, align 8
  %172 = load i64, i64* %3, align 8
  %173 = inttoptr i64 %172 to i8*
  %174 = icmp ne i8* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i32 (...) @GetLastError()
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* %3, align 8
  %180 = call i64 @SelectObject(i64 %178, i64 %179)
  ret void
}

declare dso_local i64 @CreateCompatibleDC(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetDIBColorTable(i64, i32, i32, i32*) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @ok_err(i32) #1

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @SelectObject(i64, i64) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i64 @CreateDIBSection(i64, %struct.TYPE_7__*, i32, %struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetDIBColorTable(i64, i32, i32, i32*) #1

declare dso_local i64 @GetStockObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

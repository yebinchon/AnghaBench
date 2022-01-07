; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Palette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@PC_EXPLICIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CreatePalette failed, skipping tests.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@GDI_OBJECT_TYPE_PALETTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Palette() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @FillMemory(i32* %3, i32 4, i32 119)
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i32 768, i32* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @PC_EXPLICIT, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = call i64 @CreatePalette(%struct.TYPE_5__* %1)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* %2, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %0
  br label %135

32:                                               ; preds = %0
  %33 = load i64, i64* %2, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = call i32 @GetObjectA(i32 %35, i32 0, i32* null)
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 4
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* %2, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = call i32 @GetObjectW(i32 %43, i32 0, i32* null)
  %45 = sext i32 %44 to i64
  %46 = icmp eq i64 %45, 4
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = call i32 @SetLastError(i64 %49)
  %51 = load i64, i64* @GDI_OBJECT_TYPE_PALETTE, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @GetObjectA(i32 %52, i32 0, i32* null)
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 4
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* @GDI_OBJECT_TYPE_PALETTE, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @GetObjectW(i32 %59, i32 0, i32* null)
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %61, 4
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @GetObject(i64 %65, i32 4, i32* null)
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %67, 4
  %69 = zext i1 %68 to i32
  %70 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @GetObject(i64 %71, i32 0, i32* null)
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 4
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i64, i64* %2, align 8
  %78 = call i32 @GetObject(i64 %77, i32 5, i32* null)
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %79, 4
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* %2, align 8
  %84 = call i32 @GetObject(i64 %83, i32 -5, i32* null)
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %85, 4
  %87 = zext i1 %86 to i32
  %88 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @GetObject(i64 %89, i32 4, i32* %3)
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, 4
  %93 = zext i1 %92 to i32
  %94 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i64, i64* %2, align 8
  %96 = call i32 @GetObject(i64 %95, i32 6, i32* %3)
  %97 = sext i32 %96 to i64
  %98 = icmp eq i64 %97, 4
  %99 = zext i1 %98 to i32
  %100 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @GetObject(i64 %101, i32 0, i32* %3)
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @GetObject(i64 %106, i32 1, i32* %3)
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i64, i64* %2, align 8
  %112 = call i32 @GetObject(i64 %111, i32 -1, i32* %3)
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 4
  %115 = zext i1 %114 to i32
  %116 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i64 (...) @GetLastError()
  %118 = load i64, i64* @ERROR_SUCCESS, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i64, i64* %2, align 8
  %123 = call i32 @DeleteObject(i64 %122)
  %124 = load i64, i64* @GDI_OBJECT_TYPE_PALETTE, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @GetObjectW(i32 %125, i32 4, i32* %3)
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %130 = call i64 (...) @GetLastError()
  %131 = load i64, i64* @ERROR_SUCCESS, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %32, %31
  ret void
}

declare dso_local i32 @FillMemory(i32*, i32, i32) #1

declare dso_local i64 @CreatePalette(%struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @GetObjectA(i32, i32, i32*) #1

declare dso_local i32 @GetObjectW(i32, i32, i32*) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i32 @GetObject(i64, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

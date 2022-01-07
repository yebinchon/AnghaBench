; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Dibsection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Dibsection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32 }

@BI_RGB = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CreateDIBSection failed with %ld, skipping tests.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Dibsection() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 4, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 10, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 4
  store i32 16, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 5
  %14 = load i32, i32* @BI_RGB, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 6
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  store i32 10, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 8
  store i32 10, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 9
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 10
  store i32 0, i32* %19, align 4
  %20 = call i32 @FillMemory(%struct.TYPE_9__* %4, i32 32, i32 119)
  %21 = call i32 @GetDC(i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DIB_RGB_COLORS, align 4
  %24 = call i64 @CreateDIBSection(i32 %22, %struct.TYPE_10__* %1, i32 %23, i64* %5, i32* null, i32 0)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* %2, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %0
  br label %115

33:                                               ; preds = %0
  %34 = load i64, i64* %2, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = call i32 @GetObjectA(i32 %36, i32 0, i32* null)
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 32
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i64, i64* %2, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65535
  %45 = call i32 @GetObjectW(i32 %44, i32 0, i32* null)
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 32
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ERROR_SUCCESS, align 4
  %51 = call i32 @SetLastError(i32 %50)
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @GetObject(i64 %52, i32 32, %struct.TYPE_9__* null)
  %54 = call i32 @ok_long(i32 %53, i32 32)
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @GetObject(i64 %55, i32 0, %struct.TYPE_9__* null)
  %57 = call i32 @ok_long(i32 %56, i32 32)
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @GetObject(i64 %58, i32 5, %struct.TYPE_9__* null)
  %60 = call i32 @ok_long(i32 %59, i32 32)
  %61 = load i64, i64* %2, align 8
  %62 = call i32 @GetObject(i64 %61, i32 -5, %struct.TYPE_9__* null)
  %63 = call i32 @ok_long(i32 %62, i32 32)
  %64 = load i64, i64* %2, align 8
  %65 = call i32 @GetObject(i64 %64, i32 0, %struct.TYPE_9__* %4)
  %66 = call i32 @ok_long(i32 %65, i32 0)
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @GetObject(i64 %67, i32 5, %struct.TYPE_9__* %4)
  %69 = call i32 @ok_long(i32 %68, i32 0)
  %70 = load i64, i64* %2, align 8
  %71 = call i32 @GetObject(i64 %70, i32 32, %struct.TYPE_9__* %3)
  %72 = call i32 @ok_long(i32 %71, i32 32)
  %73 = load i64, i64* %2, align 8
  %74 = call i32 @GetObject(i64 %73, i32 34, %struct.TYPE_9__* %3)
  %75 = call i32 @ok_long(i32 %74, i32 32)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ok_long(i32 %77, i32 0)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ok_long(i32 %80, i32 10)
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ok_long(i32 %83, i32 9)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ok_long(i32 %86, i32 20)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ok_long(i32 %89, i32 1)
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @ok_long(i32 %92, i32 16)
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @GetObject(i64 %100, i32 32, %struct.TYPE_9__* %4)
  %102 = call i32 @ok_long(i32 %101, i32 32)
  %103 = load i64, i64* %2, align 8
  %104 = call i32 @GetObject(i64 %103, i32 34, %struct.TYPE_9__* %4)
  %105 = call i32 @ok_long(i32 %104, i32 32)
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @GetObject(i64 %106, i32 -5, %struct.TYPE_9__* %4)
  %108 = call i32 @ok_long(i32 %107, i32 32)
  %109 = load i32, i32* @ERROR_SUCCESS, align 4
  %110 = call i32 @ok_err(i32 %109)
  %111 = load i64, i64* %2, align 8
  %112 = call i32 @DeleteObject(i64 %111)
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @ReleaseDC(i32 0, i32 %113)
  br label %115

115:                                              ; preds = %33, %32
  ret void
}

declare dso_local i32 @FillMemory(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i64 @CreateDIBSection(i32, %struct.TYPE_10__*, i32, i64*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @GetObjectA(i32, i32, i32*) #1

declare dso_local i32 @GetObjectW(i32, i32, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @ok_long(i32, i32) #1

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ok_err(i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

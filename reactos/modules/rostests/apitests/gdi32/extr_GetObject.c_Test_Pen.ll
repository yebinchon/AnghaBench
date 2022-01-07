; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Pen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@PS_SOLID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"CreatePen failed, skipping tests.\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_PEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"expected ERROR_INVALID_PARAMETER, got %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Pen() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @FillMemory(%struct.TYPE_5__* %1, i32 8, i32 119)
  %4 = load i64, i64* @PS_SOLID, align 8
  %5 = call i32 @RGB(i32 4, i32 5, i32 6)
  %6 = call i64 @CreatePen(i64 %4, i32 3, i32 %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %0
  br label %102

14:                                               ; preds = %0
  %15 = load i32, i32* @ERROR_SUCCESS, align 4
  %16 = call i32 @SetLastError(i32 %15)
  %17 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @GetObjectA(i32 %18, i32 0, i32* null)
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 8
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i64 @GetObjectW(i32 %25, i32 0, %struct.TYPE_5__* null)
  %27 = icmp eq i64 %26, 8
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @GetObject(i64 %30, i32 4, %struct.TYPE_5__* null)
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 %32, 8
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @GetObject(i64 %36, i32 0, %struct.TYPE_5__* null)
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 8
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @GetObject(i64 %42, i32 5, %struct.TYPE_5__* null)
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 8
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @GetObject(i64 %48, i32 -5, %struct.TYPE_5__* null)
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %50, 8
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i64, i64* %2, align 8
  %55 = call i32 @GetObject(i64 %54, i32 8, %struct.TYPE_5__* %1)
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %56, 8
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @GetObject(i64 %60, i32 7, %struct.TYPE_5__* %1)
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @GetObject(i64 %65, i32 10, %struct.TYPE_5__* %1)
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %67, 8
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i64, i64* %2, align 8
  %72 = call i32 @GetObject(i64 %71, i32 0, %struct.TYPE_5__* %1)
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i64, i64* %2, align 8
  %77 = call i32 @GetObject(i64 %76, i32 -5, %struct.TYPE_5__* %1)
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %78, 8
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PS_SOLID, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i64, i64* @GDI_OBJECT_TYPE_PEN, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i64 @GetObjectW(i32 %89, i32 8, %struct.TYPE_5__* %1)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %94 = call i64 (...) @GetLastError()
  %95 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @DeleteObject(i64 %100)
  br label %102

102:                                              ; preds = %14, %13
  ret void
}

declare dso_local i32 @FillMemory(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @CreatePen(i64, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetObjectA(i32, i32, i32*) #1

declare dso_local i64 @GetObjectW(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Brush.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_Brush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"CreateSolidBrush failed, skipping tests.\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@GDI_OBJECT_TYPE_BRUSH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"expected ERROR_INVALID_PARAMETER, got %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_Brush() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @FillMemory(%struct.TYPE_5__* %1, i32 8, i32 119)
  %4 = call i32 @RGB(i32 1, i32 2, i32 3)
  %5 = call i64 @CreateSolidBrush(i32 %4)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %123

13:                                               ; preds = %0
  %14 = load i64, i64* @ERROR_SUCCESS, align 8
  %15 = call i32 @SetLastError(i64 %14)
  %16 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @GetObjectA(i32 %17, i32 0, i32* null)
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 8
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @GetObjectW(i32 %24, i32 0, %struct.TYPE_5__* null)
  %26 = icmp eq i64 %25, 8
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @GetObject(i64 %29, i32 4, %struct.TYPE_5__* null)
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 8
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @GetObject(i64 %35, i32 0, %struct.TYPE_5__* null)
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, 8
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @GetObject(i64 %41, i32 5, %struct.TYPE_5__* null)
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 8
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @GetObject(i64 %47, i32 -5, %struct.TYPE_5__* null)
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, 8
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 2004318071
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @GetObject(i64 %58, i32 5, %struct.TYPE_5__* %1)
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %60, 8
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 2004317953
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i64, i64* %2, align 8
  %75 = call i32 @GetObject(i64 %74, i32 8, %struct.TYPE_5__* %1)
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, 8
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* %2, align 8
  %81 = call i32 @GetObject(i64 %80, i32 7, %struct.TYPE_5__* %1)
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %82, 8
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i64, i64* %2, align 8
  %87 = call i32 @GetObject(i64 %86, i32 1, %struct.TYPE_5__* %1)
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %88, 8
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i64, i64* %2, align 8
  %93 = call i32 @GetObject(i64 %92, i32 10, %struct.TYPE_5__* %1)
  %94 = sext i32 %93 to i64
  %95 = icmp eq i64 %94, 8
  %96 = zext i1 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i64, i64* %2, align 8
  %99 = call i32 @GetObject(i64 %98, i32 -1, %struct.TYPE_5__* %1)
  %100 = sext i32 %99 to i64
  %101 = icmp eq i64 %100, 8
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i64 (...) @GetLastError()
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i64, i64* %2, align 8
  %110 = call i32 @DeleteObject(i64 %109)
  %111 = load i64, i64* @GDI_OBJECT_TYPE_BRUSH, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i64 @GetObjectW(i32 %112, i32 8, %struct.TYPE_5__* %1)
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i64 (...) @GetLastError()
  %118 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 (...) @GetLastError()
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %13, %12
  ret void
}

declare dso_local i32 @FillMemory(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @CreateSolidBrush(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetLastError(i64) #1

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

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_MetaDC.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_GetObject.c_Test_MetaDC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"CreateMetaFile failed, skipping tests.\0A\00", align 1
@GDI_HANDLE_TYPE_MASK = common dso_local global i32 0, align 4
@GDI_OBJECT_TYPE_METADC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"got %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_MetaDC() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [1000 x i32], align 16
  %3 = call i64 @CreateMetaFile(i32* null)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %52

11:                                               ; preds = %0
  %12 = load i64, i64* %1, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GDI_HANDLE_TYPE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @GDI_OBJECT_TYPE_METADC, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = call i32 @SetLastError(i64 %20)
  %22 = load i32, i32* @GDI_OBJECT_TYPE_METADC, align 4
  %23 = sext i32 %22 to i64
  %24 = call i64 @GetObjectA(i64 %23, i32 0, i32** null)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @GDI_OBJECT_TYPE_METADC, align 4
  %29 = sext i32 %28 to i64
  %30 = bitcast [1000 x i32]* %2 to i32**
  %31 = call i64 @GetObjectA(i64 %29, i32 100, i32** %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i64, i64* %1, align 8
  %36 = call i64 @GetObjectA(i64 %35, i32 0, i32** null)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* %1, align 8
  %41 = bitcast [1000 x i32]* %2 to i32**
  %42 = call i64 @GetObjectA(i64 %40, i32 1000, i32** %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @ERROR_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @CreateMetaFile(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i64 @GetObjectA(i64, i32, i32**) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

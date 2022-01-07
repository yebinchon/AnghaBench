; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdzip.c_ExtractZipInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/lib/vfdlib/extr_vfdzip.c_ExtractZipInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@FILE_BEGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SetFilePointer() - %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ReadFile() - %s\0A\00", align 1
@ZIP_LOCAL_SIGNATURE = common dso_local global i64 0, align 8
@ZIP_METHOD_DEFLATED = common dso_local global i64 0, align 8
@ZIP_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"[VFD] Invalid ZIP file\0A\00", align 1
@ERROR_INVALID_DATA = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExtractZipInfo(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FILE_BEGIN, align 4
  %11 = call i64 @SetFilePointer(i32 %9, i32 0, i32* null, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = call i32 (...) @GetLastError()
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @SystemMessage(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @VFDTRACE(i32 0, i8* %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ReadFile(i32 %22, %struct.TYPE_3__* %6, i32 24, i32* %7, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = call i32 (...) @GetLastError()
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @SystemMessage(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @VFDTRACE(i32 0, i8* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %61

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 24
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZIP_LOCAL_SIGNATURE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZIP_METHOD_DEFLATED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ZIP_FLAG_ENCRYPTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %42, %37, %33
  %54 = call i32 @VFDTRACE(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ERROR_INVALID_DATA, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %53, %25, %13
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @SetFilePointer(i32, i32, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @VFDTRACE(i32, i8*) #1

declare dso_local i32 @SystemMessage(i32) #1

declare dso_local i32 @ReadFile(i32, %struct.TYPE_3__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

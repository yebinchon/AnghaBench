; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/moztest/extr_moztest.c_VirtualTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/moztest/extr_moztest.c_VirtualTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Calling CreateFileMappingA\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SEC_RESERVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CreateFileMappingA failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Calling MapViewOfFile\0A\00", align 1
@FILE_MAP_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"MapViewOfFile failed\0A\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"MapViewOfFile returned ERROR_ALREADY_EXISTS\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"This really shouldn't happen, but it's not fatal.\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Calling VirtualAlloc\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"VirtualAlloc failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Hurray!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VirtualTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %12 = load i32, i32* @PAGE_READWRITE, align 4
  %13 = load i32, i32* @SEC_RESERVE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @CreateFileMappingA(i32 %11, i32* null, i32 %14, i32 0, i32 %15, i8* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %0
  %21 = call i32 @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %67

22:                                               ; preds = %0
  %23 = call i64 (...) @GetLastError()
  store i64 %23, i64* %2, align 8
  %24 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FILE_MAP_ALL_ACCESS, align 4
  %27 = call i64 @MapViewOfFile(i32 %25, i32 %26, i32 0, i32 0, i32 0)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %67

33:                                               ; preds = %22
  %34 = call i32 @GetSystemInfo(%struct.TYPE_3__* %3)
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = call i32 @DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %40 = call i32 @DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @UnmapViewOfFile(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CloseHandle(i32 %43)
  store i32 1, i32* %1, align 4
  br label %67

45:                                               ; preds = %33
  %46 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MEM_COMMIT, align 4
  %51 = load i32, i32* @PAGE_READWRITE, align 4
  %52 = call i32 @VirtualAlloc(i32* %47, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @UnmapViewOfFile(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @CloseHandle(i32 %58)
  store i32 1, i32* %1, align 4
  br label %67

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = call i32 @DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @UnmapViewOfFile(i32* %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @CloseHandle(i32 %65)
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %61, %54, %38, %31, %20
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @CreateFileMappingA(i32, i32*, i32, i32, i32, i8*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemInfo(%struct.TYPE_3__*) #1

declare dso_local i32 @UnmapViewOfFile(i32*) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @VirtualAlloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

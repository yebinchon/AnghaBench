; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_hglobalstream.c_test_freed_hglobal.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_hglobalstream.c_test_freed_hglobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@test_freed_hglobal.teststring = internal constant [22 x i8] c"this is a test string\00", align 16
@GMEM_DDESHARE = common dso_local global i32 0, align 4
@GMEM_NODISCARD = common dso_local global i32 0, align 4
@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"GlobalAlloc failed with error %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CreateStreamOnHGlobal\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IStream_Read\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"buffer data %s differs\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"read should be sizeof(teststring) instead of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"buffer data should be untouched\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"read should be 0 instead of %d\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [84 x i8] c"IStream_SetSize with invalid HGLOBAL should return E_OUTOFMEMORY instead of 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"IStream_Write with invalid HGLOBAL should return E_OUTOFMEMORY instead of 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"written should be 0 instead of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_freed_hglobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_freed_hglobal() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @GMEM_DDESHARE, align 4
  %10 = load i32, i32* @GMEM_NODISCARD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @GMEM_MOVEABLE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @strlen(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_freed_hglobal.teststring, i64 0, i64 0))
  %15 = add nsw i64 %14, 1
  %16 = call i32* @GlobalAlloc(i32 %13, i64 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @GlobalLock(i32* %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_freed_hglobal.teststring, i64 0, i64 0))
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @GlobalUnlock(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @CreateStreamOnHGlobal(i32* %28, i32 %29, i32** %2)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @ok_ole_success(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %35 = call i32 @IStream_Read(i32* %33, i8* %34, i32 30, i32* %7)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @ok_ole_success(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %38 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_freed_hglobal.teststring, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 22
  br i1 %47, label %55, label %48

48:                                               ; preds = %0
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %50, 24
  %52 = zext i1 %51 to i32
  %53 = call i64 @broken(i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %48, %0
  %56 = phi i1 [ true, %0 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @GlobalFree(i32* %60)
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %63 = call i32 @memset(i8* %62, i32 0, i32 30)
  store i32 -1, i32* %7, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %66 = call i32 @IStream_Read(i32* %64, i8* %65, i32 30, i32* %7)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @ok_ole_success(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %69 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %7, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 30, i32* %80, align 4
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IStream_SetSize(i32* %81, i32 %83)
  store i32 %84, i32* %1, align 4
  %85 = load i32, i32* %1, align 4
  %86 = load i32, i32* @E_OUTOFMEMORY, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %1, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %93 = call i32 @IStream_Write(i32* %91, i8* %92, i32 30, i32* %8)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @E_OUTOFMEMORY, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %1, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @IStream_Release(i32* %105)
  ret void
}

declare dso_local i32* @GlobalAlloc(i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @GlobalLock(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @GlobalUnlock(i32*) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32 @IStream_Read(i32*, i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @GlobalFree(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @IStream_SetSize(i32*, i32) #1

declare dso_local i32 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

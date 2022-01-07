; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetColorProfileFromHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscms/extr_profile.c_test_GetColorProfileFromHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@test_GetColorProfileFromHandle.expect = internal constant [84 x i8] c"\00\00\0CHLino\02\10\00\00mntrRGB XYZ \07\CE\00\02\00\09\00\06\001\00\00acspMSFT\00\00\00\00IEC sRGB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F6\D6\00\01\00\00\00\00\D3-HP  ", align 16
@PROFILE_FILENAME = common dso_local global i32 0, align 4
@PROFILE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"OpenColorProfileA() failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"GetColorProfileFromHandle() failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"GetColorProfileFromHandle() succeeded (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unexpected header data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_GetColorProfileFromHandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetColorProfileFromHandle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %86

10:                                               ; preds = %1
  %11 = load i32, i32* @PROFILE_FILENAME, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @PROFILE_READ, align 4
  %19 = load i32, i32* @OPEN_EXISTING, align 4
  %20 = call i32* @pOpenColorProfileA(%struct.TYPE_3__* %3, i32 %18, i32 0, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (...) @GetLastError()
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i64 0, i64* %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @pGetColorProfileFromHandle(i32* %26, i8* null, i64* %5)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %10
  %31 = load i64, i64* %5, align 8
  %32 = icmp sgt i64 %31, 0
  br label %33

33:                                               ; preds = %30, %10
  %34 = phi i1 [ false, %10 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 (...) @GetLastError()
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i64, i64* %5, align 8
  %40 = call i8* @HeapAlloc(i32 %38, i32 0, i64 %39)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %83

43:                                               ; preds = %33
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @pGetColorProfileFromHandle(i32* null, i8* %44, i64* %5)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @pGetColorProfileFromHandle(i32* %52, i8* %53, i64* null)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 (...) @GetLastError()
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @pGetColorProfileFromHandle(i32* %61, i8* %62, i64* %5)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %43
  %67 = load i64, i64* %5, align 8
  %68 = icmp sgt i64 %67, 0
  br label %69

69:                                               ; preds = %66, %43
  %70 = phi i1 [ false, %43 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @memcmp(i8* %74, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @test_GetColorProfileFromHandle.expect, i64 0, i64 0), i32 84)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %80 = call i32 (...) @GetProcessHeap()
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @HeapFree(i32 %80, i32 0, i8* %81)
  br label %83

83:                                               ; preds = %69, %33
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @pCloseColorProfile(i32* %84)
  br label %86

86:                                               ; preds = %83, %1
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @pOpenColorProfileA(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @pGetColorProfileFromHandle(i32*, i8*, i64*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @pCloseColorProfile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

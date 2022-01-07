; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_FindFirstVolume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_FindFirstVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"succeeded with short buffer\0A\00", align 1
@ERROR_MORE_DATA = common dso_local global i8* null, align 8
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"failed err %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"bad volume name %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\\\\?\\Volume{\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FindFirstVolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FindFirstVolume() #0 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %4 = call i64 @pFindFirstVolumeA(i8* %3, i32 0)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = call i8* (...) @GetLastError()
  %11 = load i8*, i8** @ERROR_MORE_DATA, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %0
  %14 = call i8* (...) @GetLastError()
  %15 = load i8*, i8** @ERROR_FILENAME_EXCED_RANGE, align 8
  %16 = icmp eq i8* %14, %15
  br label %17

17:                                               ; preds = %13, %0
  %18 = phi i1 [ true, %0 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i8* (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %23 = call i64 @pFindFirstVolumeA(i8* %22, i32 49)
  store i64 %23, i64* %2, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = call i8* (...) @GetLastError()
  %30 = load i8*, i8** @ERROR_FILENAME_EXCED_RANGE, align 8
  %31 = icmp eq i8* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i8* (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %36 = call i64 @pFindFirstVolumeA(i8* %35, i32 51)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i8* (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %69, %46
  %48 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %49 = call i32 @strlen(i8* %48)
  %50 = icmp eq i32 %49, 49
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %55 = call i32 @memcmp(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 47
  %63 = call i32 @memcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %47
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %72 = load i32, i32* @MAX_PATH, align 4
  %73 = call i64 @pFindNextVolumeA(i64 %70, i8* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %47, label %75

75:                                               ; preds = %69
  %76 = call i8* (...) @GetLastError()
  %77 = load i8*, i8** @ERROR_NO_MORE_FILES, align 8
  %78 = icmp eq i8* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i8* (...) @GetLastError()
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load i64, i64* %2, align 8
  %83 = call i32 @pFindVolumeClose(i64 %82)
  br label %84

84:                                               ; preds = %75, %17
  ret void
}

declare dso_local i64 @pFindFirstVolumeA(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @GetLastError(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @pFindNextVolumeA(i64, i8*, i32) #1

declare dso_local i32 @pFindVolumeClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumePathNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_volume.c_test_GetVolumePathNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetVolumePathNameW.drive_c1 = internal global [3 x i8] c"C:\00", align 1
@test_GetVolumePathNameW.drive_c2 = internal global [4 x i8] c"C:\\\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"GetVolumePathNameW test succeeded unexpectedly.\0A\00", align 1
@ERROR_FILENAME_EXCED_RANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"GetVolumePathNameW unexpectedly returned error 0x%x (expected 0x%x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"GetVolumePathW corrupted byte after end of buffer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"GetVolumePathNameW test failed unexpectedly.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"GetVolumePathNameW unexpectedly returned wrong path.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetVolumePathNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetVolumePathNameW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MAX_PATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %8, align 16
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  store i8 17, i8* %9, align 1
  %10 = call i32 @pGetVolumePathNameW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetVolumePathNameW.drive_c1, i64 0, i64 0), i8* %7, i32 1)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %16 = call i64 (...) @GetLastError()
  %17 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %21)
  %23 = getelementptr inbounds i8, i8* %7, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 17
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %29 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %29, align 16
  %30 = getelementptr inbounds i8, i8* %7, i64 2
  store i8 17, i8* %30, align 2
  %31 = call i32 @pGetVolumePathNameW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetVolumePathNameW.drive_c1, i64 0, i64 0), i8* %7, i32 2)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %37 = call i64 (...) @GetLastError()
  %38 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @ERROR_FILENAME_EXCED_RANGE, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %42)
  %44 = getelementptr inbounds i8, i8* %7, i64 2
  %45 = load i8, i8* %44, align 2
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 17
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %50 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %50, align 16
  %51 = getelementptr inbounds i8, i8* %7, i64 3
  store i8 17, i8* %51, align 1
  %52 = call i32 @pGetVolumePathNameW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetVolumePathNameW.drive_c1, i64 0, i64 0), i8* %7, i32 3)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %0
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @broken(i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %55, %0
  %63 = phi i1 [ true, %0 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i64 @memcmp(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetVolumePathNameW.drive_c1, i64 0, i64 0), i32 3)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds i8, i8* %7, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @broken(i32 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %68, %62
  %77 = phi i1 [ true, %62 ], [ %75, %68 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %80 = getelementptr inbounds i8, i8* %7, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 17
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %86 = getelementptr inbounds i8, i8* %7, i64 0
  store i8 0, i8* %86, align 16
  %87 = getelementptr inbounds i8, i8* %7, i64 4
  store i8 17, i8* %87, align 4
  %88 = call i32 @pGetVolumePathNameW(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @test_GetVolumePathNameW.drive_c1, i64 0, i64 0), i8* %7, i32 4)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i64 @memcmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_GetVolumePathNameW.drive_c2, i64 0, i64 0), i32 4)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %95 = getelementptr inbounds i8, i8* %7, i64 4
  %96 = load i8, i8* %95, align 4
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 17
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %101)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pGetVolumePathNameW(i8*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

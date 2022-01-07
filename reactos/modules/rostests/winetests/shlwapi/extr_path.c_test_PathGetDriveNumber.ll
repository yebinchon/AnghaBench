; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathGetDriveNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathGetDriveNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_PathGetDriveNumber.test1A = internal constant [13 x i8] c"a:\\test.file\00", align 1
@test_PathGetDriveNumber.test2A = internal constant [22 x i8] c"file:////b:\\test.file\00", align 16
@test_PathGetDriveNumber.test3A = internal constant [21 x i8] c"file:///c:\\test.file\00", align 16
@test_PathGetDriveNumber.test4A = internal constant [20 x i8] c"file:\\\\c:\\test.file\00", align 16
@test_PathGetDriveNumber.test5A = internal constant [20 x i8] c"\\\\?\\C:\\dir\\file.txt\00", align 16
@test_PathGetDriveNumber.test1W = internal constant [4 x i8] c"a:\\\00", align 1
@test_PathGetDriveNumber.test5W = internal constant [16 x i8] c"\\\\?\\C:\\dir\\file\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathGetDriveNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathGetDriveNumber() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @SetLastError(i32 -559038737)
  %3 = call i32 @PathGetDriveNumberA(i8* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, -1
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @ok(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @GetLastError()
  %10 = icmp eq i32 %9, -559038737
  %11 = zext i1 %10 to i32
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = call i32 @PathGetDriveNumberA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_PathGetDriveNumber.test1A, i64 0, i64 0))
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @PathGetDriveNumberW(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_PathGetDriveNumber.test1W, i64 0, i64 0))
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @PathGetDriveNumberA(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @test_PathGetDriveNumber.test2A, i64 0, i64 0))
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, -1
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @PathGetDriveNumberA(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_PathGetDriveNumber.test3A, i64 0, i64 0))
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = icmp eq i32 %33, -1
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 @PathGetDriveNumberA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_PathGetDriveNumber.test4A, i64 0, i64 0))
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp eq i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @PathGetDriveNumberA(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @test_PathGetDriveNumber.test5A, i64 0, i64 0))
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = icmp eq i32 %45, -1
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i32 @PathGetDriveNumberW(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_PathGetDriveNumber.test5W, i64 0, i64 0))
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %59, label %53

53:                                               ; preds = %0
  %54 = load i32, i32* %1, align 4
  %55 = icmp eq i32 %54, -1
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %0
  %60 = phi i1 [ true, %0 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @PathGetDriveNumberA(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @PathGetDriveNumberW(i8*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

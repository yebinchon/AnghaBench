; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_crc_imp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_crc_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_crc_imp.path = internal constant [11 x i8] c"testxx.exe\00", align 1
@test_crc_imp.crc_test = internal global [16 x i8] c"\04\04\04\04\01\01\01\01\04\04\04\04\02\02\02\02", align 16
@.str = private unnamed_addr constant [11 x i32] [i32 116, i32 101, i32 115, i32 116, i32 120, i32 120, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"expected SdbGetFileAttributes to succeed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"expected a valid pointer.\0A\00", align 1
@g_AttrInfoSize = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"expected %u items, got %d.\0A\00", align 1
@TAG_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_crc_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_crc_imp(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 57005, i64* %5, align 8
  store i64 333, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @test_create_file_imp(i8* bitcast ([11 x i32]* @.str to i8*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_crc_imp.crc_test, i64 0, i64 0), i64 %8)
  %10 = call i64 @pSdbGetFileAttributes(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_crc_imp.path, i64 0, i64 0), i64* %5, i64* %6)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @winetest_ok(i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 57005
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @winetest_ok(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @g_AttrInfoSize, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* @g_AttrInfoSize, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (i32, i8*, ...) @winetest_ok(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %24, i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @g_AttrInfoSize, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @TAG_CHECKSUM, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @expect_tag_dword_imp(i64 %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %30, %2
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @pSdbFreeFileAttributes(i64 %42)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @test_create_file_imp(i8*, i8*, i64) #1

declare dso_local i64 @pSdbGetFileAttributes(i8*, i64*, i64*) #1

declare dso_local i32 @winetest_ok(i32, i8*, ...) #1

declare dso_local i32 @expect_tag_dword_imp(i64, i32, i64) #1

declare dso_local i32 @pSdbFreeFileAttributes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

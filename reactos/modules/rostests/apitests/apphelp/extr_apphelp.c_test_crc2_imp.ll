; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_crc2_imp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_crc2_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_crc2_imp.path = internal constant [11 x i8] c"testxx.exe\00", align 1
@.str = private unnamed_addr constant [11 x i32] [i32 116, i32 101, i32 115, i32 116, i32 120, i32 120, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"expected SdbGetFileAttributes to succeed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"expected a valid pointer.\0A\00", align 1
@g_AttrInfoSize = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"expected %u items, got %d.\0A\00", align 1
@TAG_SIZE = common dso_local global i32 0, align 4
@TAG_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64)* @test_crc2_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_crc2_imp(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 57005, i64* %7, align 8
  store i64 333, i64* %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  br label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i64 [ %23, %21 ], [ %25, %24 ]
  %28 = trunc i64 %27 to i8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 %28, i8* %31, align 1
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @test_create_file_imp(i8* bitcast ([11 x i32]* @.str to i8*), i8* %36, i64 %37)
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @free(i8* %39)
  %41 = call i64 @pSdbGetFileAttributes(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_crc2_imp.path, i64 0, i64 0), i64* %7, i64* %8)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @winetest_ok(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 57005
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @winetest_ok(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @g_AttrInfoSize, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* @g_AttrInfoSize, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 (i32, i8*, ...) @winetest_ok(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @g_AttrInfoSize, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %35
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @TAG_SIZE, align 4
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @expect_tag_dword_imp(i64 %65, i32 %66, i64 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @TAG_CHECKSUM, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @expect_tag_dword_imp(i64 %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %64, %61, %35
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @pSdbFreeFileAttributes(i64 %77)
  br label %79

79:                                               ; preds = %76, %73
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @test_create_file_imp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

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

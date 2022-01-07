; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_ismbckata.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_ismbckata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.katakana_pair = type { i32, i32 }
%struct.katakana_pair.0 = type opaque

@test_ismbckata.tests = internal constant [15 x %struct.katakana_pair] [%struct.katakana_pair { i32 33106, i32 129 }, %struct.katakana_pair { i32 33107, i32 129 }, %struct.katakana_pair { i32 33108, i32 129 }, %struct.katakana_pair { i32 33109, i32 129 }, %struct.katakana_pair { i32 33440, i32 129 }, %struct.katakana_pair { i32 33599, i32 129 }, %struct.katakana_pair { i32 33600, i32 128 }, %struct.katakana_pair { i32 33662, i32 128 }, %struct.katakana_pair { i32 33663, i32 129 }, %struct.katakana_pair { i32 33664, i32 128 }, %struct.katakana_pair { i32 33686, i32 128 }, %struct.katakana_pair { i32 33687, i32 129 }, %struct.katakana_pair { i32 165, i32 129 }, %struct.katakana_pair { i32 176, i32 129 }, %struct.katakana_pair { i32 221, i32 129 }], align 16
@_MB_CP_SBCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"expected 0, got %d for %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"expected %d, got %d for %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ismbckata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ismbckata() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @_getmbcp()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @_MB_CP_SBCS, align 4
  %6 = call i32 @_setmbcp(i32 %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %29, %0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ARRAY_SIZE(%struct.katakana_pair.0* bitcast ([15 x %struct.katakana_pair]* @test_ismbckata.tests to %struct.katakana_pair.0*))
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [15 x %struct.katakana_pair], [15 x %struct.katakana_pair]* @test_ismbckata.tests, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.katakana_pair, %struct.katakana_pair* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @_ismbckata(i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [15 x %struct.katakana_pair], [15 x %struct.katakana_pair]* @test_ismbckata.tests, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.katakana_pair, %struct.katakana_pair* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %7

32:                                               ; preds = %7
  %33 = call i32 @_setmbcp(i32 932)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %73, %32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ARRAY_SIZE(%struct.katakana_pair.0* bitcast ([15 x %struct.katakana_pair]* @test_ismbckata.tests to %struct.katakana_pair.0*))
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [15 x %struct.katakana_pair], [15 x %struct.katakana_pair]* @test_ismbckata.tests, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.katakana_pair, %struct.katakana_pair* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @_ismbckata(i32 %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [15 x %struct.katakana_pair], [15 x %struct.katakana_pair]* @test_ismbckata.tests, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.katakana_pair, %struct.katakana_pair* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %49, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %3, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [15 x %struct.katakana_pair], [15 x %struct.katakana_pair]* @test_ismbckata.tests, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.katakana_pair, %struct.katakana_pair* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [15 x %struct.katakana_pair], [15 x %struct.katakana_pair]* @test_ismbckata.tests, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.katakana_pair, %struct.katakana_pair* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %38
  %74 = load i32, i32* %3, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %34

76:                                               ; preds = %34
  %77 = load i32, i32* %1, align 4
  %78 = call i32 @_setmbcp(i32 %77)
  ret void
}

declare dso_local i32 @_getmbcp(...) #1

declare dso_local i32 @_setmbcp(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.katakana_pair.0*) #1

declare dso_local i32 @_ismbckata(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbbtombc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbbtombc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mbbtombc.mbbmbc = internal constant [16 x [2 x i32]] [[2 x i32] [i32 31, i32 31], [2 x i32] [i32 32, i32 33088], [2 x i32] [i32 57, i32 33368], [2 x i32] [i32 64, i32 33175], [2 x i32] [i32 65, i32 33376], [2 x i32] [i32 94, i32 33103], [2 x i32] [i32 126, i32 33104], [2 x i32] [i32 127, i32 127], [2 x i32] [i32 128, i32 128], [2 x i32] [i32 129, i32 129], [2 x i32] [i32 160, i32 160], [2 x i32] [i32 167, i32 33600], [2 x i32] [i32 176, i32 33115], [2 x i32] [i32 209, i32 33664], [2 x i32] [i32 255, i32 255], [2 x i32] zeroinitializer], align 16
@_MB_CP_SBCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Expected 0x%x, got 0x%x (0x%x, codepage %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mbbtombc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mbbtombc() #0 {
  %1 = alloca [6 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  store i32 932, i32* %7, align 4
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 936, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 939, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 950, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 1361, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* @_MB_CP_SBCS, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 (...) @_getmbcp()
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %79, %0
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_setmbcp(i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %75, %20
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @test_mbbtombc.mbbmbc, i64 0, i64 %28
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @test_mbbtombc.mbbmbc, i64 0, i64 %35
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @_mbbtombc(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 932
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @test_mbbtombc.mbbmbc, i64 0, i64 %47
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  br label %57

51:                                               ; preds = %33
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @test_mbbtombc.mbbmbc, i64 0, i64 %53
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %54, i64 0, i64 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi i32 [ %50, %45 ], [ %56, %51 ]
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x [2 x i32]], [16 x [2 x i32]]* @test_mbbtombc.mbbmbc, i64 0, i64 %66
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %67, i64 0, i64 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %26

78:                                               ; preds = %26
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %15

82:                                               ; preds = %15
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @_setmbcp(i32 %83)
  ret void
}

declare dso_local i32 @_getmbcp(...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @_setmbcp(i32) #1

declare dso_local i32 @_mbbtombc(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

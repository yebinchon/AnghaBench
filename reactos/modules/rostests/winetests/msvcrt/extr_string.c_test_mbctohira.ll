; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbctohira.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbctohira.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mbctohira.mbchira_932 = internal constant [17 x [2 x i32]] [[2 x i32] [i32 33106, i32 33106], [2 x i32] [i32 33107, i32 33107], [2 x i32] [i32 33108, i32 33108], [2 x i32] [i32 33109, i32 33109], [2 x i32] [i32 33440, i32 33440], [2 x i32] [i32 33599, i32 33599], [2 x i32] [i32 33600, i32 33439], [2 x i32] [i32 33662, i32 33501], [2 x i32] [i32 33663, i32 33663], [2 x i32] [i32 33664, i32 33502], [2 x i32] [i32 33683, i32 33521], [2 x i32] [i32 33684, i32 33684], [2 x i32] [i32 33686, i32 33686], [2 x i32] [i32 33687, i32 33687], [2 x i32] [i32 165, i32 165], [2 x i32] [i32 176, i32 176], [2 x i32] [i32 221, i32 221]], align 16
@_MB_CP_SBCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Expected 0x%x, got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mbctohira to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mbctohira() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @_getmbcp()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @_MB_CP_SBCS, align 4
  %9 = call i32 @_setmbcp(i32 %8)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %34, %0
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ARRAY_SIZE(i32** bitcast ([17 x [2 x i32]]* @test_mbctohira.mbchira_932 to i32**))
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [17 x [2 x i32]], [17 x [2 x i32]]* @test_mbctohira.mbchira_932, i64 0, i64 %16
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [17 x [2 x i32]], [17 x [2 x i32]]* @test_mbctohira.mbchira_932, i64 0, i64 %21
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @_mbctohira(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %14
  %35 = load i32, i32* %1, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %10

37:                                               ; preds = %10
  %38 = call i32 @_setmbcp(i32 932)
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %63, %37
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @ARRAY_SIZE(i32** bitcast ([17 x [2 x i32]]* @test_mbctohira.mbchira_932 to i32**))
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39
  %44 = load i32, i32* %1, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [17 x [2 x i32]], [17 x [2 x i32]]* @test_mbctohira.mbchira_932, i64 0, i64 %45
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @_mbctohira(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %1, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [17 x [2 x i32]], [17 x [2 x i32]]* @test_mbctohira.mbchira_932, i64 0, i64 %52
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %53, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %43
  %64 = load i32, i32* %1, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @_setmbcp(i32 %67)
  ret void
}

declare dso_local i32 @_getmbcp(...) #1

declare dso_local i32 @_setmbcp(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i8* @_mbctohira(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

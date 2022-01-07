; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbctombb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_mbctombb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mbctombb.mbcmbb_932 = internal constant [24 x [2 x i32]] [[2 x i32] [i32 33438, i32 33438], [2 x i32] [i32 33439, i32 167], [2 x i32] [i32 33521, i32 221], [2 x i32] [i32 33522, i32 33522], [2 x i32] [i32 33599, i32 33599], [2 x i32] [i32 33600, i32 167], [2 x i32] [i32 33662, i32 208], [2 x i32] [i32 33663, i32 33663], [2 x i32] [i32 33664, i32 209], [2 x i32] [i32 33686, i32 185], [2 x i32] [i32 33687, i32 33687], [2 x i32] [i32 33087, i32 33087], [2 x i32] [i32 33088, i32 32], [2 x i32] [i32 33100, i32 33100], [2 x i32] [i32 33103, i32 94], [2 x i32] [i32 33175, i32 64], [2 x i32] [i32 33176, i32 33176], [2 x i32] [i32 33368, i32 57], [2 x i32] [i32 33369, i32 33369], [2 x i32] [i32 33375, i32 33375], [2 x i32] [i32 33376, i32 65], [2 x i32] [i32 33521, i32 221], [2 x i32] [i32 33522, i32 33522], [2 x i32] zeroinitializer], align 16
@.str = private unnamed_addr constant [25 x i8] c"Expected 0x%x, got 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mbctombb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mbctombb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @_getmbcp()
  store i32 %5, i32* %4, align 4
  %6 = call i32 @_setmbcp(i32 932)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %33, %0
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [24 x [2 x i32]], [24 x [2 x i32]]* @test_mbctombb.mbcmbb_932, i64 0, i64 %9
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [24 x [2 x i32]], [24 x [2 x i32]]* @test_mbctombb.mbcmbb_932, i64 0, i64 %16
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @_mbctombb(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [24 x [2 x i32]], [24 x [2 x i32]]* @test_mbctombb.mbcmbb_932, i64 0, i64 %22
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %14
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @_setmbcp(i32 %37)
  ret void
}

declare dso_local i32 @_getmbcp(...) #1

declare dso_local i32 @_setmbcp(i32) #1

declare dso_local i32 @_mbctombb(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

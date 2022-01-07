; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbscmp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbscmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test__mbscmp.a = internal constant [2 x i8] c"a\00", align 1
@test__mbscmp.b = internal constant [2 x i8] c"b\00", align 1
@p_mbrlen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"_mbscmp tests\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__mbscmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__mbscmp() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @p_mbrlen, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @win_skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %47

6:                                                ; preds = %0
  %7 = call i32 @_mbscmp(i8* null, i8* null)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @INT_MAX, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = call i32 @_mbscmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.a, i64 0, i64 0), i8* null)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i32 @_mbscmp(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.a, i64 0, i64 0))
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @INT_MAX, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @_mbscmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.a, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.a, i64 0, i64 0))
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = call i32 @_mbscmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.a, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.b, i64 0, i64 0))
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp eq i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %1, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @_mbscmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.b, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test__mbscmp.a, i64 0, i64 0))
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = icmp eq i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %6, %4
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @_mbscmp(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

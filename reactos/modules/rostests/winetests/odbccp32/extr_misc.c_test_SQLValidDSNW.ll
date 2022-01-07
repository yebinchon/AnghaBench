; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLValidDSNW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLValidDSNW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SQLValidDSNW.invalid = internal constant [15 x i8] c"[]{}(),;?*=!@\\\00", align 1
@test_SQLValidDSNW.value = internal constant [7 x i8] c"wine10\00", align 1
@test_SQLValidDSNW.too_large = internal constant [35 x i8] c"Wine123456789012345678901234567890\00", align 16
@test_SQLValidDSNW.with_space = internal constant [13 x i8] c"Wine Vinegar\00", align 1
@test_SQLValidDSNW.max_dsn = internal constant [33 x i8] c"12345678901234567890123456789012\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLValidDSNW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLValidDSNW() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %5 = call i32 @lstrcpyW(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_SQLValidDSNW.value, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %24, %0
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @lstrlenW(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_SQLValidDSNW.invalid, i64 0, i64 0))
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [15 x i8], [15 x i8]* @test_SQLValidDSNW.invalid, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 4
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %17 = call i32 @SQLValidDSNW(i8* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %6

27:                                               ; preds = %6
  %28 = call i32 @SQLValidDSNW(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_SQLValidDSNW.too_large, i64 0, i64 0))
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @SQLValidDSNW(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @test_SQLValidDSNW.with_space, i64 0, i64 0))
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = call i32 @SQLValidDSNW(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @test_SQLValidDSNW.max_dsn, i64 0, i64 0))
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %41)
  ret void
}

declare dso_local i32 @lstrcpyW(i8*, i8*) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @SQLValidDSNW(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

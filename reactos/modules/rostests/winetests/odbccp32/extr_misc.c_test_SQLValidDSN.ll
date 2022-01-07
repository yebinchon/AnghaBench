; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLValidDSN.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLValidDSN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SQLValidDSN.invalid = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"[]{}(),;?*=!@\\\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wine10\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Wine123456789012345678901234567890\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Wine Vinegar\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"12345678901234567890123456789012\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLValidDSN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLValidDSN() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %5 = call i32 @strcpy(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %26, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i8*, i8** @test_SQLValidDSN.invalid, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i8*, i8** @test_SQLValidDSN.invalid, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 4
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %19 = call i32 @SQLValidDSN(i8* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %6

29:                                               ; preds = %6
  %30 = call i32 @SQLValidDSN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 @SQLValidDSN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = call i32 @SQLValidDSN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SQLValidDSN(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_uitools.c_test_IsRectEmpty.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_uitools.c_test_IsRectEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i64 }

@test_IsRectEmpty.rtest = internal constant [16 x %struct.anon] [%struct.anon { i32 0, i64 128 }, %struct.anon { i32 127, i64 128 }, %struct.anon { i32 130, i64 128 }, %struct.anon { i32 -1, i64 128 }, %struct.anon { i32 -2011, i64 128 }, %struct.anon { i32 129, i64 128 }, %struct.anon { i32 31, i64 128 }, %struct.anon { i32 881, i64 128 }, %struct.anon { i32 -1721, i64 128 }, %struct.anon { i32 11, i64 128 }, %struct.anon { i32 -11, i64 128 }, %struct.anon { i32 11, i64 128 }, %struct.anon { i32 11, i64 128 }, %struct.anon { i32 101, i64 131 }, %struct.anon { i32 1, i64 131 }, %struct.anon { i32 -109, i64 131 }], align 16
@.str = private unnamed_addr constant [41 x i8] c"Test %d: IsRectEmpty returned %s for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IsRectEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IsRectEmpty() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp ult i64 %5, 16
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* @test_IsRectEmpty.rtest, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = call i64 @IsRectEmpty(i32* %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* @test_IsRectEmpty.rtest, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %13, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = load i64, i64* %1, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* %2, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [16 x %struct.anon], [16 x %struct.anon]* @test_IsRectEmpty.rtest, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = call i32 @wine_dbgstr_rect(i32* %29)
  %31 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %25, i32 %30)
  br label %32

32:                                               ; preds = %7
  %33 = load i32, i32* %2, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %3

35:                                               ; preds = %3
  ret void
}

declare dso_local i64 @IsRectEmpty(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

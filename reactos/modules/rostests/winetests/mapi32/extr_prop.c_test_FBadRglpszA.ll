; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_FBadRglpszA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_FBadRglpszA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_FBadRglpszA.szString = internal global [9 x i8] c"A String\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"FBadRglpszA(Null): expected TRUE, got FALSE\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"FBadRglpszA(Nulls): expected TRUE, got FALSE\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"FBadRglpszA(valid): expected FALSE, got TRUE\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"FBadRglpszA(1 invalid): expected TRUE, got FALSE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_FBadRglpszA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_FBadRglpszA() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca i64, align 8
  %3 = call i64 @pFBadRglpszA(i8** null, i32 10)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @TRUE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %9 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 3
  store i8* null, i8** %9, align 8
  %10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 2
  store i8* null, i8** %10, align 16
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 1
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  store i8* null, i8** %12, align 16
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %14 = call i64 @pFBadRglpszA(i8** %13, i32 4)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @TRUE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_FBadRglpszA.szString, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_FBadRglpszA.szString, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_FBadRglpszA.szString, i64 0, i64 0), i8** %22, align 16
  %23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %24 = call i64 @pFBadRglpszA(i8** %23, i32 3)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @FALSE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %31 = call i64 @pFBadRglpszA(i8** %30, i32 4)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @TRUE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pFBadRglpszA(i8**, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

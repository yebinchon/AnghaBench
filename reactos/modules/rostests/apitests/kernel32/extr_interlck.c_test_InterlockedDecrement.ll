; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_interlck.c_test_InterlockedDecrement.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_interlck.c_test_InterlockedDecrement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Expected 0 and 0, got %ld and %ld\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Expected -1 and -1, got %ld and %ld\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Expected -2 and -2, got %ld and %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InterlockedDecrement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InterlockedDecrement() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %3 = call i32 @InterlockedDecrement(i32* %1)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %6, %0
  %10 = phi i1 [ false, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store i32 0, i32* %1, align 4
  %15 = call i32 @InterlockedDecrement(i32* %1)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, -1
  br label %21

21:                                               ; preds = %18, %9
  %22 = phi i1 [ false, %9 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  store i32 -1, i32* %1, align 4
  %27 = call i32 @InterlockedDecrement(i32* %1)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, -2
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %1, align 4
  %32 = icmp eq i32 %31, -2
  br label %33

33:                                               ; preds = %30, %21
  %34 = phi i1 [ false, %21 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @InterlockedDecrement(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

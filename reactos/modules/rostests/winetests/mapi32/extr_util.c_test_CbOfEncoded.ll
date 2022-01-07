; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_util.c_test_CbOfEncoded.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_util.c_test_CbOfEncoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"CbOfEncoded(length %d): expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CbOfEncoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CbOfEncoded() #0 {
  %1 = alloca [129 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %31, %0
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %7, 128
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %10, 3
  %12 = lshr i32 %11, 2
  %13 = add i32 %12, 1
  %14 = mul i32 %13, 3
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  %16 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i8 signext 0, i32 129)
  %18 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @memset(i8* %18, i8 signext 63, i32 %19)
  %21 = getelementptr inbounds [129 x i8], [129 x i8]* %1, i64 0, i64 0
  %22 = call i64 @pCbOfEncoded(i8* %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %9
  %32 = load i32, i32* %2, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @pCbOfEncoded(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_wsprintf.c_CharUpperTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_wsprintf.c_CharUpperTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"CharUpper failed - 16bit input (0x%0lx) returned 32bit result (0x%0lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CharUpperTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CharUpperTest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %18, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @CharUpperA(i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %5

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  ret void
}

declare dso_local i64 @CharUpperA(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

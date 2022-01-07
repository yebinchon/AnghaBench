; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/dibtests/palbitblt/extr_pal.c_UpdatePalette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/dibtests/palbitblt/extr_pal.c_UpdatePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UpdatePalette.c = internal global i32 0, align 4
@W_WIDTH = common dso_local global i32 0, align 4
@W_HEIGHT = common dso_local global i32 0, align 4
@dibits = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UpdatePalette(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @W_WIDTH, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @W_HEIGHT, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32, i32* @UpdatePalette.c, align 4
  %17 = urem i32 %16, 256
  %18 = load i32*, i32** @dibits, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 320
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* @UpdatePalette.c, align 4
  %30 = icmp ugt i32 %29, 512
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* @UpdatePalette.c, align 4
  br label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @UpdatePalette.c, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* @UpdatePalette.c, align 4
  br label %35

35:                                               ; preds = %32, %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @DoBlt(i32 %40)
  ret void
}

declare dso_local i32 @DoBlt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

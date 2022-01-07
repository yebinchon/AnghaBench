; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_linear2ulaw.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msg711.acm/extr_msg711.c_linear2ulaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLIP = common dso_local global i16 0, align 2
@BIAS = common dso_local global i32 0, align 4
@seg_uend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @linear2ulaw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @linear2ulaw(i16 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  %7 = load i16, i16* %3, align 2
  %8 = sext i16 %7 to i32
  %9 = ashr i32 %8, 2
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %3, align 2
  %11 = load i16, i16* %3, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 0, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %3, align 2
  store i16 127, i16* %4, align 2
  br label %20

19:                                               ; preds = %1
  store i16 255, i16* %4, align 2
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i16, i16* %3, align 2
  %22 = sext i16 %21 to i32
  %23 = load i16, i16* @CLIP, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i16, i16* @CLIP, align 2
  store i16 %27, i16* %3, align 2
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i32, i32* @BIAS, align 4
  %30 = ashr i32 %29, 2
  %31 = load i16, i16* %3, align 2
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, %30
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %3, align 2
  %35 = load i16, i16* %3, align 2
  %36 = load i32, i32* @seg_uend, align 4
  %37 = call signext i16 @search(i16 signext %35, i32 %36, i32 8)
  store i16 %37, i16* %5, align 2
  %38 = load i16, i16* %5, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp sge i32 %39, 8
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i16, i16* %4, align 2
  %43 = sext i16 %42 to i32
  %44 = xor i32 127, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %2, align 1
  br label %67

46:                                               ; preds = %28
  %47 = load i16, i16* %5, align 2
  %48 = sext i16 %47 to i32
  %49 = shl i32 %48, 4
  %50 = trunc i32 %49 to i8
  %51 = zext i8 %50 to i32
  %52 = load i16, i16* %3, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* %5, align 2
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %55, 1
  %57 = ashr i32 %53, %56
  %58 = and i32 %57, 15
  %59 = or i32 %51, %58
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %6, align 1
  %61 = load i8, i8* %6, align 1
  %62 = zext i8 %61 to i32
  %63 = load i16, i16* %4, align 2
  %64 = sext i16 %63 to i32
  %65 = xor i32 %62, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %2, align 1
  br label %67

67:                                               ; preds = %46, %41
  %68 = load i8, i8* %2, align 1
  ret i8 %68
}

declare dso_local signext i16 @search(i16 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

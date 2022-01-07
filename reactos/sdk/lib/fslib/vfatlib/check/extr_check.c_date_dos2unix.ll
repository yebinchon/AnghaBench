; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_date_dos2unix.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_date_dos2unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@day_n = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16, i16)* @date_dos2unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @date_dos2unix(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 5
  %11 = and i32 %10, 15
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i32
  %19 = ashr i32 %18, 9
  store i32 %19, i32* %6, align 4
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = and i32 %21, 31
  %23 = mul nsw i32 %22, 2
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = ashr i32 %25, 5
  %27 = and i32 %26, 63
  %28 = mul nsw i32 60, %27
  %29 = add nsw i32 %23, %28
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %31, 11
  %33 = mul nsw i32 %32, 3600
  %34 = add nsw i32 %29, %33
  %35 = load i16, i16* %4, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 31
  %38 = sub nsw i32 %37, 1
  %39 = load i16*, i16** @day_n, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %38, %44
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 4
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 365
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %16
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 2
  br label %58

58:                                               ; preds = %55, %16
  %59 = phi i1 [ false, %16 ], [ %57, %55 ]
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = sub nsw i32 %51, %61
  %63 = add nsw i32 %62, 3653
  %64 = mul nsw i32 86400, %63
  %65 = add nsw i32 %34, %64
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %7, align 2
  %67 = load i16, i16* %7, align 2
  ret i16 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

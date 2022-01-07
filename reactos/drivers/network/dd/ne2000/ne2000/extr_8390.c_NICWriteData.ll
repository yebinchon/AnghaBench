; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICWriteData.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICWriteData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NICWriteData(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @NICReadDataAlign(i32 %15, i32* %10, i32 %17, i32 2)
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @NICWriteDataAlign(i32 %25, i32 %27, i32* %10, i32 2)
  %29 = load i32*, i32** %8, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %14, %4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 65534
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @NICWriteDataAlign(i32 %45, i32 %46, i32* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @NICReadDataAlign(i32 %57, i32* %10, i32 %58, i32 2)
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 65280
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %61, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @NICWriteDataAlign(i32 %65, i32 %66, i32* %10, i32 2)
  br label %74

68:                                               ; preds = %38
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @NICWriteDataAlign(i32 %69, i32 %70, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %42
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @NICReadDataAlign(i32, i32*, i32, i32) #1

declare dso_local i32 @NICWriteDataAlign(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_lolwut.c_lwDrawLine.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_lolwut.c_lwDrawLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwDrawLine(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %19, %20
  %22 = call i32 @abs(i32 %21) #3
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @abs(i32 %25) #3
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 -1
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 -1
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %17, align 4
  br label %40

40:                                               ; preds = %6, %79
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @lwDrawPixel(i32* %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %80

54:                                               ; preds = %49, %40
  %55 = load i32, i32* %17, align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %17, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %61, %54
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %72, %68
  br label %40

80:                                               ; preds = %53
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @lwDrawPixel(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

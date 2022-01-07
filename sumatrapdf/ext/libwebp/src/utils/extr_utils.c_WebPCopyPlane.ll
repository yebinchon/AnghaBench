; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_utils.c_WebPCopyPlane.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/utils/extr_utils.c_WebPCopyPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WebPCopyPlane(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi i1 [ false, %6 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %26, %27
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ false, %18 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  br label %33

33:                                               ; preds = %37, %29
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %12, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %9, align 8
  br label %33

50:                                               ; preds = %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

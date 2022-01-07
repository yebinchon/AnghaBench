; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_is_pixel_on.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_is_pixel_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_pixel_on(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 8
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = srem i32 %26, 8
  store i32 %27, i32* %13, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = ashr i32 128, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %102

38:                                               ; preds = %5
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %102

53:                                               ; preds = %38
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 24
  br i1 %55, label %56, label %100

56:                                               ; preds = %53
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 3
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %62, 3
  %64 = add nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %57, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %56
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 3
  %77 = add nsw i32 %74, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %70, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %69
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %85, 3
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 %89, 3
  %91 = add nsw i32 %88, %90
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %84, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %83, %69, %56
  %98 = phi i1 [ false, %69 ], [ false, %56 ], [ %96, %83 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %102

100:                                              ; preds = %53
  %101 = load i32, i32* @False, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %97, %41, %16
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

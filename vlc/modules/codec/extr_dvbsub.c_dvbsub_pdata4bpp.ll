; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_dvbsub_pdata4bpp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_dvbsub_pdata4bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*)* @dvbsub_pdata4bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvbsub_pdata4bpp(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %103, %75, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @bs_eof(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %108

22:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @bs_read(i32* %23, i32 4)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %72

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @bs_read(i32* %29, i32 1)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @bs_read(i32* %33, i32 3)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %10, align 4
  br label %41

40:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %71

42:                                               ; preds = %28
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @bs_read(i32* %43, i32 1)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @bs_read(i32* %47, i32 2)
  %49 = add nsw i32 4, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @bs_read(i32* %50, i32 4)
  store i32 %51, i32* %11, align 4
  br label %70

52:                                               ; preds = %42
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @bs_read(i32* %53, i32 2)
  switch i32 %54, label %69 [
    i32 0, label %55
    i32 1, label %56
    i32 2, label %57
    i32 3, label %63
  ]

55:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %69

56:                                               ; preds = %52
  store i32 2, i32* %10, align 4
  br label %69

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @bs_read(i32* %58, i32 4)
  %60 = add nsw i32 9, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @bs_read(i32* %61, i32 4)
  store i32 %62, i32* %11, align 4
  br label %69

63:                                               ; preds = %52
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @bs_read(i32* %64, i32 8)
  %66 = add nsw i32 25, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @bs_read(i32* %67, i32 4)
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %52, %63, %57, %56, %55
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %41
  br label %72

72:                                               ; preds = %71, %27
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %12

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %77, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %108

84:                                               ; preds = %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  br label %103

94:                                               ; preds = %84
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @memset(i32* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %87
  %104 = load i32, i32* %10, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %12

108:                                              ; preds = %83, %20
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @bs_align(i32* %109)
  ret void
}

declare dso_local i32 @bs_eof(i32*) #1

declare dso_local i32 @bs_read(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bs_align(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_dvbsub_pdata2bpp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_dvbsub_pdata2bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*)* @dvbsub_pdata2bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvbsub_pdata2bpp(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
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

12:                                               ; preds = %95, %67, %4
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
  br i1 %21, label %22, label %100

22:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @bs_read(i32* %23, i32 2)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %64

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @bs_read(i32* %29, i32 1)
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @bs_read(i32* %33, i32 3)
  %35 = add nsw i32 3, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @bs_read(i32* %36, i32 2)
  store i32 %37, i32* %11, align 4
  br label %63

38:                                               ; preds = %28
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @bs_read(i32* %39, i32 1)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @bs_read(i32* %43, i32 2)
  switch i32 %44, label %59 [
    i32 0, label %45
    i32 1, label %46
    i32 2, label %47
    i32 3, label %53
  ]

45:                                               ; preds = %42
  store i32 1, i32* %9, align 4
  br label %60

46:                                               ; preds = %42
  store i32 2, i32* %10, align 4
  br label %60

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @bs_read(i32* %48, i32 4)
  %50 = add nsw i32 12, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @bs_read(i32* %51, i32 2)
  store i32 %52, i32* %11, align 4
  br label %60

53:                                               ; preds = %42
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @bs_read(i32* %54, i32 8)
  %56 = add nsw i32 29, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @bs_read(i32* %57, i32 2)
  store i32 %58, i32* %11, align 4
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %53, %47, %46, %45
  br label %62

61:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %32
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %12

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %69, %71
  %73 = load i32, i32* %7, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %100

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  br label %95

86:                                               ; preds = %76
  %87 = load i32*, i32** %6, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @memset(i32* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %79
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %12

100:                                              ; preds = %75, %20
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @bs_align(i32* %101)
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

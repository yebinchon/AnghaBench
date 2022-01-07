; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SetLength.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_SetLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_INDICATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @SetLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @SetLength(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  store i32* %6, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* @SIZE_INDICATOR, align 4
  %18 = or i32 %17, 1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %86

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 65536
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* @SIZE_INDICATOR, align 4
  %29 = or i32 %28, 2
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %85

40:                                               ; preds = %24
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 16777216
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load i32, i32* @SIZE_INDICATOR, align 4
  %45 = or i32 %44, 3
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = ashr i32 %48, 16
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 255
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %84

61:                                               ; preds = %40
  %62 = load i32, i32* @SIZE_INDICATOR, align 4
  %63 = or i32 %62, 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 24
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = ashr i32 %70, 16
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %5, align 8
  store i32 %81, i32* %82, align 4
  br label %84

84:                                               ; preds = %61, %43
  br label %85

85:                                               ; preds = %84, %27
  br label %86

86:                                               ; preds = %85, %16
  br label %87

87:                                               ; preds = %86, %9
  %88 = load i32*, i32** %5, align 8
  ret i32* %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

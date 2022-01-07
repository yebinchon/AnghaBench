; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_chroma/extr_copy.c_CopyPlane.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_chroma/extr_copy.c_CopyPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, i32, i32)* @CopyPlane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyPlane(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @__MIN(i64 %20, i64 %21)
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %87

25:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %83, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %16, align 8
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  store i32 0, i32* %17, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %17, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %13, align 8
  %40 = udiv i64 %39, 2
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32*, i32** %16, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %16, align 8
  %45 = load i32, i32* %43, align 4
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 15
  %48 = ashr i32 %45, %47
  %49 = load i32*, i32** %15, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %15, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %17, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %17, align 4
  br label %36

54:                                               ; preds = %36
  br label %76

55:                                               ; preds = %30
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %72, %55
  %57 = load i32, i32* %18, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %13, align 8
  %60 = udiv i64 %59, 2
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %16, align 8
  %65 = load i32, i32* %63, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 0, %66
  %68 = and i32 %67, 15
  %69 = shl i32 %65, %68
  %70 = load i32*, i32** %15, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %15, align 8
  store i32 %69, i32* %70, align 4
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %18, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %18, align 4
  br label %56

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i64, i64* %10, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 %80
  store i32* %82, i32** %7, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %26

86:                                               ; preds = %26
  br label %120

87:                                               ; preds = %6
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = mul i64 %94, %96
  %98 = call i32 @memcpy(i32* %92, i32* %93, i64 %97)
  br label %119

99:                                               ; preds = %87
  store i32 0, i32* %19, align 4
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i32 @memcpy(i32* %105, i32* %106, i64 %107)
  %109 = load i64, i64* %10, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %109
  store i32* %111, i32** %9, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %7, align 8
  br label %115

115:                                              ; preds = %104
  %116 = load i32, i32* %19, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %19, align 4
  br label %100

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %86
  ret void
}

declare dso_local i64 @__MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_convert_samples_short.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_convert_samples_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_samples_short.channel_selector = internal global [3 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 129, i32 0], [2 x i32] [i32 130, i32 128]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16**, i32, i32, float**, i32, i32)* @convert_samples_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_samples_short(i32 %0, i16** %1, i32 %2, i32 %3, float** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i16**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i16** %1, i16*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float** %4, float*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %7
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %21, 2
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 6
  br i1 %25, label %26, label %56

26:                                               ; preds = %23
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* @convert_samples_short.channel_selector, i64 0, i64 %33
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i16**, i16*** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16*, i16** %39, i64 %41
  %43 = load i16*, i16** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i32, i32* %11, align 4
  %48 = load float**, float*** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @compute_samples(i32 %38, i16* %46, i32 %47, float** %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %27

55:                                               ; preds = %27
  br label %115

56:                                               ; preds = %23, %20, %7
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %89, %64
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load i16**, i16*** %9, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16*, i16** %71, i64 %73
  %75 = load i16*, i16** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  %79 = load float**, float*** %12, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float*, float** %79, i64 %81
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @copy_samples(i16* %78, float* %86, i32 %87)
  br label %89

89:                                               ; preds = %70
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %66

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load i16**, i16*** %9, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16*, i16** %98, i64 %100
  %102 = load i16*, i16** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %102, i64 %104
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 2, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memset(i16* %105, i32 0, i32 %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %93

114:                                              ; preds = %93
  br label %115

115:                                              ; preds = %114, %55
  ret void
}

declare dso_local i32 @compute_samples(i32, i16*, i32, float**, i32, i32) #1

declare dso_local i32 @copy_samples(i16*, float*, i32) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

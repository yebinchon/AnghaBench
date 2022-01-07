; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c_csa_BlockCypher.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c_csa_BlockCypher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_sbox = common dso_local global i32* null, align 8
@block_perm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @csa_BlockCypher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_BlockCypher(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [9 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %23
  store i32 %20, i32* %24, align 4
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %12

28:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %88, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 56
  br i1 %31, label %32, label %91

32:                                               ; preds = %29
  %33 = load i32*, i32** @block_sbox, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %40 = load i32, i32* %39, align 16
  %41 = xor i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %33, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** @block_perm, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %53, %55
  %57 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %59 = load i32, i32* %58, align 16
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %59, %61
  %63 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %65, %67
  %69 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  store i32 %68, i32* %69, align 16
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = xor i32 %74, %75
  %77 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %79 = load i32, i32* %78, align 16
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = xor i32 %82, %83
  %85 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 %84, i32* %85, align 16
  %86 = load i32, i32* %10, align 4
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %32
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %29

91:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %105, %91
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %93, 8
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %92

108:                                              ; preds = %92
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

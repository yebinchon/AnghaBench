; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c_csa_BlockDecypher.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mpeg/extr_csa.c_csa_BlockDecypher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_sbox = common dso_local global i32* null, align 8
@block_perm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @csa_BlockDecypher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csa_BlockDecypher(i32* %0, i32* %1, i32* %2) #0 {
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
  store i32 56, i32* %7, align 4
  br label %29

29:                                               ; preds = %94, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %29
  %33 = load i32*, i32** @block_sbox, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  %40 = load i32, i32* %39, align 4
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
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = xor i32 %53, %54
  %56 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 7
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 6
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  %61 = load i32, i32* %60, align 16
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %63 = load i32, i32* %62, align 16
  %64 = xor i32 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = xor i32 %64, %65
  %67 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 5
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %71 = load i32, i32* %70, align 16
  %72 = xor i32 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = xor i32 %72, %73
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 4
  store i32 %74, i32* %75, align 16
  %76 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %79 = load i32, i32* %78, align 16
  %80 = xor i32 %77, %79
  %81 = load i32, i32* %11, align 4
  %82 = xor i32 %80, %81
  %83 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 3
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 2
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  %88 = load i32, i32* %87, align 16
  %89 = load i32, i32* %11, align 4
  %90 = xor i32 %88, %89
  %91 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %10, align 4
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 8
  store i32 %92, i32* %93, align 16
  br label %94

94:                                               ; preds = %32
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  br label %29

97:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %111, %97
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 8
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %9, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %98

114:                                              ; preds = %98
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

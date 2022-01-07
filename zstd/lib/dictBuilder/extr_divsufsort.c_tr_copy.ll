; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_tr_copy.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_tr_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32)* @tr_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_copy(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = sub nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %19, align 4
  %28 = load i32*, i32** %10, align 8
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  store i32* %30, i32** %16, align 8
  br label %31

31:                                               ; preds = %65, %7
  %32 = load i32*, i32** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = icmp ule i32* %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %18, align 4
  %40 = icmp sle i32 0, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %18, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load i32, i32* %18, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %16, align 8
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %49, %41, %35
  br label %65

65:                                               ; preds = %64
  %66 = load i32*, i32** %15, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %15, align 8
  br label %31

68:                                               ; preds = %31
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -1
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32* %72, i32** %17, align 8
  %73 = load i32*, i32** %12, align 8
  store i32* %73, i32** %16, align 8
  br label %74

74:                                               ; preds = %108, %68
  %75 = load i32*, i32** %17, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = icmp ult i32* %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %18, align 4
  %83 = icmp sle i32 0, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %84
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %16, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 -1
  store i32* %95, i32** %16, align 8
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %16, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = ptrtoint i32* %96 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %92, %84, %78
  br label %108

108:                                              ; preds = %107
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 -1
  store i32* %110, i32** %15, align 8
  br label %74

111:                                              ; preds = %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

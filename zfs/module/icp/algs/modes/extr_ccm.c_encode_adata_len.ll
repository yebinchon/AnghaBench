; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ccm.c_encode_adata_len.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ccm.c_encode_adata_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64*)* @encode_adata_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_adata_len(i64 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 65280
  br i1 %8, label %9, label %22

9:                                                ; preds = %3
  %10 = load i64*, i64** %6, align 8
  store i64 2, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %11, 65280
  %13 = lshr i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 255
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  br label %111

22:                                               ; preds = %3
  %23 = load i64, i64* %4, align 8
  %24 = icmp uge i64 %23, 65280
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = icmp ult i64 %26, 2147483648
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load i64*, i64** %6, align 8
  store i64 6, i64* %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 255, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 254, i32* %33, align 4
  %34 = load i64, i64* %4, align 8
  %35 = and i64 %34, 4278190080
  %36 = lshr i64 %35, 24
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* %4, align 8
  %41 = and i64 %40, 16711680
  %42 = lshr i64 %41, 16
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, 65280
  %48 = lshr i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %4, align 8
  %53 = and i64 %52, 255
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  store i32 %54, i32* %56, align 4
  br label %110

57:                                               ; preds = %25, %22
  %58 = load i64*, i64** %6, align 8
  store i64 10, i64* %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 255, i32* %60, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 255, i32* %62, align 4
  %63 = load i64, i64* %4, align 8
  %64 = and i64 %63, -72057594037927936
  %65 = lshr i64 %64, 56
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %4, align 8
  %70 = and i64 %69, 71776119061217280
  %71 = lshr i64 %70, 48
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %4, align 8
  %76 = and i64 %75, 280375465082880
  %77 = lshr i64 %76, 40
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32 %78, i32* %80, align 4
  %81 = load i64, i64* %4, align 8
  %82 = and i64 %81, 1095216660480
  %83 = lshr i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* %4, align 8
  %88 = and i64 %87, 4278190080
  %89 = lshr i64 %88, 24
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  store i32 %90, i32* %92, align 4
  %93 = load i64, i64* %4, align 8
  %94 = and i64 %93, 16711680
  %95 = lshr i64 %94, 16
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 7
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %4, align 8
  %100 = and i64 %99, 65280
  %101 = lshr i64 %100, 8
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  store i32 %102, i32* %104, align 4
  %105 = load i64, i64* %4, align 8
  %106 = and i64 %105, 255
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 9
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %57, %28
  br label %111

111:                                              ; preds = %110, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_compute_offset.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_compute_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32*)* @compute_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compute_offset(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_3__* %4 to { i32, i64 }*
  %9 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %8, i32 0, i32 1
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 3
  br i1 %13, label %14, label %68

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %67

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi i32 [ %40, %35 ], [ %45, %41 ]
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %6, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %27
  br label %87

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %6, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %80, i32* %82, align 4
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %68, %67
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

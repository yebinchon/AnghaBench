; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_chs.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_block_if.c_blockif_chs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_ctxt = type { i32, i64, i64 }

@BLOCKIF_SIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blockif_chs(%struct.blockif_ctxt* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.blockif_ctxt*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.blockif_ctxt* %0, %struct.blockif_ctxt** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %5, align 8
  %14 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* @BLOCKIF_SIG, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %5, align 8
  %22 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.blockif_ctxt*, %struct.blockif_ctxt** %5, align 8
  %25 = getelementptr inbounds %struct.blockif_ctxt, %struct.blockif_ctxt* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sdiv i64 %23, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp sgt i64 %28, 267382800
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i64 267382800, i64* %9, align 8
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i64, i64* %9, align 8
  %33 = icmp sge i64 %32, 66060288
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  store i64 255, i64* %11, align 8
  store i32 16, i32* %12, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = sdiv i64 %35, %36
  store i64 %37, i64* %10, align 8
  br label %73

38:                                               ; preds = %31
  store i64 17, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sdiv i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %42, 1023
  %44 = sdiv i64 %43, 1024
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 4, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, 1024
  %53 = sext i32 %52 to i64
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 16
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %49
  store i64 31, i64* %11, align 8
  store i32 16, i32* %12, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sdiv i64 %59, %60
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 %64, 1024
  %66 = sext i32 %65 to i64
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  store i64 63, i64* %11, align 8
  store i32 16, i32* %12, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sdiv i64 %69, %70
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = sdiv i64 %74, %76
  %78 = load i64*, i64** %6, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_redundantParams.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_paramgrill.c_redundantParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@wlog_ind = common dso_local global i64 0, align 8
@mintable = common dso_local global i32* null, align 8
@clog_ind = common dso_local global i64 0, align 8
@strt_ind = common dso_local global i64 0, align 8
@ZSTD_btlazy2 = common dso_local global i32 0, align 4
@slog_ind = common dso_local global i64 0, align 8
@hlog_ind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @redundantParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redundantParams(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32* %0, i32** %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @pvalsToCParams(i32* %10)
  %12 = call i64 @ZSTD_estimateCStreamSize_usingCParams(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %84, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @wlog_ind, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = load i64, i64* %6, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @wlog_ind, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @mintable, align 8
  %34 = load i64, i64* @wlog_ind, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %84, label %38

38:                                               ; preds = %27, %16
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @clog_ind, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @wlog_ind, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @strt_ind, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ZSTD_btlazy2, align 4
  %55 = icmp sgt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = add nsw i32 %48, %56
  %58 = icmp sgt i32 %43, %57
  br i1 %58, label %84, label %59

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @slog_ind, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @clog_ind, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %64, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @hlog_ind, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @wlog_ind, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = icmp sgt i32 %76, %82
  br label %84

84:                                               ; preds = %71, %59, %38, %27, %3
  %85 = phi i1 [ true, %59 ], [ true, %38 ], [ true, %27 ], [ true, %3 ], [ %83, %71 ]
  %86 = zext i1 %85 to i32
  ret i32 %86
}

declare dso_local i64 @ZSTD_estimateCStreamSize_usingCParams(i32) #1

declare dso_local i32 @pvalsToCParams(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

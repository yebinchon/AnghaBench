; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_ValidateChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_ValidateChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kChunks = common dso_local global %struct.TYPE_2__* null, align 8
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@NO_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32, i32, i32, i32*)* @ValidateChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ValidateChunk(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kChunks, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = call i64 @WebPMuxNumChunks(i32* %15, i32 %20, i32* %21)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* @WEBP_MUX_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i64, i64* %14, align 8
  store i64 %27, i64* %7, align 8
  br label %54

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %37, i64* %7, align 8
  br label %54

38:                                               ; preds = %31, %28
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NO_FLAG, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IsNotCompatible(i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %51, i64* %7, align 8
  br label %54

52:                                               ; preds = %42, %38
  %53 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %52, %50, %36, %26
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i64 @WebPMuxNumChunks(i32*, i32, i32*) #1

declare dso_local i64 @IsNotCompatible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

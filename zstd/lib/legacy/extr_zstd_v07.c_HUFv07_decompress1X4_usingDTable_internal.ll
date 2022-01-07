; ModuleID = '/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress1X4_usingDTable_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress1X4_usingDTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@corruption_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @HUFv07_decompress1X4_usingDTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUFv07_decompress1X4_usingDTable_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @BITv07_initDStream(i32* %12, i8* %19, i64 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i64 @HUFv07_isError(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i64, i64* %13, align 8
  store i64 %26, i64* %6, align 8
  br label %54

27:                                               ; preds = %5
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %17, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @HUFv07_getDTableDesc(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @HUFv07_decodeStreamX4(i32* %41, i32* %12, i32* %42, i32* %43, i32 %45)
  %47 = call i32 @BITv07_endOfDStream(i32* %12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* @corruption_detected, align 4
  %51 = call i64 @ERROR(i32 %50)
  store i64 %51, i64* %6, align 8
  br label %54

52:                                               ; preds = %27
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %52, %49, %25
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

declare dso_local i64 @BITv07_initDStream(i32*, i8*, i64) #1

declare dso_local i64 @HUFv07_isError(i64) #1

declare dso_local i32 @HUFv07_getDTableDesc(i32*) #1

declare dso_local i32 @HUFv07_decodeStreamX4(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BITv07_endOfDStream(i32*) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

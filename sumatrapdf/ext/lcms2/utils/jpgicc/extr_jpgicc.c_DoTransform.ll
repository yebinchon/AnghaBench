; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_DoTransform.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_DoTransform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

@Decompressor = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@Compressor = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@PT_Lab = common dso_local global i32 0, align 4
@EmbedProfile = common dso_local global i64 0, align 8
@cOutProf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @DoTransform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoTransform(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 6), align 8
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Compressor, i32 0, i32 4), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 5), align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Compressor, i32 0, i32 3), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 4), align 8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Compressor, i32 0, i32 2), align 4
  %10 = call i32 @jpeg_start_decompress(%struct.TYPE_11__* @Decompressor)
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @jpeg_start_compress(%struct.TYPE_10__* @Compressor, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PT_Lab, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @SetITUFax(%struct.TYPE_10__* @Compressor)
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i64, i64* @EmbedProfile, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @cOutProf, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* @cOutProf, align 8
  %26 = call i32 @DoEmbedProfile(i64 %25)
  br label %27

27:                                               ; preds = %24, %21, %18
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 0), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 1), align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i64 @malloc(i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Compressor, i32 0, i32 0), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @Compressor, i32 0, i32 1), align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i64 @malloc(i32 %34)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %40, %27
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 2), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 3), align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = call i32 @jpeg_read_scanlines(%struct.TYPE_11__* @Decompressor, i64* %5, i32 1)
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @Decompressor, i32 0, i32 0), align 8
  %46 = call i32 @cmsDoTransform(i32* null, i32 %42, i64 %43, i64 %44, i32 %45)
  %47 = call i32 @jpeg_write_scanlines(%struct.TYPE_10__* @Compressor, i64* %6, i32 1)
  br label %36

48:                                               ; preds = %36
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @free(i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @free(i64 %51)
  %53 = call i32 @jpeg_finish_decompress(%struct.TYPE_11__* @Decompressor)
  %54 = call i32 @jpeg_finish_compress(%struct.TYPE_10__* @Compressor)
  %55 = load i32, i32* @TRUE, align 4
  ret i32 %55
}

declare dso_local i32 @jpeg_start_decompress(%struct.TYPE_11__*) #1

declare dso_local i32 @jpeg_start_compress(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SetITUFax(%struct.TYPE_10__*) #1

declare dso_local i32 @DoEmbedProfile(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @jpeg_read_scanlines(%struct.TYPE_11__*, i64*, i32) #1

declare dso_local i32 @cmsDoTransform(i32*, i32, i64, i64, i32) #1

declare dso_local i32 @jpeg_write_scanlines(%struct.TYPE_10__*, i64*, i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @jpeg_finish_decompress(%struct.TYPE_11__*) #1

declare dso_local i32 @jpeg_finish_compress(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_streaming_start.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_streaming_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32**, i32* }

@stb__window = common dso_local global i32 0, align 4
@xtb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stb__hashsize = common dso_local global i32 0, align 4
@stb__running_adler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stb_compress_streaming_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb_compress_streaming_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @stb__window, align 4
  %4 = mul nsw i32 %3, 3
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 0), align 8
  %6 = call i64 @malloc(i32 %5)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 10), align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 10), align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %50

11:                                               ; preds = %0
  %12 = load i32, i32* @stb__hashsize, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i32**
  store i32** %17, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %18 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 10), align 8
  %22 = call i32 @free(i32* %21)
  store i32 0, i32* %1, align 4
  br label %50

23:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @stb__hashsize, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 9), align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %24

36:                                               ; preds = %24
  %37 = load i32, i32* @stb__hashsize, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 7), align 8
  %39 = load i32, i32* @stb__window, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 2), align 8
  %40 = load i32, i32* @stb__window, align 4
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 8
  %41 = call i32 @stb_out(i32 87)
  %42 = call i32 @stb_out(i32 188)
  %43 = call i32 @stb_out2(i32 0)
  %44 = call i32 @stb_out4(i32 0)
  %45 = call i64 (...) @stb_out_backpatch_id()
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), align 8
  %47 = call i32 @stb_out4(i32 0)
  %48 = load i32, i32* @stb__window, align 4
  %49 = call i32 @stb_out4(i32 %48)
  store i32 1, i32* @stb__running_adler, align 4
  store i32 1, i32* %1, align 4
  br label %50

50:                                               ; preds = %36, %20, %10
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @stb_out(i32) #1

declare dso_local i32 @stb_out2(i32) #1

declare dso_local i32 @stb_out4(i32) #1

declare dso_local i64 @stb_out_backpatch_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

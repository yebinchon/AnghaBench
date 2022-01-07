; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_streaming_end.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_compress_streaming_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i64, i64, i32, i64 }

@xtb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stb__running_adler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @stb_compress_streaming_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb_compress_streaming_end() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 7), align 8
  %4 = add nsw i64 %2, %3
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 7), align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 6), align 8
  %13 = call i32 @stb_compress_chunk(i64 %1, i64 %4, i64 %7, i64 %10, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), i64 %11, i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 5), align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), align 8
  %18 = sub nsw i64 %16, %17
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 4), align 8
  %20 = call i32 @outliterals(i64 %18, i64 %19)
  %21 = call i32 @stb_out2(i32 1530)
  %22 = load i32, i32* @stb__running_adler, align 4
  %23 = call i32 @stb_out4(i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 3), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 2), align 8
  %26 = call i32 @stb_out_backpatch(i32 %24, i32 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 1), align 8
  %28 = call i32 @free(i64 %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xtb, i32 0, i32 0), align 8
  %30 = call i32 @free(i64 %29)
  ret i32 1
}

declare dso_local i32 @stb_compress_chunk(i64, i64, i64, i64, i64*, i64, i32) #1

declare dso_local i32 @outliterals(i64, i64) #1

declare dso_local i32 @stb_out2(i32) #1

declare dso_local i32 @stb_out4(i32) #1

declare dso_local i32 @stb_out_backpatch(i32, i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_decode_packet.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPJ_FALSE = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32*, i64*, i64, i32*, i32*)* @opj_t2_decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @opj_t2_decode_packet(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64* %5, i64 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %16, align 8
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = load i64, i64* %17, align 8
  %30 = load i32*, i32** %18, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = call i32 @opj_t2_read_packet_header(i32* %24, i32* %25, i32* %26, i32* %27, i64* %20, i32* %28, i64* %21, i64 %29, i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %9
  %35 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %35, i64* %10, align 8
  br label %68

36:                                               ; preds = %9
  %37 = load i64, i64* %21, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 %37
  store i32* %39, i32** %15, align 8
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* %22, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %21, align 8
  %44 = load i64, i64* %17, align 8
  %45 = sub nsw i64 %44, %43
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %20, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %36
  store i64 0, i64* %21, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = call i32 @opj_t2_read_packet_data(i32* %49, i32* %50, i32* %51, i32* %52, i64* %21, i64 %53, i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %59, i64* %10, align 8
  br label %68

60:                                               ; preds = %48
  %61 = load i64, i64* %21, align 8
  %62 = load i64, i64* %22, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %22, align 8
  br label %64

64:                                               ; preds = %60, %36
  %65 = load i64, i64* %22, align 8
  %66 = load i64*, i64** %16, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %64, %58, %34
  %69 = load i64, i64* %10, align 8
  ret i64 %69
}

declare dso_local i32 @opj_t2_read_packet_header(i32*, i32*, i32*, i32*, i64*, i32*, i64*, i64, i32*, i32*) #1

declare dso_local i32 @opj_t2_read_packet_data(i32*, i32*, i32*, i32*, i64*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

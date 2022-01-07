; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_write_cptr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_cidx_manager.c_opj_write_cptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JPIP_CPTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opj_write_cptr(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [24 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @opj_stream_tell(i32* %12)
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @opj_stream_skip(i32* %14, i32 4, i32* %15)
  %17 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %18 = load i64, i64* @JPIP_CPTR, align 8
  %19 = call i32 @opj_write_bytes(i32* %17, i64 %18, i32 4)
  %20 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = call i32 @opj_write_bytes(i32* %21, i64 0, i32 2)
  %23 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %24 = getelementptr inbounds i32, i32* %23, i64 6
  %25 = call i32 @opj_write_bytes(i32* %24, i64 0, i32 2)
  %26 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @opj_write_bytes(i32* %27, i64 %29, i32 8)
  %31 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 16
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @opj_write_bytes(i32* %32, i64 %34, i32 8)
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @opj_stream_write_data(i32* %36, i32* %37, i32 24, i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @opj_stream_tell(i32* %40)
  %42 = load i64, i64* %11, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @opj_stream_seek(i32* %44, i64 %45, i32* %46)
  %48 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @opj_write_bytes(i32* %48, i64 %49, i32 4)
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @opj_stream_write_data(i32* %51, i32* %52, i32 4, i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @opj_stream_seek(i32* %55, i64 %58, i32* %59)
  ret void
}

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

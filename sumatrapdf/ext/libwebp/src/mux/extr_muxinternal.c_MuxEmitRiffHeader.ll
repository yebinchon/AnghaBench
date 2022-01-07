; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_MuxEmitRiffHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_MuxEmitRiffHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG_SIZE = common dso_local global i32 0, align 4
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@CHUNK_SIZE_BYTES = common dso_local global i32 0, align 4
@RIFF_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MuxEmitRiffHeader(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i64 @MKFOURCC(i8 signext 82, i8 signext 73, i8 signext 70, i8 signext 70)
  %8 = call i32 @PutLE32(i32* %6, i64 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @TAG_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %15 = sub i64 %13, %14
  %16 = call i32 @PutLE32(i32* %12, i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @TAG_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* @CHUNK_SIZE_BYTES, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i64 @MKFOURCC(i8 signext 87, i8 signext 69, i8 signext 66, i8 signext 80)
  %30 = call i32 @PutLE32(i32* %28, i64 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @RIFF_HEADER_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  ret i32* %34
}

declare dso_local i32 @PutLE32(i32*, i64) #1

declare dso_local i64 @MKFOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_write_flv_header_and_metadata.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_write_flv_header_and_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLV_TAG_HEADER_LEN = common dso_local global i64 0, align 8
@FLV_FILE_HEADER_LEN = common dso_local global i64 0, align 8
@flv_header_bytes = common dso_local global i32* null, align 8
@SCRIPT_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i32*, i64)* @write_flv_header_and_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_flv_header_and_metadata(i32** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* @FLV_TAG_HEADER_LEN, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %8, align 8
  br label %21

20:                                               ; preds = %13, %3
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i64, i64* @FLV_FILE_HEADER_LEN, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32* @malloc(i64 %25)
  %27 = load i32**, i32*** %5, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %70

32:                                               ; preds = %21
  %33 = load i32**, i32*** %5, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** @flv_header_bytes, align 8
  %36 = load i64, i64* @FLV_FILE_HEADER_LEN, align 8
  %37 = call i32 @memcpy(i32* %34, i32* %35, i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  %41 = load i32**, i32*** %5, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @FLV_FILE_HEADER_LEN, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* @SCRIPT_TAG, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @write_int_24(i32* %49, i64 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @memset(i32* %54, i32 0, i32 7)
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i32* %58, i32* %59, i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @write_int_32(i32* %65, i64 %66)
  br label %68

68:                                               ; preds = %40, %32
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %68, %31
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @write_int_24(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @write_int_32(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

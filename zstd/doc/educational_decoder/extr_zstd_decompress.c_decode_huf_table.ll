; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_huf_table.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_huf_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUF_MAX_SYMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @decode_huf_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_huf_table(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @IO_read_bits(i32* %14, i32 8)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @HUF_MAX_SYMBS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = mul nuw i64 4, %17
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i32* %19, i32 0, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 128
  br i1 %24, label %25, label %70

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 127
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  %30 = sdiv i32 %29, 2
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32* @IO_get_read_ptr(i32* %32, i64 %33)
  store i32* %34, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %66, %25
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = srem i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %19, i64 %52
  store i32 %50, i32* %53, align 4
  br label %65

54:                                               ; preds = %39
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %19, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %54, %43
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %35

69:                                               ; preds = %35
  br label %77

70:                                               ; preds = %2
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @IO_make_sub_istream(i32* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @HUF_MAX_SYMBS, align 4
  %75 = call i32 @IO_make_ostream(i32* %19, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = call i32 @fse_decode_hufweights(i32* %13, i32* %12, i32* %8)
  br label %77

77:                                               ; preds = %70, %69
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @HUF_init_dtable_usingweights(i32* %78, i32* %19, i32 %79)
  %81 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

declare dso_local i32 @IO_read_bits(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @IO_get_read_ptr(i32*, i64) #1

declare dso_local i32 @IO_make_sub_istream(i32*, i32) #1

declare dso_local i32 @IO_make_ostream(i32*, i32) #1

declare dso_local i32 @fse_decode_hufweights(i32*, i32*, i32*) #1

declare dso_local i32 @HUF_init_dtable_usingweights(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

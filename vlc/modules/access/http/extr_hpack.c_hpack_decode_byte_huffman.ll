; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_byte_huffman.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_byte_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hpack_decode_byte_huffman.tab = internal constant [256 x i8] c"012aceiost %-./3456789=A_bdfghlmnpru:BCDEFGHIJKLMNOPQRSTUVWYjkqvwxyz&*,;XZ!\22()?'+|#>\00$@[]~^}<`{\\\C3\D0\80\82\83\A2\B8\C2\E0\E2\99\A1\A7\AC\B0\B1\B3\D1\D8\D9\E3\E5\E6\81\84\85\86\88\92\9A\9C\A0\A3\A4\A9\AA\AD\B2\B5\B9\BA\BB\BD\BE\C4\C6\E4\E8\E9\01\87\89\8A\8B\8C\8D\8F\93\95\96\97\98\9B\9D\9E\A5\A6\A8\AE\AF\B4\B6\B7\BC\BF\C5\E7\EF\09\8E\90\91\94\9F\AB\CE\D7\E1\EC\ED\C7\CF\EA\EB\C0\C1\C8\C9\CA\CD\D2\D5\DA\DB\EE\F0\F2\F3\FF\CB\CC\D3\D4\D6\DD\DE\DF\F1\F4\F5\F6\F7\F8\FA\FB\FC\FD\FE\02\03\04\05\06\07\08\0B\0C\0E\0F\10\11\12\13\14\15\17\18\19\1A\1B\1C\1D\1E\1F\7F\DC\F9\0A\0D\16", align 16
@hpack_decode_byte_huffman.values = internal constant [30 x i8] c"\00\00\00\00\0A\1A \06\00\05\03\02\06\02\03\00\00\00\03\08\0D\1A\1D\0C\04\0F\13\1D\00\03", align 16
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @hpack_decode_byte_huffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpack_decode_byte_huffman(i32* noalias %0, i32* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @hpack_decode_byte_huffman.tab, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %86, %2
  %15 = load i32, i32* %10, align 4
  %16 = icmp ult i32 %15, 30
  br i1 %16, label %17, label %89

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 %24, 1
  %26 = and i32 %25, 7
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = lshr i32 %33, %34
  %36 = and i32 %35, 1
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %45

42:                                               ; preds = %17
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [30 x i8], [30 x i8]* @hpack_decode_byte_huffman.values, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %45
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %45
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [30 x i8], [30 x i8]* @hpack_decode_byte_huffman.values, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** %6, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [30 x i8], [30 x i8]* @hpack_decode_byte_huffman.values, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %78, %83
  %85 = mul nsw i32 %84, 2
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %69
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %14

89:                                               ; preds = %14
  %90 = load i8*, i8** %6, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = sub i64 %91, ptrtoint ([256 x i8]* @hpack_decode_byte_huffman.tab to i64)
  %93 = icmp eq i64 %92, 256
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 1073741823
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i32 256, i32* %3, align 4
  br label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %98, %60
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

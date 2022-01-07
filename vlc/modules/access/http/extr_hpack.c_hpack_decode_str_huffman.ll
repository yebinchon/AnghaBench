; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_str_huffman.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_str_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64)* @hpack_decode_str_huffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hpack_decode_str_huffman(i32* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = mul i64 %10, 2
  %12 = add i64 %11, 1
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 -8, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 %21
  store i32* %23, i32** %4, align 8
  br label %24

24:                                               ; preds = %41, %17
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @hpack_decode_byte_huffman(i32* %25, i32* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  br label %44

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %37, align 1
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 256
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  br label %24

42:                                               ; preds = %40
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %3, align 8
  br label %47

44:                                               ; preds = %29
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  store i8* null, i8** %3, align 8
  br label %47

47:                                               ; preds = %44, %42, %16
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @hpack_decode_byte_huffman(i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

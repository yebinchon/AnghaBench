; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_str.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_hpack.c_hpack_decode_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32**, i64*)* @hpack_decode_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hpack_decode_str(i32** noalias %0, i64* noalias %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %61

14:                                               ; preds = %2
  %15 = load i32**, i32*** %4, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32**, i32*** %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @hpack_decode_int(i32 7, i32** %22, i64* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %61

28:                                               ; preds = %14
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %61

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 65535
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ERANGE, align 4
  store i32 %40, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %61

41:                                               ; preds = %36
  %42 = load i32**, i32*** %4, align 8
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32**, i32*** %4, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %45, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, %50
  store i64 %53, i64* %51, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* (i32*, i32)* @hpack_decode_str_huffman, i8* (i32*, i32)* @hpack_decode_str_raw
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i8* %57(i32* %58, i32 %59)
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %41, %39, %34, %27, %12
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i32 @hpack_decode_int(i32, i32**, i64*) #1

declare dso_local i8* @hpack_decode_str_huffman(i32*, i32) #1

declare dso_local i8* @hpack_decode_str_raw(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

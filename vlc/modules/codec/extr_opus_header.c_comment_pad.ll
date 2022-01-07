; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_comment_pad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_opus_header.c_comment_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @comment_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comment_pad(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 512, i32* %6, align 4
  %10 = load i64, i64* @SIZE_MAX, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %10, %12
  %14 = icmp ult i64 %13, 767
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 512
  %22 = udiv i64 %21, 255
  %23 = add i64 %22, 1
  %24 = mul i64 %23, 255
  %25 = sub i64 %24, 1
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i8* @realloc(i8* %26, i64 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %47

32:                                               ; preds = %16
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i64, i64* %8, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %38, %40
  %42 = call i32 @memset(i8* %37, i32 0, i64 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load i8**, i8*** %4, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %32, %31, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

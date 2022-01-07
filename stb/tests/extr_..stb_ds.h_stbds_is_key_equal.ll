; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_is_key_equal.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_..stb_ds.h_stbds_is_key_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBDS_HM_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32, i64)* @stbds_is_key_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbds_is_key_equal(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @STBDS_HM_STRING, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %13, align 8
  %22 = mul i64 %20, %21
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %18, i8* %25)
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  br label %40

29:                                               ; preds = %6
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %13, align 8
  %34 = mul i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i64, i64* %11, align 8
  %37 = call i64 @memcmp(i8* %30, i8* %35, i64 %36)
  %38 = icmp eq i64 0, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %29, %17
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

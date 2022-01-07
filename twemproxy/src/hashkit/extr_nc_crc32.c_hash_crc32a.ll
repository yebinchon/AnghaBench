; ModuleID = '/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_crc32.c_hash_crc32a.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_crc32.c_hash_crc32a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_crc32a(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i64, i64* %4, align 8
  %10 = add i64 %9, -1
  store i64 %10, i64* %4, align 8
  %11 = icmp ne i64 %9, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i32*, i32** @crc32tab, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  %19 = xor i32 %14, %18
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = xor i32 %23, %25
  store i32 %26, i32* %6, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %28, -1
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

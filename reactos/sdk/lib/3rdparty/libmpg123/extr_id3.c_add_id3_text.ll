; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_add_id3_text.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_id3.c_add_id3_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i64*)* @add_id3_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_id3_text(i32** %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %10, 1
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32* @safe_realloc(i32* %8, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %37

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i32**, i32*** %4, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load i32**, i32*** %4, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i32 @init_mpg123_text(i32* %29)
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %18, %17
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32* @safe_realloc(i32*, i32) #1

declare dso_local i32 @init_mpg123_text(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_count_array.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_count_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @count_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_array(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @todword(i32* %7)
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @SIZEOF_LENGTH, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 %9
  store i32* %11, i32** %3, align 8
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @SIZEOF_LENGTH, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %41

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @todword(i32* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @SIZEOF_LENGTH, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 %33
  store i32* %35, i32** %3, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %4, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %29, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @todword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

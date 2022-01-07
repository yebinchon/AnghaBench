; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_getnumpasses.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_getnumpasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @opj_t2_getnumpasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_t2_getnumpasses(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @opj_bio_read(i32* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @opj_bio_read(i32* %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 2, i32* %2, align 4
  br label %32

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @opj_bio_read(i32* %15, i32 2)
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 3, %19
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %14
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @opj_bio_read(i32* %22, i32 5)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 31
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 6, %26
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @opj_bio_read(i32* %29, i32 7)
  %31 = add nsw i32 37, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %25, %18, %13, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @opj_bio_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Tag.h_ID3TAG_ReadSize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Tag.h_ID3TAG_ReadSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32)* @ID3TAG_ReadSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ID3TAG_ReadSize(i64* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i64*, i64** %4, align 8
  %10 = call i32 @GetDWBE(i64* %9)
  store i32 %10, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load i64*, i64** %4, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 3
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 127
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 2
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 127
  %22 = shl i32 %21, 7
  %23 = or i32 %16, %22
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 127
  %29 = shl i32 %28, 14
  %30 = or i32 %23, %29
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 127
  %36 = shl i32 %35, 21
  %37 = or i32 %30, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %11, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @GetDWBE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

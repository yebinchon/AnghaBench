; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_int16_to_3packedchars.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/mj2/extr_meta_out.c_int16_to_3packedchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @int16_to_3packedchars(i16 signext %0, i8* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i8* %1, i8** %4, align 8
  store i32 2, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load i16, i16* %3, align 2
  %11 = sext i16 %10 to i32
  %12 = and i32 %11, 31
  %13 = add nsw i32 %12, 96
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8 %14, i8* %18, align 1
  %19 = load i16, i16* %3, align 2
  %20 = sext i16 %19 to i32
  %21 = ashr i32 %20, 5
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %3, align 2
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  store i8 0, i8* %28, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

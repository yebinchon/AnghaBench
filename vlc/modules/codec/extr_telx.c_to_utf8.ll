; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_to_utf8.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 128
  br i1 %6, label %7, label %48

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 2048
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 12
  %13 = or i32 %12, 224
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %14, i8* %16, align 1
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 6
  %19 = and i32 %18, 63
  %20 = or i32 %19, 128
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 63
  %26 = or i32 %25, 128
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8 %27, i8* %29, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 3
  store i8 0, i8* %31, align 1
  br label %47

32:                                               ; preds = %7
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 6
  %35 = or i32 %34, 192
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 63
  %41 = or i32 %40, 128
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %32, %10
  br label %55

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %50, i8* %52, align 1
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %48, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

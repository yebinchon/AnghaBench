; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_jis2sjis.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_jis2sjis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @jis2sjis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jis2sjis(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %5, align 1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp slt i32 %14, 95
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 112, i32 176
  store i32 %17, i32* %7, align 4
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = srem i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp sgt i32 %24, 95
  %26 = zext i1 %25 to i32
  %27 = add nsw i32 31, %26
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 126, %28 ]
  store i32 %30, i32* %8, align 4
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, 1
  %34 = ashr i32 %33, 1
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %3, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %4, align 8
  store i8 %43, i8* %44, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

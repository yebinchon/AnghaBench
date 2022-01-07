; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_sjis2jis.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mlang/extr_mlang.c_sjis2jis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @sjis2jis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjis2jis(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %5, align 1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = load i8, i8* %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 159
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %19, 160
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 112, i32 176
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i32 %27, 127
  %29 = zext i1 %28 to i32
  %30 = add nsw i32 31, %29
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %30, %25 ], [ 126, %31 ]
  store i32 %33, i32* %9, align 4
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = shl i32 %37, 1
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %3, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* %9, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %46, %43
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

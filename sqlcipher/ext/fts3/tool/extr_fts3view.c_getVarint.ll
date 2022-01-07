; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_getVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/tool/extr_fts3view.c_getVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getVarint(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 128
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp slt i64 %20, 9
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i1 [ false, %9 ], [ %21, %15 ]
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 127
  %31 = mul nsw i32 %25, %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 7
  store i32 %35, i32* %7, align 4
  br label %9

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  %42 = mul nsw i32 %37, %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %4, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

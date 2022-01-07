; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3PutDeltaVarint3.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3PutDeltaVarint3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i64*, i32*, i64)* @fts3PutDeltaVarint3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3PutDeltaVarint3(i8** %0, i32 %1, i64* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %5
  %19 = load i64, i64* %10, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %19, %21
  store i64 %22, i64* %11, align 8
  br label %28

23:                                               ; preds = %14
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64*, i64** %8, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %43, %36
  %47 = phi i1 [ true, %36 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8**, i8*** %6, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @sqlite3Fts3PutVarint(i8* %51, i64 %52)
  %54 = load i8**, i8*** %6, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %54, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64*, i64** %8, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i32*, i32** %9, align 8
  store i32 1, i32* %60, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3PutVarint(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

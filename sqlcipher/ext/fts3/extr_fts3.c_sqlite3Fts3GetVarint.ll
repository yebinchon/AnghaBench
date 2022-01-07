; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3GetVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3GetVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3GetVarint(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GETVARINT_INIT(i32 %13, i8* %14, i32 0, i32 0, i32 128, i32 %16, i32 1)
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GETVARINT_STEP(i32 %18, i8* %19, i32 7, i32 127, i32 16384, i32 %21, i32 2)
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GETVARINT_STEP(i32 %23, i8* %24, i32 14, i32 16383, i32 2097152, i32 %26, i32 3)
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GETVARINT_STEP(i32 %28, i8* %29, i32 21, i32 2097151, i32 268435456, i32 %31, i32 4)
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 268435455
  store i32 %34, i32* %8, align 4
  store i32 28, i32* %9, align 4
  br label %35

35:                                               ; preds = %54, %2
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 63
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 127
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %57

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 7
  store i32 %56, i32* %9, align 4
  br label %35

57:                                               ; preds = %52, %35
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  ret i32 %65
}

declare dso_local i32 @GETVARINT_INIT(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GETVARINT_STEP(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

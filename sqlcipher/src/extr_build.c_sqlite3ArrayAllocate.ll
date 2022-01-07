; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3ArrayAllocate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3ArrayAllocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3ArrayAllocate(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %11, align 8
  store i32 %17, i32* %18, align 4
  store i32 %17, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = mul nsw i32 2, %29
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 1, %27 ], [ %30, %28 ]
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i8* @sqlite3DbRealloc(i32* %33, i8* %34, i32 %37)
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32*, i32** %11, align 8
  store i32 -1, i32* %42, align 4
  %43 = load i8*, i8** %8, align 8
  store i8* %43, i8** %6, align 8
  br label %60

44:                                               ; preds = %31
  %45 = load i8*, i8** %15, align 8
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %44, %5
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @memset(i8* %53, i32 0, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i8*, i8** %8, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %46, %41
  %61 = load i8*, i8** %6, align 8
  ret i8* %61
}

declare dso_local i8* @sqlite3DbRealloc(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

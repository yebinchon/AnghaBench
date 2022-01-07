; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_lmemfind.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_lmemfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64)* @lmemfind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lmemfind(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %5, align 8
  br label %62

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* null, i8** %5, align 8
  br label %62

20:                                               ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %60, %20
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @memchr(i8* %30, i8 signext %32, i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %29, %26
  %38 = phi i1 [ false, %26 ], [ %36, %29 ]
  br i1 %38, label %39, label %61

39:                                               ; preds = %37
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @memcmp(i8* %42, i8* %44, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %5, align 8
  br label %62

51:                                               ; preds = %39
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %7, align 8
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %6, align 8
  br label %60

60:                                               ; preds = %51
  br label %26

61:                                               ; preds = %37
  store i8* null, i8** %5, align 8
  br label %62

62:                                               ; preds = %61, %48, %19, %13
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

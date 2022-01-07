; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyWithinFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyWithinFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @geopolyWithinFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geopolyWithinFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32* @geopolyFuncParam(i32* %10, i32* %13, i32 0)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32* @geopolyFuncParam(i32* %15, i32* %18, i32 0)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @geopolyOverlap(i32* %26, i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @sqlite3_result_error_nomem(i32* %32)
  br label %47

34:                                               ; preds = %25
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %44

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 0
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i32 [ 1, %38 ], [ %43, %39 ]
  %46 = call i32 @sqlite3_result_int(i32* %35, i32 %45)
  br label %47

47:                                               ; preds = %44, %31
  br label %48

48:                                               ; preds = %47, %22, %3
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @sqlite3_free(i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @sqlite3_free(i32* %51)
  ret void
}

declare dso_local i32* @geopolyFuncParam(i32*, i32*, i32) #1

declare dso_local i32 @geopolyOverlap(i32*, i32*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

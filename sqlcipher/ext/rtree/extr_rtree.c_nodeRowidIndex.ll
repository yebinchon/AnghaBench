; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_nodeRowidIndex.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_nodeRowidIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_VTAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32*)* @nodeRowidIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodeRowidIndex(i32* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @NCELL(i32* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 200
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %34, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @nodeGetRowid(i32* %23, i32* %24, i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @RTREE_IS_CORRUPT(i32* %38)
  %40 = load i32, i32* @SQLITE_CORRUPT_VTAB, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @NCELL(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nodeGetRowid(i32*, i32*, i32) #1

declare dso_local i32 @RTREE_IS_CORRUPT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

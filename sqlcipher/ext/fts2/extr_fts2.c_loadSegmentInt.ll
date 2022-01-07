; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadSegmentInt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadSegmentInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64, i8*, i32, i32, i32*)* @loadSegmentInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadSegmentInt(i32* %0, i8* %1, i32 %2, i64 %3, i8* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %8
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32*, i32** %17, align 8
  %36 = call i32 @loadSegmentLeaf(i32* %29, i8* %30, i32 %31, i8* %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %9, align 4
  br label %104

37:                                               ; preds = %8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @getChildrenContaining(i8* %38, i32 %39, i8* %40, i32 %41, i32 %42, i64* %19, i64* %20)
  br label %44

44:                                               ; preds = %77, %37
  %45 = load i64, i64* %19, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %19, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @loadAndGetChildrenContaining(i32* %49, i64 %50, i8* %51, i32 %52, i32 %53, i64* %21, i64* %22)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %9, align 4
  br label %104

60:                                               ; preds = %48
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %20, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @loadAndGetChildrenContaining(i32* %65, i64 %66, i8* %67, i32 %68, i32 %69, i64* %23, i64* %22)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %9, align 4
  br label %104

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i64, i64* %21, align 8
  %79 = load i64, i64* %22, align 8
  %80 = icmp sle i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i64, i64* %21, align 8
  store i64 %83, i64* %19, align 8
  %84 = load i64, i64* %22, align 8
  store i64 %84, i64* %20, align 8
  br label %44

85:                                               ; preds = %44
  %86 = load i64, i64* %19, align 8
  %87 = load i64, i64* %13, align 8
  %88 = icmp sle i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp sle i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = load i64, i64* %19, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @loadSegmentLeaves(i32* %96, i64 %97, i64 %98, i8* %99, i32 %100, i32 %101, i32* %102)
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %85, %74, %58, %28
  %105 = load i32, i32* %9, align 4
  ret i32 %105
}

declare dso_local i32 @loadSegmentLeaf(i32*, i8*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @getChildrenContaining(i8*, i32, i8*, i32, i32, i64*, i64*) #1

declare dso_local i32 @loadAndGetChildrenContaining(i32*, i64, i8*, i32, i32, i64*, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @loadSegmentLeaves(i32*, i64, i64, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

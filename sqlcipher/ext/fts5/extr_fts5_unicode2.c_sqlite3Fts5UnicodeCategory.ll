; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_sqlite3Fts5UnicodeCategory.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_unicode2.c_sqlite3Fts5UnicodeCategory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aFts5UnicodeBlock = common dso_local global i32* null, align 8
@aFts5UnicodeMap = common dso_local global i64* null, align 8
@aFts5UnicodeData = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts5UnicodeCategory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 1048576
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

13:                                               ; preds = %1
  %14 = load i32*, i32** @aFts5UnicodeBlock, align 8
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 16
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** @aFts5UnicodeBlock, align 8
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 16
  %23 = add nsw i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 65535
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %63, %13
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %34
  %47 = phi i1 [ false, %34 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load i64*, i64** @aFts5UnicodeMap, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %50, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %57
  br label %30

64:                                               ; preds = %30
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %108

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64*, i64** @aFts5UnicodeMap, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** @aFts5UnicodeData, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 5
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %74, %81
  %83 = icmp sge i64 %69, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %108

85:                                               ; preds = %68
  %86 = load i32*, i32** @aFts5UnicodeData, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 31
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 30
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %108

96:                                               ; preds = %85
  %97 = load i64, i64* %8, align 8
  %98 = load i64*, i64** @aFts5UnicodeMap, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %97, %102
  %104 = and i64 %103, 1
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 5, i32 9
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %96, %94, %84, %67, %12
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

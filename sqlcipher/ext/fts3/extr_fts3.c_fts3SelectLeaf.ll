; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SelectLeaf.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3SelectLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i64*, i64*)* @fts3SelectLeaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SelectLeaf(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i64*, i64** %13, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = load i64*, i64** %14, align 8
  %24 = icmp ne i64* %23, null
  br label %25

25:                                               ; preds = %22, %7
  %26 = phi i1 [ true, %7 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @fts3GetVarint32(i8* %29, i32* %16)
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i64*, i64** %13, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = call i32 @fts3ScanInteriorNode(i8* %31, i32 %32, i8* %33, i32 %34, i64* %35, i64* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i64*, i64** %14, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %25
  %41 = load i64*, i64** %13, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @SQLITE_OK, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %49, %51
  br label %53

53:                                               ; preds = %47, %43, %40, %25
  %54 = phi i1 [ true, %43 ], [ true, %40 ], [ true, %25 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @SQLITE_OK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %127

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %127

63:                                               ; preds = %60
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %64 = load i64*, i64** %13, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  %67 = load i64*, i64** %14, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %14, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load i32*, i32** %8, align 8
  %77 = load i64*, i64** %13, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sqlite3Fts3ReadBlock(i32* %76, i64 %78, i8** %17, i32* %18, i32 0)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @SQLITE_OK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i32*, i32** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i8*, i8** %17, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i64*, i64** %13, align 8
  %90 = call i32 @fts3SelectLeaf(i32* %84, i8* %85, i32 %86, i8* %87, i32 %88, i64* %89, i64* null)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %83, %75
  %92 = load i8*, i8** %17, align 8
  %93 = call i32 @sqlite3_free(i8* %92)
  store i64* null, i64** %13, align 8
  store i8* null, i8** %17, align 8
  br label %94

94:                                               ; preds = %91, %69, %66, %63
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64*, i64** %13, align 8
  %104 = load i64, i64* %103, align 8
  br label %108

105:                                              ; preds = %98
  %106 = load i64*, i64** %14, align 8
  %107 = load i64, i64* %106, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i64 [ %104, %102 ], [ %107, %105 ]
  %110 = call i32 @sqlite3Fts3ReadBlock(i32* %99, i64 %109, i8** %17, i32* %18, i32 0)
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %108, %94
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @SQLITE_OK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i8*, i8** %17, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load i64*, i64** %13, align 8
  %122 = load i64*, i64** %14, align 8
  %123 = call i32 @fts3SelectLeaf(i32* %116, i8* %117, i32 %118, i8* %119, i32 %120, i64* %121, i64* %122)
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %115, %111
  %125 = load i8*, i8** %17, align 8
  %126 = call i32 @sqlite3_free(i8* %125)
  br label %127

127:                                              ; preds = %124, %60, %53
  %128 = load i32, i32* %15, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3GetVarint32(i8*, i32*) #1

declare dso_local i32 @fts3ScanInteriorNode(i8*, i32, i8*, i32, i64*, i64*) #1

declare dso_local i32 @sqlite3Fts3ReadBlock(i32*, i64, i8**, i32*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

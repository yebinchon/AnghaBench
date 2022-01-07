; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3DoclistNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3DoclistNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Fts3DoclistNext(i32 %0, i8* %1, i32 %2, i8** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8**, i8*** %10, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br label %32

32:                                               ; preds = %28, %6
  %33 = phi i1 [ true, %6 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = icmp uge i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = icmp ule i8* %43, %47
  br label %49

49:                                               ; preds = %42, %38
  %50 = phi i1 [ false, %38 ], [ %48, %42 ]
  br label %51

51:                                               ; preds = %49, %32
  %52 = phi i1 [ true, %32 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = call i32 @sqlite3Fts3GetVarint(i8* %59, i64* %60)
  %62 = load i8*, i8** %13, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %13, align 8
  br label %110

65:                                               ; preds = %51
  %66 = call i32 @fts3PoslistCopy(i32 0, i8** %13)
  br label %67

67:                                               ; preds = %81, %65
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = icmp ult i8* %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i8*, i8** %13, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br label %79

79:                                               ; preds = %74, %67
  %80 = phi i1 [ false, %67 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %13, align 8
  br label %67

84:                                               ; preds = %79
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = icmp uge i8* %85, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32*, i32** %12, align 8
  store i32 1, i32* %92, align 4
  br label %109

93:                                               ; preds = %84
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @sqlite3Fts3GetVarint(i8* %94, i64* %14)
  %96 = load i8*, i8** %13, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 -1, i32 1
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %14, align 8
  %105 = mul nsw i64 %103, %104
  %106 = load i64*, i64** %11, align 8
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %105
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %93, %91
  br label %110

110:                                              ; preds = %109, %57
  %111 = load i8*, i8** %13, align 8
  %112 = load i8**, i8*** %10, align 8
  store i8* %111, i8** %112, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3GetVarint(i8*, i64*) #1

declare dso_local i32 @fts3PoslistCopy(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

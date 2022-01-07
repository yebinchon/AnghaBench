; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3VListAdd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3VListAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3VListAdd(i32* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sdiv i32 %17, 4
  %19 = add nsw i32 %18, 3
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 3
  br label %27

27:                                               ; preds = %22, %5
  %28 = phi i1 [ true, %5 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %33, %27
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 2, %49
  br label %52

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i32 [ %50, %46 ], [ 10, %51 ]
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32* @sqlite3DbRealloc(i32* %56, i32* %57, i32 %61)
  store i32* %62, i32** %16, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32*, i32** %8, align 8
  store i32* %66, i32** %6, align 8
  br label %122

67:                                               ; preds = %52
  %68 = load i32*, i32** %8, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 2, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %16, align 8
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %33
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = bitcast i32* %97 to i8*
  store i8* %98, i8** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %106, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @memcpy(i8* %113, i8* %114, i32 %115)
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load i32*, i32** %8, align 8
  store i32* %121, i32** %6, align 8
  br label %122

122:                                              ; preds = %78, %65
  %123 = load i32*, i32** %6, align 8
  ret i32* %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3DbRealloc(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

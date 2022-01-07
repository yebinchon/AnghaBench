; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_eval.c_callback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_eval.c_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EvalResult = type { i64, i64, i64, i8*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.EvalResult*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.EvalResult*
  store %struct.EvalResult* %16, %struct.EvalResult** %10, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %148

20:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %144, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %147

25:                                               ; preds = %21
  %26 = load i8**, i8*** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i8* [ %37, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %38 ]
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @strlen(i8* %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %45 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %49 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = add nsw i64 %51, 1
  %53 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %54 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %39
  %58 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %59 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = mul nsw i64 %60, 2
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %61, %62
  %64 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %65 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  %68 = add i64 %67, 1
  %69 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %70 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %72 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %73, 2147483647
  br i1 %74, label %75, label %84

75:                                               ; preds = %57
  %76 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %77 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %80 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i8* @sqlite3_realloc64(i32* %78, i32 %82)
  br label %85

84:                                               ; preds = %57
  br label %85

85:                                               ; preds = %84, %75
  %86 = phi i8* [ %83, %75 ], [ null, %84 ]
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %91 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @sqlite3_free(i32* %92)
  %94 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %95 = call i32 @memset(%struct.EvalResult* %94, i32 0, i32 40)
  store i32 1, i32* %5, align 4
  br label %148

96:                                               ; preds = %85
  %97 = load i8*, i8** %14, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %100 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %99, i32 0, i32 4
  store i32* %98, i32** %100, align 8
  br label %101

101:                                              ; preds = %96, %39
  %102 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %103 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %108 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %111 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %115 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %118 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @memcpy(i32* %113, i8* %116, i64 %119)
  %121 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %122 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %125 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  br label %128

128:                                              ; preds = %106, %101
  %129 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %130 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %133 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i8*, i8** %12, align 8
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @memcpy(i32* %135, i8* %136, i64 %137)
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %141 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %139
  store i64 %143, i64* %141, align 8
  br label %144

144:                                              ; preds = %128
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %21

147:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %147, %89, %19
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_realloc64(i32*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @memset(%struct.EvalResult*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

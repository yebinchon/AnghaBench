; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_fuzzershell.c_callback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_fuzzershell.c_callback.c"
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
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %140, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %143

21:                                               ; preds = %17
  %22 = load i8**, i8*** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i8**, i8*** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %28
  %36 = phi i8* [ %33, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %34 ]
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i64 @strlen(i8* %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %41 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %45 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = add nsw i64 %47, 1
  %49 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %50 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %35
  %54 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %55 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = mul nsw i64 %56, 2
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %61 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %59, %62
  %64 = add i64 %63, 1
  %65 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %66 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %68 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %69, 2147483647
  br i1 %70, label %71, label %80

71:                                               ; preds = %53
  %72 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %73 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %76 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i8* @sqlite3_realloc(i32* %74, i32 %78)
  br label %81

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %71
  %82 = phi i8* [ %79, %71 ], [ null, %80 ]
  store i8* %82, i8** %14, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %87 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @sqlite3_free(i32* %88)
  %90 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %91 = call i32 @memset(%struct.EvalResult* %90, i32 0, i32 40)
  store i32 1, i32* %5, align 4
  br label %144

92:                                               ; preds = %81
  %93 = load i8*, i8** %14, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %96 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %95, i32 0, i32 4
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %92, %35
  %98 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %99 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %104 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %107 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %111 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %114 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @memcpy(i32* %109, i8* %112, i64 %115)
  %117 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %118 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %121 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %102, %97
  %125 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %126 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %129 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i8*, i8** %12, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i32 @memcpy(i32* %131, i8* %132, i64 %133)
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.EvalResult*, %struct.EvalResult** %10, align 8
  %137 = getelementptr inbounds %struct.EvalResult, %struct.EvalResult* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %124
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %17

143:                                              ; preds = %17
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %85
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_realloc(i32*, i32) #1

declare dso_local i32 @sqlite3_free(i32*) #1

declare dso_local i32 @memset(%struct.EvalResult*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

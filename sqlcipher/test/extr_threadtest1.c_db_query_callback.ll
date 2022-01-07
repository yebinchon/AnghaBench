; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_threadtest1.c_db_query_callback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_threadtest1.c_db_query_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.QueryResult = type { i32, i32, i8*, i32* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @db_query_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_query_callback(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.QueryResult*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.QueryResult*
  store %struct.QueryResult* %13, %struct.QueryResult** %10, align 8
  %14 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %15 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %20 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %67

23:                                               ; preds = %4
  %24 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %25 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %32 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %43

33:                                               ; preds = %23
  %34 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %35 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %39, 1
  %41 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %42 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %28
  %44 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %45 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %48 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i32* @realloc(i32* %46, i32 %52)
  %54 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %55 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %57 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load i32, i32* @stdout, align 4
  %62 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %63 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %64)
  store i32 1, i32* %5, align 4
  br label %106

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %4
  %68 = load i8**, i8*** %8, align 8
  %69 = icmp eq i8** %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %106

71:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %102, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load i8**, i8*** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i8**, i8*** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %83
  %91 = phi i8* [ %88, %83 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %89 ]
  %92 = call i32 @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %94 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.QueryResult*, %struct.QueryResult** %10, align 8
  %97 = getelementptr inbounds %struct.QueryResult, %struct.QueryResult* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  store i32 %92, i32* %101, align 4
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %72

105:                                              ; preds = %72
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %70, %60
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_mprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

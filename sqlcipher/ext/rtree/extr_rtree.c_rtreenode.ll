; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreenode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_rtreenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32* }
%struct.TYPE_12__ = type { double, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { double, i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"{%lld\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @rtreenode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtreenode(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @UNUSED_PARAMETER(i32 %15)
  %17 = call i32 @memset(%struct.TYPE_11__* %7, i32 0, i32 24)
  %18 = call i32 @memset(%struct.TYPE_11__* %8, i32 0, i32 24)
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @sqlite3_value_int(i32* %21)
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 5
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %3
  br label %119

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 2
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 8, %39
  %41 = add nsw i32 8, %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @sqlite3_value_blob(i32* %45)
  %47 = inttoptr i64 %46 to i32*
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i32* %47, i32** %48, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @sqlite3_value_bytes(i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  br label %119

56:                                               ; preds = %33
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @NCELL(%struct.TYPE_11__* %7)
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %58, %60
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %119

64:                                               ; preds = %56
  %65 = call i32* @sqlite3_str_new(i32 0)
  store i32* %65, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %105, %64
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @NCELL(%struct.TYPE_11__* %7)
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @nodeGetCell(%struct.TYPE_11__* %8, %struct.TYPE_11__* %7, i32 %71, %struct.TYPE_12__* %13)
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @sqlite3_str_append(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = call i32 @sqlite3_str_appendf(i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %81)
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %99, %78
  %84 = load i32, i32* %14, align 4
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to double
  %98 = call i32 @sqlite3_str_appendf(i32* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %97)
  br label %99

99:                                               ; preds = %88
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %83

102:                                              ; preds = %83
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @sqlite3_str_append(i32* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %66

108:                                              ; preds = %66
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @sqlite3_str_errcode(i32* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @sqlite3_str_finish(i32* %112)
  %114 = load i32, i32* @sqlite3_free, align 4
  %115 = call i32 @sqlite3_result_text(i32* %111, i32 %113, i32 -1, i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @sqlite3_result_error_code(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %108, %63, %55, %32
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @NCELL(%struct.TYPE_11__*) #1

declare dso_local i32* @sqlite3_str_new(i32) #1

declare dso_local i32 @nodeGetCell(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3_str_append(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_str_appendf(i32*, i8*, double) #1

declare dso_local i32 @sqlite3_str_errcode(i32*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_str_finish(i32*) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxColumnList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/repair/extr_checkindex.c_cidxColumnList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" DESC\00", align 1
@__const.cidxColumnList.aDir = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"%z%s%d%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%z%squote(i%d)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"||','||\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%z%s%s IS i.i%d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" AND \00", align 1
@CIDX_CLIST_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"%z%s(%s) AS i%d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, %struct.TYPE_4__*, i32)* @cidxColumnList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cidxColumnList(i32* %0, i8* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %124

18:                                               ; preds = %4
  %19 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([2 x i8*]* @__const.cidxColumnList.aDir to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %120, %18
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %123

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %13, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %26
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 1
  br label %52

52:                                               ; preds = %42, %26
  %53 = phi i1 [ true, %26 ], [ %51, %42 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %8, align 4
  switch i32 %56, label %105 [
    i32 130, label %57
    i32 131, label %69
    i32 128, label %75
    i32 129, label %90
  ]

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60, i32 %62, i8* %67)
  store i8* %68, i8** %9, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %119

69:                                               ; preds = %52
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %71, i8* %72, i32 %73)
  store i8* %74, i8** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %119

75:                                               ; preds = %52
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %82, i8* %83, i32 %86, i32 %87)
  store i8* %88, i8** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %89

89:                                               ; preds = %80, %75
  br label %119

90:                                               ; preds = %52
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %97, i8* %98, i32 %101, i32 %102)
  store i8* %103, i8** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %104

104:                                              ; preds = %95, %90
  br label %119

105:                                              ; preds = %52
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @CIDX_CLIST_ALL, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i8* (i32*, i8*, i8*, i8*, i32, ...) @cidxMprintf(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %112, i8* %113, i32 %116, i32 %117)
  store i8* %118, i8** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %119

119:                                              ; preds = %105, %104, %89, %69, %57
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %20

123:                                              ; preds = %20
  br label %124

124:                                              ; preds = %123, %4
  %125 = load i8*, i8** %9, align 8
  ret i8* %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @cidxMprintf(i32*, i8*, i8*, i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_minMaxQuery.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_minMaxQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@WHERE_ORDERBY_NORMAL = common dso_local global i32 0, align 4
@TK_AGG_FUNCTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@WHERE_ORDERBY_MIN = common dso_local global i32 0, align 4
@SQLITE_SO_ASC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@WHERE_ORDERBY_MAX = common dso_local global i32 0, align 4
@SQLITE_SO_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_17__**)* @minMaxQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minMaxQuery(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %7, align 8
  %13 = load i32, i32* @WHERE_ORDERBY_NORMAL, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %9, align 8
  %18 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TK_AGG_FUNCTION, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = icmp eq %struct.TYPE_17__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %3
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %3
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %87

39:                                               ; preds = %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @sqlite3StrICmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @WHERE_ORDERBY_MIN, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @SQLITE_SO_ASC, align 4
  store i32 %49, i32* %12, align 4
  br label %60

50:                                               ; preds = %39
  %51 = load i8*, i8** %10, align 8
  %52 = call i64 @sqlite3StrICmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @WHERE_ORDERBY_MAX, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @SQLITE_SO_DESC, align 4
  store i32 %56, i32* %12, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %87

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = call %struct.TYPE_17__* @sqlite3ExprListDup(%struct.TYPE_16__* %61, %struct.TYPE_17__* %62, i32 0)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %11, align 8
  %64 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %60
  %73 = phi i1 [ true, %60 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %77 = icmp ne %struct.TYPE_17__* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %72
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %57, %37
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local %struct.TYPE_17__* @sqlite3ExprListDup(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

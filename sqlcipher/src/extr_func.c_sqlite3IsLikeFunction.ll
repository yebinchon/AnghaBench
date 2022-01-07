; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_sqlite3IsLikeFunction.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_sqlite3IsLikeFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, i32 }

@TK_FUNCTION = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@SQLITE_FUNC_LIKE = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i64 0, align 8
@likeInfoAlt = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@SQLITE_FUNC_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3IsLikeFunction(i32* %0, %struct.TYPE_16__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TK_FUNCTION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19, %4
  store i32 0, i32* %5, align 4
  br label %123

26:                                               ; preds = %19
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = load i32, i32* @EP_xIsSelect, align 4
  %29 = call i32 @ExprHasProperty(%struct.TYPE_16__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @SQLITE_UTF8, align 4
  %47 = call %struct.TYPE_15__* @sqlite3FindFunction(i32* %40, i8* %44, i32 %45, i32 %46, i32 0)
  store %struct.TYPE_15__* %47, %struct.TYPE_15__** %10, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = icmp eq %struct.TYPE_15__* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i64 @NEVER(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %26
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SQLITE_FUNC_LIKE, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %26
  store i32 0, i32* %5, align 4
  br label %123

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 3
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  store i8 0, i8* %66, align 1
  br label %106

67:                                               ; preds = %61
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %12, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TK_STRING, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %123

83:                                               ; preds = %67
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %83
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %83
  store i32 0, i32* %5, align 4
  br label %123

100:                                              ; preds = %93
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  store i8 %103, i8* %105, align 1
  br label %106

106:                                              ; preds = %100, %64
  %107 = load i8*, i8** %9, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memcpy(i8* %107, i32 %110, i32 3)
  %112 = call i32 @assert(i32 0)
  %113 = call i32 @assert(i32 zext (i1 icmp eq (i32* bitcast (i8* getelementptr inbounds (i8, i8* bitcast (%struct.TYPE_17__* @likeInfoAlt to i8*), i64 1) to i32*), i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @likeInfoAlt, i32 0, i32 1)) to i32))
  %114 = call i32 @assert(i32 zext (i1 icmp eq (%struct.TYPE_17__* bitcast (i8* getelementptr inbounds (i8, i8* bitcast (%struct.TYPE_17__* @likeInfoAlt to i8*), i64 2) to %struct.TYPE_17__*), %struct.TYPE_17__* @likeInfoAlt) to i32))
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SQLITE_FUNC_CASE, align 4
  %119 = and i32 %117, %118
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %106, %99, %82, %60, %25
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @sqlite3FindFunction(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAlloc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAlloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }

@TK_INTEGER = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Leaf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @sqlite3ExprAlloc(i32* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TK_INTEGER, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @sqlite3GetInt32(i32 %30, i32* %11)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27, %22, %18
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 40, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_11__* @sqlite3DbMallocRawNN(i32* %44, i32 %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %9, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %52, label %141

52:                                               ; preds = %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = call i32 @memset(%struct.TYPE_11__* %53, i32 0, i32 40)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %140

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load i32, i32* @EP_IntValue, align 4
  %68 = load i32, i32* @EP_Leaf, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  br label %139

78:                                               ; preds = %63
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 1
  %81 = bitcast %struct.TYPE_11__* %80 to i8*
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %78
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br label %94

94:                                               ; preds = %89, %78
  %95 = phi i1 [ true, %78 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %94
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i8* %106, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %102, %94
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %114
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = call i64 @sqlite3Isquote(i8 signext %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = call i32 @sqlite3DequoteExpr(%struct.TYPE_11__* %136)
  br label %138

138:                                              ; preds = %135, %126, %114
  br label %139

139:                                              ; preds = %138, %66
  br label %140

140:                                              ; preds = %139, %52
  br label %141

141:                                              ; preds = %140, %43
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  ret %struct.TYPE_11__* %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3GetInt32(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @sqlite3Isquote(i8 signext) #1

declare dso_local i32 @sqlite3DequoteExpr(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

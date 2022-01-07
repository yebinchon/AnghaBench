; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3WithAdd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3WithAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i64, i32*, i32* }

@.str = private unnamed_addr constant [30 x i8] c"duplicate WITH table name: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @sqlite3WithAdd(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %11, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @sqlite3NameFromToken(%struct.TYPE_19__* %21, i32* %22)
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %5
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %28 = icmp ne %struct.TYPE_20__* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %14, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @sqlite3StrICmp(i8* %37, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @sqlite3ErrorMsg(%struct.TYPE_21__* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %26, %5
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = icmp ne %struct.TYPE_20__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 32, %64
  %66 = add i64 16, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call %struct.TYPE_20__* @sqlite3DbRealloc(%struct.TYPE_19__* %68, %struct.TYPE_20__* %69, i32 %70)
  store %struct.TYPE_20__* %71, %struct.TYPE_20__** %12, align 8
  br label %75

72:                                               ; preds = %57
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = call %struct.TYPE_20__* @sqlite3DbMallocZero(%struct.TYPE_19__* %73, i32 16)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %12, align 8
  br label %75

75:                                               ; preds = %72, %60
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %77 = icmp ne %struct.TYPE_20__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %78
  %87 = phi i1 [ true, %78 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @sqlite3ExprListDelete(%struct.TYPE_19__* %95, i32* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @sqlite3SelectDelete(%struct.TYPE_19__* %98, i32* %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @sqlite3DbFree(%struct.TYPE_19__* %101, i8* %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %12, align 8
  br label %149

105:                                              ; preds = %86
  %106 = load i32*, i32** %10, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  store i32* %106, i32** %115, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  store i32* %116, i32** %125, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  store i8* %126, i8** %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %105, %94
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  ret %struct.TYPE_20__* %150
}

declare dso_local i8* @sqlite3NameFromToken(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @sqlite3StrICmp(i8*, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_21__*, i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @sqlite3DbRealloc(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @sqlite3DbMallocZero(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ExprListDelete(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

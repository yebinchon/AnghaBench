; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3SelectNew.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_select.c_sqlite3SelectNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i64, i64, i64, i32*, i64, i64, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i32, i32, i32* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }

@TK_ASTERISK = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @sqlite3SelectNew(%struct.TYPE_13__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = call %struct.TYPE_12__* @sqlite3DbMallocRawNN(%struct.TYPE_14__* %23, i32 144)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %19, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %9
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @assert(i32 %32)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %19, align 8
  br label %34

34:                                               ; preds = %27, %9
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load i32, i32* @TK_ASTERISK, align 4
  %43 = call i32 @sqlite3Expr(%struct.TYPE_14__* %41, i32 %42, i32 0)
  %44 = call i32* @sqlite3ExprListAppend(%struct.TYPE_13__* %38, i32 0, i32 %43)
  store i32* %44, i32** %11, align 8
  br label %45

45:                                               ; preds = %37, %34
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 18
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* @TK_SELECT, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 17
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 16
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 15
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 14
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 13
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 -1, i32* %68, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 -1, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 12
  store i64 0, i64* %74, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %45
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = call i32* @sqlite3DbMallocZero(%struct.TYPE_14__* %80, i32 4)
  store i32* %81, i32** %12, align 8
  br label %82

82:                                               ; preds = %77, %45
  %83 = load i32*, i32** %12, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32* %83, i32** %85, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 11
  store i32* %86, i32** %88, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 10
  store i32* %89, i32** %91, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 9
  store i32* %92, i32** %94, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 8
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 5
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %82
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %123 = icmp ne %struct.TYPE_12__* %122, %20
  %124 = zext i1 %123 to i32
  %125 = call i32 @clearSelect(%struct.TYPE_14__* %120, %struct.TYPE_12__* %121, i32 %124)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %19, align 8
  br label %140

126:                                              ; preds = %82
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ true, %126 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %136, %117
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %142 = icmp ne %struct.TYPE_12__* %141, %20
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  ret %struct.TYPE_12__* %145
}

declare dso_local %struct.TYPE_12__* @sqlite3DbMallocRawNN(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @sqlite3ExprListAppend(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sqlite3Expr(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32* @sqlite3DbMallocZero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @clearSelect(%struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

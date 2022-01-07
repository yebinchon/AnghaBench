; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3SelectDup.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3SelectDup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_6__*, i32, i64, i32, i32, i32, i64, i64, i8*, %struct.TYPE_6__*, i32, i8*, i8*, i8*, i8*, i32, i8* }

@SF_UsesEphemeral = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @sqlite3SelectDup(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__** %7, %struct.TYPE_6__*** %9, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %10, align 8
  br label %17

17:                                               ; preds = %152, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %156

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_6__* @sqlite3DbMallocRawNN(i32* %21, i32 144)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %156

26:                                               ; preds = %20
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 18
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @sqlite3ExprListDup(i32* %27, i8* %30, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 18
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 17
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sqlite3SrcListDup(i32* %35, i32 %38, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 17
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 16
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @sqlite3ExprDup(i32* %43, i8* %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 16
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 15
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i8* @sqlite3ExprListDup(i32* %51, i8* %54, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 15
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 14
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i8* @sqlite3ExprDup(i32* %59, i8* %62, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 14
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 13
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i8* @sqlite3ExprListDup(i32* %67, i8* %70, i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 13
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 12
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 11
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 10
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i8* @sqlite3ExprDup(i32* %85, i8* %88, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 10
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 9
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 8
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @SF_UsesEphemeral, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 -1, i32* %108, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 -1, i32* %112, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @withDup(i32* %118, i32 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  store i64 0, i64* %126, align 8
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sqlite3WindowListDup(i32* %127, i32 %130)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %26
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %140 = call i32 @gatherSelectWindows(%struct.TYPE_6__* %139)
  br label %141

141:                                              ; preds = %138, %26
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %147, %struct.TYPE_6__** %148, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store %struct.TYPE_6__** %150, %struct.TYPE_6__*** %9, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %8, align 8
  br label %152

152:                                              ; preds = %141
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  store %struct.TYPE_6__* %155, %struct.TYPE_6__** %10, align 8
  br label %17

156:                                              ; preds = %25, %17
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i8* @sqlite3ExprListDup(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3SrcListDup(i32*, i32, i32) #1

declare dso_local i8* @sqlite3ExprDup(i32*, i8*, i32) #1

declare dso_local i32 @withDup(i32*, i32) #1

declare dso_local i32 @sqlite3WindowListDup(i32*, i32) #1

declare dso_local i32 @gatherSelectWindows(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

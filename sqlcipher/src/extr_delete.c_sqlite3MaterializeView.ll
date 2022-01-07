; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3MaterializeView.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_delete.c_sqlite3MaterializeView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i8*, i8* }

@SF_IncludeHidden = common dso_local global i32 0, align 4
@SRT_EphemTab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3MaterializeView(%struct.TYPE_23__* %0, %struct.TYPE_21__* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %16, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_20__* %21, i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32* @sqlite3ExprDup(%struct.TYPE_20__* %26, i32* %27, i32 0)
  store i32* %28, i32** %9, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = call %struct.TYPE_22__* @sqlite3SrcListAppend(%struct.TYPE_23__* %29, i32 0, i32 0, i32 0)
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %15, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %32 = icmp ne %struct.TYPE_22__* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %6
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @sqlite3DbStrDup(%struct.TYPE_20__* %40, i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  store i8* %44, i8** %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @sqlite3DbStrDup(%struct.TYPE_20__* %50, i32 %58)
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  store i8* %59, i8** %64, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  br label %83

83:                                               ; preds = %33, %6
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @SF_IncludeHidden, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = call i32* @sqlite3SelectNew(%struct.TYPE_23__* %84, i32 0, %struct.TYPE_22__* %85, i32* %86, i32 0, i32 0, i32* %87, i32 %88, i32* %89)
  store i32* %90, i32** %14, align 8
  %91 = load i32, i32* @SRT_EphemTab, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @sqlite3SelectDestInit(i32* %13, i32 %91, i32 %92)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @sqlite3Select(%struct.TYPE_23__* %94, i32* %95, i32* %13)
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @sqlite3SelectDelete(%struct.TYPE_20__* %97, i32* %98)
  ret void
}

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @sqlite3ExprDup(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @sqlite3SrcListAppend(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @sqlite3SelectNew(%struct.TYPE_23__*, i32, %struct.TYPE_22__*, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @sqlite3SelectDestInit(i32*, i32, i32) #1

declare dso_local i32 @sqlite3Select(%struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

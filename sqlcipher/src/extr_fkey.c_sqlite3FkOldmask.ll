; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkOldmask.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_fkey.c_sqlite3FkOldmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_16__*, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i64* }

@SQLITE_ForeignKeys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3FkOldmask(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SQLITE_ForeignKeys, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %102

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %6, align 8
  br label %21

21:                                               ; preds = %47, %17
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = icmp ne %struct.TYPE_20__* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @COLUMN_MASK(i64 %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %6, align 8
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %53 = call %struct.TYPE_20__* @sqlite3FkReferences(%struct.TYPE_17__* %52)
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %6, align 8
  br label %54

54:                                               ; preds = %97, %51
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = icmp ne %struct.TYPE_20__* %55, null
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = call i32 @sqlite3FkLocateIndex(%struct.TYPE_18__* %58, %struct.TYPE_17__* %59, %struct.TYPE_20__* %60, %struct.TYPE_19__** %8, i32 0)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = icmp ne %struct.TYPE_19__* %62, null
  br i1 %63, label %64, label %96

64:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %65
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @COLUMN_MASK(i64 %88)
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %65

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95, %57
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %6, align 8
  br label %54

101:                                              ; preds = %54
  br label %102

102:                                              ; preds = %101, %2
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @COLUMN_MASK(i64) #1

declare dso_local %struct.TYPE_20__* @sqlite3FkReferences(%struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3FkLocateIndex(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_20__*, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

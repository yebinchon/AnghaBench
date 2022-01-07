; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeRecordUnpack.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeRecordUnpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }

@CORRUPT_DB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeRecordUnpack(%struct.TYPE_11__* %0, i32 %1, i8* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %9, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %14, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %23 = call i32 @EIGHT_BYTE_ALIGNMENT(%struct.TYPE_10__* %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i64 @getVarint32(i8* %25, i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %79, %4
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ule i64 %34, %36
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i1 [ false, %29 ], [ %37, %33 ]
  br i1 %39, label %40, label %80

40:                                               ; preds = %38
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @getVarint32(i8* %43, i64 %44)
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %15, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %67 = call i64 @sqlite3VdbeSerialGet(i8* %64, i64 %65, %struct.TYPE_10__* %66)
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 1
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %14, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %40
  br label %80

79:                                               ; preds = %40
  br label %29

80:                                               ; preds = %78, %38
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @CORRUPT_DB, align 4
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 -1
  %93 = call i32 @sqlite3VdbeMemSetNull(%struct.TYPE_10__* %92)
  br label %94

94:                                               ; preds = %88, %85, %80
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = icmp sle i64 %95, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(%struct.TYPE_10__*) #1

declare dso_local i64 @getVarint32(i8*, i64) #1

declare dso_local i64 @sqlite3VdbeSerialGet(i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3VdbeMemSetNull(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

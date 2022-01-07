; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowInitAccum.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_windowInitAccum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, i32 }

@OP_Null = common dso_local global i32 0, align 4
@nth_valueName = common dso_local global i64 0, align 8
@first_valueName = common dso_local global i64 0, align 8
@OP_Integer = common dso_local global i32 0, align 4
@SQLITE_FUNC_MINMAX = common dso_local global i32 0, align 4
@TK_UNBOUNDED = common dso_local global i64 0, align 8
@OP_ResetSorter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @windowInitAccum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @windowInitAccum(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32* @sqlite3GetVdbe(%struct.TYPE_9__* %10)
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %8, align 8
  br label %13

13:                                               ; preds = %89, %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %93

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @OP_Null, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sqlite3VdbeAddOp2(i32* %20, i32 %21, i32 0, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = call i32 @windowArgCount(%struct.TYPE_8__* %27)
  %29 = call i32 @MAX(i32 %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @nth_valueName, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %16
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @first_valueName, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35, %16
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @OP_Integer, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @sqlite3VdbeAddOp2(i32* %42, i32 %43, i32 0, i64 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @OP_Integer, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @sqlite3VdbeAddOp2(i32* %48, i32 %49, i32 0, i64 %53)
  br label %55

55:                                               ; preds = %41, %35
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TK_UNBOUNDED, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @OP_ResetSorter, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @sqlite3VdbeAddOp1(i32* %75, i32 %76, i64 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* @OP_Integer, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32 @sqlite3VdbeAddOp2(i32* %81, i32 %82, i32 0, i64 %86)
  br label %88

88:                                               ; preds = %67, %62, %55
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %8, align 8
  br label %13

93:                                               ; preds = %13
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32* @sqlite3GetVdbe(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @windowArgCount(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

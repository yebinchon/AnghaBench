; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_windowInitAccum.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_windowInitAccum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, %struct.TYPE_10__*, %struct.TYPE_8__* }
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

13:                                               ; preds = %95, %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %99

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @OP_Null, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @sqlite3VdbeAddOp2(i32* %20, i32 %21, i32 0, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = call i32 @windowArgCount(%struct.TYPE_8__* %27)
  %29 = call i32 @MAX(i32 %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %16
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @nth_valueName, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @first_valueName, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40, %34
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @OP_Integer, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @sqlite3VdbeAddOp2(i32* %47, i32 %48, i32 0, i64 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @OP_Integer, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  %59 = call i32 @sqlite3VdbeAddOp2(i32* %53, i32 %54, i32 0, i64 %58)
  br label %60

60:                                               ; preds = %46, %40
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SQLITE_FUNC_MINMAX, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TK_UNBOUNDED, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @OP_ResetSorter, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @sqlite3VdbeAddOp1(i32* %80, i32 %81, i64 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @OP_Integer, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = call i32 @sqlite3VdbeAddOp2(i32* %86, i32 %87, i32 0, i64 %91)
  br label %93

93:                                               ; preds = %72, %67, %60
  br label %94

94:                                               ; preds = %93, %16
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %8, align 8
  br label %13

99:                                               ; preds = %13
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %6, align 4
  ret i32 %109
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

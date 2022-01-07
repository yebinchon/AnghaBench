; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeLast.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeLast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, i64*, i32, i64, %struct.TYPE_13__*, %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@CURSOR_VALID = common dso_local global i64 0, align 8
@BTCF_AtLast = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_EMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeLast(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = call i32 @cursorOwnsBtShared(%struct.TYPE_14__* %7)
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_held(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* @CURSOR_VALID, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BTCF_AtLast, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @SQLITE_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %92

33:                                               ; preds = %24, %2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @moveToRoot(%struct.TYPE_14__* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CURSOR_VALID, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = call i32 @moveToRightmost(%struct.TYPE_14__* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load i32, i32* @BTCF_AtLast, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %66

59:                                               ; preds = %39
  %60 = load i32, i32* @BTCF_AtLast, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %53
  br label %90

67:                                               ; preds = %33
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SQLITE_EMPTY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br label %83

83:                                               ; preds = %76, %71
  %84 = phi i1 [ true, %71 ], [ %82, %76 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32*, i32** %5, align 8
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %67
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %31
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorOwnsBtShared(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @moveToRoot(%struct.TYPE_14__*) #1

declare dso_local i32 @moveToRightmost(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

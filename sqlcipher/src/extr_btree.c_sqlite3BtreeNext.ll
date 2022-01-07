; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_sqlite3BtreeNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@BTCF_ValidNKey = common dso_local global i32 0, align 4
@BTCF_ValidOvfl = common dso_local global i32 0, align 4
@CURSOR_VALID = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BtreeNext(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @UNUSED_PARAMETER(i32 %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @cursorOwnsBtShared(%struct.TYPE_10__* %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i1 [ true, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @BTCF_ValidNKey, align 4
  %25 = load i32, i32* @BTCF_ValidOvfl, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CURSOR_VALID, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i32 @btreeNext(%struct.TYPE_10__* %38)
  store i32 %39, i32* %3, align 4
  br label %69

40:                                               ; preds = %17
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %6, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = call i32 @btreeNext(%struct.TYPE_10__* %57)
  store i32 %58, i32* %3, align 4
  br label %69

59:                                               ; preds = %40
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SQLITE_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = call i32 @moveToLeftmost(%struct.TYPE_10__* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %64, %52, %37
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorOwnsBtShared(%struct.TYPE_10__*) #1

declare dso_local i32 @btreeNext(%struct.TYPE_10__*) #1

declare dso_local i32 @moveToLeftmost(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

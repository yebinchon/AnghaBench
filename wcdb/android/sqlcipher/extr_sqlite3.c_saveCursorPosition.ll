; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_saveCursorPosition.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_saveCursorPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64 }

@CURSOR_VALID = common dso_local global i64 0, align 8
@CURSOR_SKIPNEXT = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@CURSOR_REQUIRESEEK = common dso_local global i64 0, align 8
@BTCF_ValidNKey = common dso_local global i32 0, align 4
@BTCF_ValidOvfl = common dso_local global i32 0, align 4
@BTCF_AtLast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @saveCursorPosition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saveCursorPosition(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load i64, i64* @CURSOR_VALID, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %4, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @CURSOR_SKIPNEXT, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ true, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 0, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = call i32 @cursorHoldsMutex(%struct.TYPE_6__* %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CURSOR_SKIPNEXT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %15
  %34 = load i64, i64* @CURSOR_VALID, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %40

37:                                               ; preds = %15
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = call i32 @saveCursorKey(%struct.TYPE_6__* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = call i32 @btreeReleaseAllCursorPages(%struct.TYPE_6__* %47)
  %49 = load i64, i64* @CURSOR_REQUIRESEEK, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @BTCF_ValidNKey, align 4
  %54 = load i32, i32* @BTCF_ValidOvfl, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BTCF_AtLast, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cursorHoldsMutex(%struct.TYPE_6__*) #1

declare dso_local i32 @saveCursorKey(%struct.TYPE_6__*) #1

declare dso_local i32 @btreeReleaseAllCursorPages(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

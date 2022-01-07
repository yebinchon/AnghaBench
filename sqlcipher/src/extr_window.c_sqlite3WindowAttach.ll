; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowAttach.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_window.c_sqlite3WindowAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }

@TK_FUNCTION = common dso_local global i64 0, align 8
@EP_WinFunc = common dso_local global i32 0, align 4
@EP_Distinct = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"DISTINCT is not supported for window functions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3WindowAttach(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %8 = icmp ne %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TK_FUNCTION, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = call i64 @ALWAYS(%struct.TYPE_13__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %9
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = load i32, i32* @EP_WinFunc, align 4
  %27 = call i32 @ExprSetProperty(%struct.TYPE_15__* %25, i32 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EP_Distinct, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = call i32 @sqlite3ErrorMsg(%struct.TYPE_14__* %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %20
  br label %41

41:                                               ; preds = %40, %9
  br label %48

42:                                               ; preds = %3
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = call i32 @sqlite3WindowDelete(i32 %45, %struct.TYPE_13__* %46)
  br label %48

48:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(%struct.TYPE_13__*) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @sqlite3WindowDelete(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

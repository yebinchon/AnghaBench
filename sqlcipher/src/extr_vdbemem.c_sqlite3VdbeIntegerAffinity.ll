; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeIntegerAffinity.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeIntegerAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32 }

@MEM_Real = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i64 0, align 8
@LARGEST_INT64 = common dso_local global i64 0, align 8
@MEM_Int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3VdbeIntegerAffinity(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MEM_Real, align 4
  %8 = and i32 %6, %7
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = call i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_10__* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @sqlite3_mutex_held(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %20, %1
  %29 = phi i1 [ true, %1 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = call i32 @EIGHT_BYTE_ALIGNMENT(%struct.TYPE_10__* %32)
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @doubleToInt64(i64 %38)
  store i64 %39, i64* %3, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %28
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @SMALLEST_INT64, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @LARGEST_INT64, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = load i32, i32* @MEM_Int, align 4
  %61 = call i32 @MemSetTypeFlag(%struct.TYPE_10__* %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %50, %46, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_10__*) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @EIGHT_BYTE_ALIGNMENT(%struct.TYPE_10__*) #1

declare dso_local i64 @doubleToInt64(i64) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

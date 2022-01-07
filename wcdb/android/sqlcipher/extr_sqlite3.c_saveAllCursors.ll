; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_saveAllCursors.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_saveAllCursors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }

@BTCF_Multiple = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, %struct.TYPE_8__*)* @saveAllCursors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saveAllCursors(%struct.TYPE_7__* %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @sqlite3_mutex_held(i32 %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = icmp eq %struct.TYPE_7__* %19, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ true, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %8, align 8
  br label %29

29:                                               ; preds = %47, %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = icmp ne %struct.TYPE_8__* %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 0, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %36
  br label %51

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %8, align 8
  br label %29

51:                                               ; preds = %45, %29
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = call i32 @saveCursorsOnList(%struct.TYPE_8__* %55, i64 %56, %struct.TYPE_8__* %57)
  store i32 %58, i32* %4, align 4
  br label %71

59:                                               ; preds = %51
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* @BTCF_Multiple, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i32, i32* @SQLITE_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %54
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @saveCursorsOnList(%struct.TYPE_8__*, i64, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_vtshimOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_vtshimOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__**, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_13__**)* }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @vtshimOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtshimOpen(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load i32**, i32*** %5, align 8
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = call %struct.TYPE_11__* @sqlite3_malloc(i32 32)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = call i32 @memset(%struct.TYPE_11__* %29, i32 0, i32 32)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32 (i32, %struct.TYPE_13__**)*, i32 (i32, %struct.TYPE_13__**)** %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = call i32 %35(i32 %38, %struct.TYPE_13__** %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %28
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = call i32 @sqlite3_free(%struct.TYPE_11__* %45)
  %47 = call i32 (...) @VTSHIM_COPY_ERRMSG()
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %85

49:                                               ; preds = %28
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32**, i32*** %5, align 8
  store i32* %58, i32** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  store %struct.TYPE_11__** %61, %struct.TYPE_11__*** %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store %struct.TYPE_11__** %70, %struct.TYPE_11__*** %74, align 8
  br label %75

75:                                               ; preds = %68, %49
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %83, align 8
  %84 = load i32, i32* @SQLITE_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %75, %44, %26, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_11__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_11__*) #1

declare dso_local i32 @VTSHIM_COPY_ERRMSG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_btVfsOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb4.c_btVfsOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 (i32*, %struct.TYPE_9__*, i8*, i32, i32*)* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__**, i64 }

@SQLITE4_IOERR = common dso_local global i32 0, align 4
@SQLITE4_NOMEM = common dso_local global i32 0, align 4
@BT_OPEN_DATABASE = common dso_local global i32 0, align 4
@BT_OPEN_LOG = common dso_local global i32 0, align 4
@BT_OPEN_SHARED = common dso_local global i32 0, align 4
@SQLITE4_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*, i32, i32**)* @btVfsOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btVfsOpen(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @SQLITE4_IOERR, align 4
  store i32 %24, i32* %6, align 4
  br label %98

25:                                               ; preds = %5
  %26 = call i64 @testMalloc(i32 24)
  %27 = inttoptr i64 %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %12, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @SQLITE4_NOMEM, align 4
  store i32 %31, i32* %6, align 4
  br label %98

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @BT_OPEN_DATABASE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 0
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %42, align 8
  br label %55

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @BT_OPEN_LOG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %52, i64 1
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %53, align 8
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BT_OPEN_SHARED, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32 (i32*, %struct.TYPE_9__*, i8*, i32, i32*)*, i32 (i32*, %struct.TYPE_9__*, i8*, i32, i32*)** %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32 %74(i32* %75, %struct.TYPE_9__* %76, i8* %77, i32 %78, i32* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @SQLITE4_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %64
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %87 = call i32 @testFree(%struct.TYPE_10__* %86)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  br label %93

88:                                               ; preds = %64
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %88, %85
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %95 = bitcast %struct.TYPE_10__* %94 to i32*
  %96 = load i32**, i32*** %11, align 8
  store i32* %95, i32** %96, align 8
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %30, %23
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @testMalloc(i32) #1

declare dso_local i32 @testFree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

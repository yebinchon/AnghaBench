; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuVfsAccess.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_sqlite3rbu.c_rbuVfsAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { {}* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@RBU_STAGE_OAL = common dso_local global i64 0, align 8
@SQLITE_CANTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i32*)* @rbuVfsAccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbuVfsAccess(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = bitcast %struct.TYPE_10__* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.TYPE_10__*, i8*, i32, i32*)**
  %22 = load i32 (%struct.TYPE_10__*, i8*, i32, i32*)*, i32 (%struct.TYPE_10__*, i8*, i32, i32*)** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 %22(%struct.TYPE_10__* %23, i8* %24, i32 %25, i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.TYPE_12__* @rbuFindMaindb(%struct.TYPE_11__* %36, i8* %37, i32 1)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %12, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RBU_STAGE_OAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @SQLITE_CANTOPEN, align 4
  store i32 %59, i32* %11, align 4
  br label %68

60:                                               ; preds = %54
  store i64 0, i64* %13, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = call i32 @rbuVfsFileSize(i32* %62, i64* %13)
  store i32 %63, i32* %11, align 4
  %64 = load i64, i64* %13, align 8
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %58
  br label %69

69:                                               ; preds = %68, %46, %41, %35
  br label %70

70:                                               ; preds = %69, %31, %4
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_12__* @rbuFindMaindb(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @rbuVfsFileSize(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

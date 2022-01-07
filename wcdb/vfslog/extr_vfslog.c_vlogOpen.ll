; ModuleID = '/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogOpen.c'
source_filename = "/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_8__*, i32, i32*)* }

@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_OPEN_WAL = common dso_local global i32 0, align 4
@VLOG_OP_OPEN = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@vlog_io_methods = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_8__*, i32, i32*)* @vlogOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogOpen(i32* %0, i8* %1, %struct.TYPE_8__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = bitcast %struct.TYPE_8__* %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %15, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 1
  %20 = bitcast %struct.TYPE_9__* %19 to %struct.TYPE_8__*
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %25 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @vlogLogOpen(i8* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %39

36:                                               ; preds = %5
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i64 (...) @vlog_time()
  store i64 %40, i64* %12, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call %struct.TYPE_11__* @REALVFS(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_8__*, i32, i32*)** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call %struct.TYPE_11__* @REALVFS(i32* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 %44(%struct.TYPE_11__* %46, i8* %47, %struct.TYPE_8__* %50, i32 %51, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = call i64 (...) @vlog_time()
  %55 = load i64, i64* %12, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %13, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %39
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  br label %63

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ -1, %62 ]
  store i32 %64, i32* %14, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* @VLOG_OP_OPEN, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @vlogLogPrint(i64 %67, i64 %68, i64 %69, i32 %70, i32 %71, i32 %72, i32 0, i32 %73)
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %63
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vlog_io_methods, i32 0, i32 0), align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store %struct.TYPE_10__* @vlog_io_methods, %struct.TYPE_10__** %87, align 8
  br label %101

88:                                               ; preds = %63
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @vlogLogClose(i64 %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %78
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i64 @vlogLogOpen(i8*) #1

declare dso_local i64 @vlog_time(...) #1

declare dso_local %struct.TYPE_11__* @REALVFS(i32*) #1

declare dso_local i32 @vlogLogPrint(i64, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vlogLogClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

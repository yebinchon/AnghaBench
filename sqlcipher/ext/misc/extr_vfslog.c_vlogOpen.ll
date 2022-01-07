; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_7__*, i32, i32*)* }

@SQLITE_OPEN_MAIN_DB = common dso_local global i32 0, align 4
@SQLITE_OPEN_MAIN_JOURNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@vlog_io_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_7__*, i32, i32*)* @vlogOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogOpen(i32* %0, i8* %1, %struct.TYPE_7__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = bitcast %struct.TYPE_7__* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %15, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 1
  %20 = bitcast %struct.TYPE_8__* %19 to %struct.TYPE_7__*
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SQLITE_OPEN_MAIN_DB, align 4
  %25 = load i32, i32* @SQLITE_OPEN_MAIN_JOURNAL, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @vlogLogOpen(i8* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %37

34:                                               ; preds = %5
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = call i64 (...) @vlog_time()
  store i64 %38, i64* %12, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call %struct.TYPE_9__* @REALVFS(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_7__*, i32, i32*)*, i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_7__*, i32, i32*)** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call %struct.TYPE_9__* @REALVFS(i32* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 %42(%struct.TYPE_9__* %44, i8* %45, %struct.TYPE_7__* %48, i32 %49, i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = call i64 (...) @vlog_time()
  %53 = load i64, i64* %12, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, i64* %13, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %37
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  br label %61

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi i32 [ %59, %57 ], [ -1, %60 ]
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @vlogLogPrint(i64 %65, i64 %66, i64 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 0, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @SQLITE_OK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32* @vlog_io_methods, i32** %77, align 8
  br label %91

78:                                               ; preds = %61
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @vlogLogClose(i64 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %88, %75
  %92 = load i32, i32* %11, align 4
  ret i32 %92
}

declare dso_local i64 @vlogLogOpen(i8*) #1

declare dso_local i64 @vlog_time(...) #1

declare dso_local %struct.TYPE_9__* @REALVFS(i32*) #1

declare dso_local i32 @vlogLogPrint(i64, i64, i64, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @vlogLogClose(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

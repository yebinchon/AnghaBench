; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogFileControl.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vfslog.c_vlogFileControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, i8*)* }

@SQLITE_FCNTL_VFSNAME = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vlog/%z\00", align 1
@SQLITE_FCNTL_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@SQLITE_FCNTL_PRAGMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"FILECONTROL\00", align 1
@SQLITE_FCNTL_SIZE_HINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @vlogFileControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlogFileControl(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = call i64 (...) @vlog_time()
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_6__*, i32, i8*)*, i32 (%struct.TYPE_6__*, i32, i8*)** %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 %22(%struct.TYPE_6__* %25, i32 %26, i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SQLITE_FCNTL_VFSNAME, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @SQLITE_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to i8**
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = bitcast i8* %41 to i8**
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %36, %32, %3
  %44 = call i64 (...) @vlog_time()
  %45 = load i64, i64* %8, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SQLITE_FCNTL_TRACE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @vlogLogPrint(i32 %53, i64 %54, i64 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 -1, i8* %57, i32 %58)
  br label %106

60:                                               ; preds = %43
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SQLITE_FCNTL_PRAGMA, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = bitcast i8* %65 to i8**
  store i8** %66, i8*** %11, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i8**, i8*** %11, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @vlogLogPrint(i32 %69, i64 %70, i64 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 -1, i8* %75, i32 %76)
  br label %105

78:                                               ; preds = %60
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SQLITE_FCNTL_SIZE_HINT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @vlogLogPrint(i32 %88, i64 %89, i64 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92, i8* null, i32 %93)
  br label %104

95:                                               ; preds = %78
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @vlogLogPrint(i32 %98, i64 %99, i64 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 -1, i8* null, i32 %102)
  br label %104

104:                                              ; preds = %95, %82
  br label %105

105:                                              ; preds = %104, %64
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i64 @vlog_time(...) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @vlogLogPrint(i32, i64, i64, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

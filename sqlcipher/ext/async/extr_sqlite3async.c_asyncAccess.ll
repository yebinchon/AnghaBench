; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncAccess.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__*, i64, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { {}*, i64 }

@SQLITE_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SQLITE_ACCESS_READ = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@ASYNC_MUTEX_QUEUE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@async = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ASYNC_DELETE = common dso_local global i64 0, align 8
@ASYNC_OPENEXCLUSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ACCESS(%s): %s = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32*)* @asyncAccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyncAccess(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SQLITE_ACCESS_READWRITE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SQLITE_ACCESS_READ, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20, %4
  %29 = phi i1 [ true, %20 ], [ true, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @ASYNC_MUTEX_QUEUE, align 4
  %33 = call i32 @async_mutex_enter(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.TYPE_8__*, i8*, i32, i32*)**
  %37 = load i32 (%struct.TYPE_8__*, i8*, i32, i32*)*, i32 (%struct.TYPE_8__*, i8*, i32, i32*)** %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 %37(%struct.TYPE_8__* %38, i8* %39, i32 %40, i32* %10)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %28
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @async, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %11, align 8
  br label %51

51:                                               ; preds = %93, %49
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %53 = icmp ne %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %97

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ASYNC_DELETE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i64 %63, i8* %64)
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %92

68:                                               ; preds = %60, %54
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ASYNC_OPENEXCLUSIVE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @strcmp(i64 %86, i8* %87)
  %89 = icmp eq i64 0, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 1, i32* %10, align 4
  br label %91

91:                                               ; preds = %90, %81, %74, %68
  br label %92

92:                                               ; preds = %91, %67
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %11, align 8
  br label %51

97:                                               ; preds = %51
  br label %98

98:                                               ; preds = %97, %45, %28
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SQLITE_ACCESS_READWRITE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %109

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @SQLITE_ACCESS_READ, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  br label %109

109:                                              ; preds = %103, %102
  %110 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %102 ], [ %108, %103 ]
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @ASYNC_TRACE(i8* %114)
  %116 = load i32, i32* @ASYNC_MUTEX_QUEUE, align 4
  %117 = call i32 @async_mutex_leave(i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @async_mutex_enter(i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @ASYNC_TRACE(i8*) #1

declare dso_local i32 @async_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

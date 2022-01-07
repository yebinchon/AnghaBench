; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i8*, i32, i32, i32*, i32, i32, i32, i32*, %struct.TYPE_8__* }

@WALINDEX_LOCK_OFFSET = common dso_local global i32 0, align 4
@WALINDEX_HDR_SIZE = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@WAL_HEAPMEMORY_MODE = common dso_local global i32 0, align 4
@WAL_NORMAL_MODE = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_WAL = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@WAL_RDONLY = common dso_local global i32 0, align 4
@SQLITE_IOCAP_SEQUENTIAL = common dso_local global i32 0, align 4
@SQLITE_IOCAP_POWERSAFE_OVERWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WAL%d: opened\0A\00", align 1
@UNIX_SHM_BASE = common dso_local global i32 0, align 4
@WIN_SHM_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalOpen(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_9__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_9__** %5, %struct.TYPE_9__*** %13, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %20, %6
  %27 = phi i1 [ false, %6 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @WALINDEX_LOCK_OFFSET, align 4
  %34 = icmp eq i32 120, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @WALINDEX_HDR_SIZE, align 4
  %38 = icmp eq i32 136, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 64, %44
  %46 = call i64 @sqlite3MallocZero(i64 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %15, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %26
  %51 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %51, i32* %7, align 4
  br label %149

52:                                               ; preds = %26
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 9
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 1
  %58 = bitcast %struct.TYPE_9__* %57 to i32*
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %52
  %79 = load i32, i32* @WAL_HEAPMEMORY_MODE, align 4
  br label %82

80:                                               ; preds = %52
  %81 = load i32, i32* @WAL_NORMAL_MODE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %87 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SQLITE_OPEN_WAL, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %16, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @sqlite3OsOpen(%struct.TYPE_8__* %91, i8* %92, i32* %95, i32 %96, i32* %16)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* @SQLITE_OK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %82
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @WAL_RDONLY, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %101, %82
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @SQLITE_OK, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %116 = call i32 @walIndexClose(%struct.TYPE_9__* %115, i32 0)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @sqlite3OsClose(i32* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %122 = call i32 @sqlite3_free(%struct.TYPE_9__* %121)
  br label %147

123:                                              ; preds = %110
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @sqlite3OsDeviceCharacteristics(i32* %124)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @SQLITE_IOCAP_SEQUENTIAL, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @SQLITE_IOCAP_POWERSAFE_OVERWRITE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %143 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %13, align 8
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %145 = bitcast %struct.TYPE_9__* %144 to i8*
  %146 = call i32 @WALTRACE(i8* %145)
  br label %147

147:                                              ; preds = %141, %114
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %147, %50
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3MallocZero(i64) #1

declare dso_local i32 @sqlite3OsOpen(%struct.TYPE_8__*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @walIndexClose(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sqlite3OsClose(i32*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3OsDeviceCharacteristics(i32*) #1

declare dso_local i32 @WALTRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbesort.c_sqlite3VdbeSorterRowkey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbesort.c_sqlite3VdbeSorterRowkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }

@CURTYPE_SORTER = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeSorterRowkey(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CURTYPE_SORTER, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @vdbeSorterRowkey(i32* %20, i32* %8)
  store i8* %21, i8** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @sqlite3VdbeMemClearAndResize(%struct.TYPE_10__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load i32, i32* @MEM_Blob, align 4
  %34 = call i32 @MemSetTypeFlag(%struct.TYPE_10__* %32, i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memcpy(i32 %37, i8* %38, i32 %39)
  %41 = load i32, i32* @SQLITE_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %28, %26
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @vdbeSorterRowkey(i32*, i32*) #1

declare dso_local i64 @sqlite3VdbeMemClearAndResize(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

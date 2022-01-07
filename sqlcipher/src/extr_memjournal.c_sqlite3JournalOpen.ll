; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_memjournal.c_sqlite3JournalOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_memjournal.c_sqlite3JournalOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32*, i32* }

@MEMJOURNAL_DFLT_FILECHUNKSIZE = common dso_local global i32 0, align 4
@MemJournalMethods = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3JournalOpen(i32* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %16 = call i32 @memset(%struct.TYPE_3__* %15, i32 0, i32 40)
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @sqlite3OsOpen(i32* %20, i8* %21, i32* %22, i32 %23, i32 0)
  store i32 %24, i32* %6, align 4
  br label %64

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %48

32:                                               ; preds = %25
  %33 = load i32, i32* @MEMJOURNAL_DFLT_FILECHUNKSIZE, align 4
  %34 = add nsw i32 8, %33
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MEMJOURNAL_DFLT_FILECHUNKSIZE, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fileChunkSize(i32 %43)
  %45 = icmp eq i32 %40, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %32, %28
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  store i32* @MemJournalMethods, i32** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @SQLITE_OK, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %48, %19
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @sqlite3OsOpen(i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fileChunkSize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexIntegrityCheckEmpty.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5IndexIntegrityCheckEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_CORRUPT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32, i32)* @fts5IndexIntegrityCheckEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5IndexIntegrityCheckEmpty(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %62, %5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SQLITE_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sle i32 %21, %22
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i1 [ false, %14 ], [ %23, %20 ]
  br i1 %25, label %26, label %65

26:                                               ; preds = %24
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @FTS5_SEGMENT_ROWID(i32 %30, i32 %31)
  %33 = call i32* @fts5DataRead(%struct.TYPE_7__* %27, i32 %32)
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %26
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @fts5LeafIsTermless(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** @FTS5_CORRUPT, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %12, align 8
  %51 = call i64 @fts5LeafFirstRowidOff(i32* %50)
  %52 = icmp ne i64 0, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** @FTS5_CORRUPT, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %49, %45
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @fts5DataRelease(i32* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %14

65:                                               ; preds = %24
  ret void
}

declare dso_local i32* @fts5DataRead(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @FTS5_SEGMENT_ROWID(i32, i32) #1

declare dso_local i32 @fts5LeafIsTermless(i32*) #1

declare dso_local i64 @fts5LeafFirstRowidOff(i32*) #1

declare dso_local i32 @fts5DataRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3SegReaderCursor.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3SegReaderCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FTS3_SEGCURSOR_ALL = common dso_local global i32 0, align 4
@FTS3_SEGCURSOR_PENDING = common dso_local global i32 0, align 4
@FTS3_SEGDIR_MAXLEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3Fts3SegReaderCursor(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %19 = load i32, i32* %12, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %9
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %9
  %28 = phi i1 [ false, %9 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @FTS3_SEGCURSOR_PENDING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %13, align 4
  %40 = icmp sge i32 %39, 0
  br label %41

41:                                               ; preds = %38, %34, %27
  %42 = phi i1 [ true, %34 ], [ true, %27 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @FTS3_SEGDIR_MAXLEVEL, align 4
  %47 = icmp slt i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* @FTS3_SEGCURSOR_ALL, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @FTS3_SEGCURSOR_PENDING, align 4
  %54 = icmp slt i32 %53, 0
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi i1 [ false, %41 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %17, align 4
  %63 = icmp eq i32 %62, 0
  br label %64

64:                                               ; preds = %61, %55
  %65 = phi i1 [ true, %55 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @memset(i32* %68, i32 0, i32 4)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @fts3SegReaderCursor(%struct.TYPE_4__* %70, i32 %71, i32 %72, i32 %73, i8* %74, i32 %75, i32 %76, i32 %77, i32* %78)
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fts3SegReaderCursor(%struct.TYPE_4__*, i32, i32, i32, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

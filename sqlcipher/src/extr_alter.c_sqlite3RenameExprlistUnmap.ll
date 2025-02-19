; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3RenameExprlistUnmap.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_sqlite3RenameExprlistUnmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32* }

@renameUnmapExprCb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3RenameExprlistUnmap(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = call i32 @memset(%struct.TYPE_9__* %6, i32 0, i32 16)
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* @renameUnmapExprCb, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i32 @sqlite3WalkExprList(%struct.TYPE_9__* %6, %struct.TYPE_10__* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %35, %9
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @sqlite3RenameTokenRemap(i32* %24, i32 0, i8* %33)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %17

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @sqlite3WalkExprList(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3RenameTokenRemap(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

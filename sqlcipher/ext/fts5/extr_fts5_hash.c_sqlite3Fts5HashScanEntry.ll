; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_sqlite3Fts5HashScanEntry.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_sqlite3Fts5HashScanEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Fts5HashScanEntry(%struct.TYPE_8__* %0, i8** %1, i32** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %9, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %18 = call i8* @fts5EntryKey(%struct.TYPE_7__* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = call i32 @fts5HashAddPoslistSize(%struct.TYPE_8__* %22, %struct.TYPE_7__* %23, i32 0)
  %25 = load i8*, i8** %10, align 8
  %26 = load i8**, i8*** %6, align 8
  store i8* %25, i8** %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = bitcast i8* %31 to i32*
  %33 = load i32**, i32*** %7, align 8
  store i32* %32, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 4, %39
  %41 = add i64 %40, 1
  %42 = sub i64 %37, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %49

45:                                               ; preds = %4
  %46 = load i8**, i8*** %6, align 8
  store i8* null, i8** %46, align 8
  %47 = load i32**, i32*** %7, align 8
  store i32* null, i32** %47, align 8
  %48 = load i32*, i32** %8, align 8
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %16
  ret void
}

declare dso_local i8* @fts5EntryKey(%struct.TYPE_7__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fts5HashAddPoslistSize(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

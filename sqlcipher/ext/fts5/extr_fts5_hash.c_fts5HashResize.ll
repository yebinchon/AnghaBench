; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_fts5HashResize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_hash.c_fts5HashResize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @fts5HashResize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5HashResize(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %15, align 8
  store %struct.TYPE_7__** %16, %struct.TYPE_7__*** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @sqlite3_malloc64(i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %22, %struct.TYPE_7__*** %6, align 8
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %24 = icmp ne %struct.TYPE_7__** %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %1
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.TYPE_7__** %28, i32 0, i32 %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %83, %27
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %48, %40
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %41
  %49 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %49, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %9, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 %59
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = call i64 @fts5EntryKey(%struct.TYPE_7__* %62)
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = call i64 @fts5EntryKey(%struct.TYPE_7__* %65)
  %67 = call i64 @strlen(i64 %66)
  %68 = trunc i64 %67 to i32
  %69 = call i32 @fts5HashKey(i32 %61, i32* %64, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %81, align 8
  br label %41

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %34

86:                                               ; preds = %34
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %88 = call i32 @sqlite3_free(%struct.TYPE_7__** %87)
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  store %struct.TYPE_7__** %92, %struct.TYPE_7__*** %94, align 8
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %86, %25
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @fts5HashKey(i32, i32*, i32) #1

declare dso_local i64 @fts5EntryKey(%struct.TYPE_7__*) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

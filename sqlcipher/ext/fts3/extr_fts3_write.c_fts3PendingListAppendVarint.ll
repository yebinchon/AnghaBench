; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingListAppendVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingListAppendVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTS3_VARINT_MAX = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__**, i32)* @fts3PendingListAppendVarint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3PendingListAppendVarint(%struct.TYPE_7__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = call %struct.TYPE_7__* @sqlite3_malloc(i32 124)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %12
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 100, i32* %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 1
  %23 = bitcast %struct.TYPE_7__* %22 to i8*
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  br label %68

28:                                               ; preds = %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FTS3_VARINT_MAX, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %28
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %42, 2
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 24, %46
  %48 = trunc i64 %47 to i32
  %49 = call %struct.TYPE_7__* @sqlite3_realloc(%struct.TYPE_7__* %44, i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %39
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @sqlite3_free(%struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %56, align 8
  %57 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %57, i32* %3, align 4
  br label %96

58:                                               ; preds = %39
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 1
  %64 = bitcast %struct.TYPE_7__* %63 to i8*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %58, %28
  br label %68

68:                                               ; preds = %67, %18
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = load i32, i32* %5, align 4
  %78 = call i64 @sqlite3Fts3PutVarint(i8* %76, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %94, align 8
  %95 = load i32, i32* @SQLITE_OK, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %68, %52, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_7__* @sqlite3_malloc(i32) #1

declare dso_local %struct.TYPE_7__* @sqlite3_realloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_7__*) #1

declare dso_local i64 @sqlite3Fts3PutVarint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingTermsAddOne.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingTermsAddOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32*, i8*, i32)* @fts3PendingTermsAddOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3PendingTermsAddOne(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @fts3HashFind(i32* %16, i8* %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %13, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %6
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = add i64 %29, 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  br label %37

37:                                               ; preds = %23, %6
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @fts3PendingListAppend(%struct.TYPE_8__** %13, i32 %40, i32 %41, i32 %42, i32* %14)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %51 = call %struct.TYPE_8__* @fts3HashInsert(i32* %47, i8* %48, i32 %49, %struct.TYPE_8__* %50)
  %52 = icmp eq %struct.TYPE_8__* %46, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %45
  %54 = load i32*, i32** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @fts3HashFind(i32* %54, i8* %55, i32 %56)
  %58 = icmp eq i64 0, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = call i32 @sqlite3_free(%struct.TYPE_8__* %61)
  %63 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %53, %45
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @SQLITE_OK, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = add i64 %75, 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  br label %83

83:                                               ; preds = %69, %65
  %84 = load i32, i32* %14, align 4
  ret i32 %84
}

declare dso_local i64 @fts3HashFind(i32*, i8*, i32) #1

declare dso_local i64 @fts3PendingListAppend(%struct.TYPE_8__**, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @fts3HashInsert(i32*, i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

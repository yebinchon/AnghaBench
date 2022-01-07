; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CursorReseek.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_main.c_fts5CursorReseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5CSR_REQUIRE_RESEEK = common dso_local global i32 0, align 4
@FTS5CSR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @fts5CursorReseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5CursorReseek(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i32, i32* @FTS5CSR_REQUIRE_RESEEK, align 4
  %17 = call i64 @CsrFlagTest(%struct.TYPE_13__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @sqlite3Fts5ExprRowid(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sqlite3Fts5ExprFirst(i32 %34, i32 %38, i64 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SQLITE_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %19
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @sqlite3Fts5ExprRowid(i32 %49)
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %45, %19
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = load i32, i32* @FTS5CSR_REQUIRE_RESEEK, align 4
  %57 = call i32 @CsrFlagClear(%struct.TYPE_13__* %55, i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = call i32 @fts5CsrNewrow(%struct.TYPE_13__* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @sqlite3Fts5ExprEof(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = load i32, i32* @FTS5CSR_EOF, align 4
  %68 = call i32 @CsrFlagSet(%struct.TYPE_13__* %66, i32 %67)
  %69 = load i32*, i32** %4, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %54
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CsrFlagTest(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @sqlite3Fts5ExprRowid(i32) #1

declare dso_local i32 @sqlite3Fts5ExprFirst(i32, i32, i64, i32) #1

declare dso_local i32 @CsrFlagClear(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fts5CsrNewrow(%struct.TYPE_13__*) #1

declare dso_local i64 @sqlite3Fts5ExprEof(i32) #1

declare dso_local i32 @CsrFlagSet(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

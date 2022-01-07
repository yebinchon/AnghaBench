; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_memstat.c_memstatFindSchemas.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_memstat.c_memstatFindSchemas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PRAGMA database_list\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @memstatFindSchemas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memstatFindSchemas(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %2, align 4
  br label %80

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sqlite3_prepare_v2(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %4, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @sqlite3_finalize(i32* %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %80

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @sqlite3_step(i32* %27)
  %29 = load i64, i64* @SQLITE_ROW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i8** @sqlite3_realloc64(i8** %34, i32 %41)
  store i8** %42, i8*** %6, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = call i32 @memstatClearSchema(%struct.TYPE_4__* %46)
  %48 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %48, i32* %2, align 4
  br label %80

49:                                               ; preds = %31
  %50 = load i8**, i8*** %6, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i8** %50, i8*** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @sqlite3_column_text(i32* %53, i32 1)
  %55 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = call i32 @memstatClearSchema(%struct.TYPE_4__* %59)
  %61 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %61, i32* %2, align 4
  br label %80

62:                                               ; preds = %49
  %63 = load i8*, i8** %7, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %66, i64 %70
  store i8* %63, i8** %71, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %26

76:                                               ; preds = %26
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @sqlite3_finalize(i32* %77)
  %79 = load i32, i32* @SQLITE_OK, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %58, %45, %21, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i8** @sqlite3_realloc64(i8**, i32) #1

declare dso_local i32 @memstatClearSchema(%struct.TYPE_4__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local i32 @sqlite3_column_text(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

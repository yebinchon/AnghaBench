; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_fuzzer.c_fuzzerConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: wrong number of CREATE VIRTUAL TABLE arguments\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CREATE TABLE x(word,distance,ruleset)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fuzzerConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuzzerConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %13, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %15, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %16, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %6
  %29 = load i8*, i8** %15, align 8
  %30 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** %12, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %32, i32* %13, align 4
  br label %93

33:                                               ; preds = %6
  %34 = load i8*, i8** %15, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %17, align 8
  %37 = add i64 8, %36
  %38 = add i64 %37, 1
  %39 = call %struct.TYPE_5__* @sqlite3_malloc64(i64 %38)
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %14, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %43, i32* %13, align 4
  br label %92

44:                                               ; preds = %33
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = call i32 @memset(%struct.TYPE_5__* %45, i32 0, i32 8)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 1
  %49 = bitcast %struct.TYPE_5__* %48 to i8*
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i64, i64* %17, align 8
  %57 = add nsw i64 %56, 1
  %58 = call i32 @memcpy(i8* %54, i8* %55, i64 %57)
  %59 = load i8**, i8*** %10, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @fuzzerDequote(i8* %61)
  store i8* %62, i8** %18, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %44
  %66 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %66, i32* %13, align 4
  br label %76

67:                                               ; preds = %44
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = load i8**, i8*** %12, align 8
  %73 = call i32 @fuzzerLoadRules(i32* %68, %struct.TYPE_5__* %69, i8* %70, i8* %71, i8** %72)
  store i32 %73, i32* %13, align 4
  %74 = load i8*, i8** %18, align 8
  %75 = call i32 @sqlite3_free(i8* %74)
  br label %76

76:                                               ; preds = %67, %65
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @sqlite3_declare_vtab(i32* %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = bitcast %struct.TYPE_5__* %88 to i32*
  %90 = call i32 @fuzzerDisconnect(i32* %89)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91, %42
  br label %93

93:                                               ; preds = %92, %28
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = bitcast %struct.TYPE_5__* %94 to i32*
  %96 = load i32**, i32*** %11, align 8
  store i32* %95, i32** %96, align 8
  %97 = load i32, i32* %13, align 4
  ret i32 %97
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_5__* @sqlite3_malloc64(i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @fuzzerDequote(i8*) #1

declare dso_local i32 @fuzzerLoadRules(i32*, %struct.TYPE_5__*, i8*, i8*, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @fuzzerDisconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

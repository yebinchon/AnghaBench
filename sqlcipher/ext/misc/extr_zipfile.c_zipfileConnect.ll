; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_zipfile.c_zipfileConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32* }

@ZIPFILE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"zipfile\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"zipfile constructor requires one argument\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@ZIPFILE_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @zipfileConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zipfileConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %19 = load i32, i32* @ZIPFILE_BUFFER_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 24, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %17, align 8
  %23 = load i8**, i8*** %11, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @sqlite3_stricmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = icmp eq i64 0, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8**, i8*** %11, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @sqlite3_stricmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 0, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %6
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %6
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %35
  %42 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8**, i8*** %13, align 8
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %44, i32* %7, align 4
  br label %117

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 3
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i8**, i8*** %11, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 3
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = call i64 @strlen(i8* %52)
  %54 = trunc i64 %53 to i32
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @ZIPFILE_SCHEMA, align 4
  %59 = call i32 @sqlite3_declare_vtab(i32* %57, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %112

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = call i64 @sqlite3_malloc64(i64 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %17, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %72 = icmp eq %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %74, i32* %7, align 4
  br label %117

75:                                               ; preds = %63
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @memset(%struct.TYPE_3__* %76, i32 0, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 1
  %86 = bitcast %struct.TYPE_3__* %85 to i32*
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load i8*, i8** %16, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %75
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @ZIPFILE_BUFFER_SIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = bitcast i32* %97 to i8*
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @memcpy(i8* %103, i8* %104, i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @zipfileDequote(i8* %109)
  br label %111

111:                                              ; preds = %91, %75
  br label %112

112:                                              ; preds = %111, %56
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %114 = bitcast %struct.TYPE_3__* %113 to i32*
  %115 = load i32**, i32*** %12, align 8
  store i32* %114, i32** %115, align 8
  %116 = load i32, i32* %18, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %112, %73, %41
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i32) #1

declare dso_local i64 @sqlite3_malloc64(i64) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @zipfileDequote(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_vtshimCreate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtshim.c_vtshimCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__**, %struct.TYPE_9__*, i32 }
%struct.TYPE_7__ = type { i32 (i32*, i32, i32, i8**, i32*, i8**)* }

@.str = private unnamed_addr constant [33 x i8] c"virtual table was disposed: \22%s\22\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @vtshimCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtshimCreate(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %14, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %6
  %31 = load i8**, i8*** %13, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i8**, i8*** %13, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %40, i32* %7, align 4
  br label %104

41:                                               ; preds = %6
  %42 = call %struct.TYPE_8__* @sqlite3_malloc(i32 32)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %15, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = bitcast %struct.TYPE_8__* %43 to i32*
  %45 = load i32**, i32*** %12, align 8
  store i32* %44, i32** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %47 = icmp eq %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %49, i32* %7, align 4
  br label %104

50:                                               ; preds = %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = call i32 @memset(%struct.TYPE_8__* %51, i32 0, i32 32)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32 (i32*, i32, i32, i8**, i32*, i8**)*, i32 (i32*, i32, i32, i8**, i32*, i8**)** %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i8**, i8*** %11, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i8**, i8*** %13, align 8
  %67 = call i32 %57(i32* %58, i32 %61, i32 %62, i8** %63, i32* %65, i8** %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %50
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %72 = call i32 @sqlite3_free(%struct.TYPE_8__* %71)
  %73 = load i32**, i32*** %12, align 8
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %7, align 4
  br label %104

75:                                               ; preds = %50
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store %struct.TYPE_8__** %80, %struct.TYPE_8__*** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = icmp ne %struct.TYPE_8__* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %75
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store %struct.TYPE_8__** %94, %struct.TYPE_8__*** %98, align 8
  br label %99

99:                                               ; preds = %92, %75
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %102, align 8
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %70, %48, %39
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

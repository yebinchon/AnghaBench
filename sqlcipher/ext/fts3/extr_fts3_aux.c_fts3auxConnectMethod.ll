; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_aux.c_fts3auxConnectMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_aux.c_fts3auxConnectMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@FTS3_AUX_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"invalid arguments to fts4aux constructor\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fts3auxConnectMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3auxConnectMethod(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @UNUSED_PARAMETER(i8* %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %155

29:                                               ; preds = %25, %6
  %30 = load i8**, i8*** %11, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %57

38:                                               ; preds = %29
  %39 = load i32, i32* %16, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i8*, i8** %14, align 8
  %43 = call i64 @sqlite3_strnicmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %42, i32 4)
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8**, i8*** %11, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 3
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %16, align 4
  %52 = load i8**, i8*** %11, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 4
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %15, align 8
  br label %56

55:                                               ; preds = %41, %38
  br label %155

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %29
  %58 = load i8**, i8*** %11, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %15, align 8
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i8*, i8** %15, align 8
  %63 = call i64 @strlen(i8* %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %17, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @FTS3_AUX_SCHEMA, align 4
  %67 = call i32 @sqlite3_declare_vtab(i32* %65, i32 %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %7, align 4
  br label %159

73:                                               ; preds = %61
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = add i64 40, %75
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %76, %78
  %80 = add i64 %79, 2
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = call i64 @sqlite3_malloc64(i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %20, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %86 = icmp ne %struct.TYPE_4__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %73
  %88 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %88, i32* %7, align 4
  br label %159

89:                                               ; preds = %73
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @memset(%struct.TYPE_4__* %90, i32 0, i32 %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 1
  %95 = bitcast %struct.TYPE_4__* %94 to %struct.TYPE_5__*
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 1
  %102 = bitcast %struct.TYPE_5__* %101 to i8*
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i8* %115, i8** %119, align 8
  %120 = load i32*, i32** %8, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i32* %120, i32** %124, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 1, i32* %128, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %14, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @memcpy(i8* %133, i8* %134, i32 %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @memcpy(i8* %141, i8* %142, i32 %143)
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @sqlite3Fts3Dequote(i8* %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %152 = bitcast %struct.TYPE_4__* %151 to i32*
  %153 = load i32**, i32*** %12, align 8
  store i32* %152, i32** %153, align 8
  %154 = load i32, i32* @SQLITE_OK, align 4
  store i32 %154, i32* %7, align 4
  br label %159

155:                                              ; preds = %55, %28
  %156 = load i8**, i8*** %13, align 8
  %157 = call i32 @sqlite3Fts3ErrMsg(i8** %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %89, %87, %71
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3Fts3Dequote(i8*) #1

declare dso_local i32 @sqlite3Fts3ErrMsg(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

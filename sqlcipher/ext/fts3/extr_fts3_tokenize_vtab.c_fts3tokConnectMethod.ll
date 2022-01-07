; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenize_vtab.c_fts3tokConnectMethod.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenize_vtab.c_fts3tokConnectMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i8**, i32**)*, i32 (i32*)* }

@FTS3_TOK_SCHEMA = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @fts3tokConnectMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3tokConnectMethod(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8**, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  store i32* null, i32** %16, align 8
  store i8** null, i8*** %18, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @FTS3_TOK_SCHEMA, align 4
  %24 = call i32 @sqlite3_declare_vtab(i32* %22, i32 %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %7, align 4
  br label %126

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 3
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 3
  %36 = call i32 @fts3tokDequoteArray(i32 %33, i8** %35, i8*** %18)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* @SQLITE_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %30
  %41 = load i32, i32* %19, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %48

44:                                               ; preds = %40
  %45 = load i8**, i8*** %18, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %20, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i8*, i8** %20, align 8
  %52 = load i8**, i8*** %13, align 8
  %53 = call i32 @fts3tokQueryTokenizer(i32* %50, i8* %51, %struct.TYPE_5__** %15, i8** %52)
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %48, %30
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  %61 = zext i1 %60 to i32
  %62 = icmp eq i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %54
  %69 = load i8**, i8*** %18, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  store i8** %70, i8*** %21, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32 (i32, i8**, i32**)*, i32 (i32, i8**, i32**)** %72, align 8
  %74 = load i32, i32* %19, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %19, align 4
  %78 = sub nsw i32 %77, 1
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  %82 = load i8**, i8*** %21, align 8
  %83 = call i32 %73(i32 %81, i8** %82, i32** %16)
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %80, %54
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* @SQLITE_OK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = call i64 @sqlite3_malloc(i32 24)
  %90 = inttoptr i64 %89 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %14, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %92 = icmp eq %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %93, %88
  br label %96

96:                                               ; preds = %95, %84
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %102 = call i32 @memset(%struct.TYPE_6__* %101, i32 0, i32 24)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %105, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32**, i32*** %12, align 8
  store i32* %110, i32** %111, align 8
  br label %122

112:                                              ; preds = %96
  %113 = load i32*, i32** %16, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32 (i32*)*, i32 (i32*)** %117, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 %118(i32* %119)
  br label %121

121:                                              ; preds = %115, %112
  br label %122

122:                                              ; preds = %121, %100
  %123 = load i8**, i8*** %18, align 8
  %124 = call i32 @sqlite3_free(i8** %123)
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %28
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @sqlite3_declare_vtab(i32*, i32) #1

declare dso_local i32 @fts3tokDequoteArray(i32, i8**, i8***) #1

declare dso_local i32 @fts3tokQueryTokenizer(i32*, i8*, %struct.TYPE_5__**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

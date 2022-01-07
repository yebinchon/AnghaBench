; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_closure.c_closureConnect.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_closure.c_closureConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i8*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"tablename\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"idcolumn\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"parentcolumn\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unrecognized argument: [%s]\0A\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [90 x i8] c"CREATE TABLE x(id,depth,root HIDDEN,tablename HIDDEN,idcolumn HIDDEN,parentcolumn HIDDEN)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8**, i32**, i8**)* @closureConnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @closureConnect(i32* %0, i8* %1, i32 %2, i8** %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %14, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %20 = load i8**, i8*** %11, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32**, i32*** %12, align 8
  store i32* null, i32** %24, align 8
  %25 = call %struct.TYPE_5__* @sqlite3_malloc(i32 56)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %15, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %29, i32* %7, align 4
  br label %172

30:                                               ; preds = %6
  %31 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %31, i32* %14, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %33 = call i32 @memset(%struct.TYPE_5__* %32, i32 0, i32 56)
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %168

46:                                               ; preds = %30
  %47 = load i8**, i8*** %11, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %168

59:                                               ; preds = %46
  store i32 3, i32* %18, align 4
  br label %60

60:                                               ; preds = %151, %59
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %154

64:                                               ; preds = %60
  %65 = load i8**, i8*** %11, align 8
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @closureValueOfKey(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i8* %70, i8** %17, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %64
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @sqlite3_free(i64 %76)
  %78 = load i8*, i8** %17, align 8
  %79 = call i8* @closureDequote(i8* %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %168

88:                                               ; preds = %73
  br label %151

89:                                               ; preds = %64
  %90 = load i8**, i8*** %11, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @closureValueOfKey(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  store i8* %95, i8** %17, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @sqlite3_free(i64 %101)
  %103 = load i8*, i8** %17, align 8
  %104 = call i8* @closureDequote(i8* %103)
  %105 = ptrtoint i8* %104 to i64
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %168

113:                                              ; preds = %98
  br label %151

114:                                              ; preds = %89
  %115 = load i8**, i8*** %11, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @closureValueOfKey(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  store i8* %120, i8** %17, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %114
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @sqlite3_free(i64 %126)
  %128 = load i8*, i8** %17, align 8
  %129 = call i8* @closureDequote(i8* %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %123
  br label %168

138:                                              ; preds = %123
  br label %151

139:                                              ; preds = %114
  %140 = load i8**, i8*** %11, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %144)
  %146 = load i8**, i8*** %13, align 8
  store i8* %145, i8** %146, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %148 = call i32 @closureFree(%struct.TYPE_5__* %147)
  %149 = load i32**, i32*** %12, align 8
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %150, i32* %7, align 4
  br label %172

151:                                              ; preds = %138, %113, %88
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %60

154:                                              ; preds = %60
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @sqlite3_declare_vtab(i32* %155, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0))
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @SQLITE_OK, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %162 = call i32 @closureFree(%struct.TYPE_5__* %161)
  br label %163

163:                                              ; preds = %160, %154
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 4
  %166 = load i32**, i32*** %12, align 8
  store i32* %165, i32** %166, align 8
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %7, align 4
  br label %172

168:                                              ; preds = %137, %112, %87, %58, %45
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %170 = call i32 @closureFree(%struct.TYPE_5__* %169)
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %168, %163, %139, %28
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_5__* @sqlite3_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i8* @closureValueOfKey(i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i8* @closureDequote(i8*) #1

declare dso_local i32 @closureFree(%struct.TYPE_5__*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_spellfix1Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [154 x i8] c"CREATE TABLE x(word,rank,distance,langid, score, matchlen, phonehash HIDDEN, top HIDDEN, scope HIDDEN, srchcnt HIDDEN, soundslike HIDDEN, command HIDDEN)\00", align 1
@.str.2 = private unnamed_addr constant [134 x i8] c"CREATE TABLE IF NOT EXISTS \22%w\22.\22%w_vocab\22(\0A  id INTEGER PRIMARY KEY,\0A  rank INT,\0A  langid INT,\0A  word TEXT,\0A  k1 TEXT,\0A  k2 TEXT\0A);\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"CREATE INDEX IF NOT EXISTS \22%w\22.\22%w_vocab_index_langid_k2\22 ON \22%w_vocab\22(langid,k2);\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"edit_cost_table=\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"bad argument to spellfix1(): \22%s\22\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32, i8**, i32**, i8**)* @spellfix1Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spellfix1Init(i32 %0, i32* %1, i8* %2, i32 %3, i8** %4, i32** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i8** %6, i8*** %14, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  %21 = load i8**, i8*** %12, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %16, align 8
  %24 = load i8**, i8*** %12, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i8*, i8** %16, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 40, %32
  %34 = add i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = call %struct.TYPE_4__* @sqlite3_malloc64(i32 %35)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %15, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %7
  %40 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %40, i32* %19, align 4
  br label %144

41:                                               ; preds = %7
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %43 = call i32 @memset(%struct.TYPE_4__* %42, i32 0, i32 40)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 1
  %46 = bitcast %struct.TYPE_4__* %45 to i8*
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @memcpy(i8* %51, i8* %52, i32 %54)
  %56 = load i8*, i8** %17, align 8
  %57 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %41
  %69 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %69, i32* %19, align 4
  br label %73

70:                                               ; preds = %41
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @sqlite3_declare_vtab(i32* %71, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.1, i64 0, i64 0))
  store i32 %72, i32* %19, align 4
  br label %73

73:                                               ; preds = %70, %68
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* @SQLITE_OK, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = call i32 (i32*, i32*, i8*, i8*, i8*, ...) @spellfix1DbExec(i32* %19, i32* %81, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.2, i64 0, i64 0), i8* %82, i8* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 (i32*, i32*, i8*, i8*, i8*, ...) @spellfix1DbExec(i32* %19, i32* %85, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i8* %86, i8* %87, i8* %88)
  br label %90

90:                                               ; preds = %80, %77, %73
  store i32 3, i32* %20, align 4
  br label %91

91:                                               ; preds = %140, %90
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %96, %97
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i1 [ false, %91 ], [ %98, %95 ]
  br i1 %100, label %101, label %143

101:                                              ; preds = %99
  %102 = load i8**, i8*** %12, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strncmp(i8* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %101
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load i8**, i8*** %12, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 16
  %121 = call i64 @spellfix1Dequote(i8* %120)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %129, i32* %19, align 4
  br label %130

130:                                              ; preds = %128, %114
  br label %140

131:                                              ; preds = %109, %101
  %132 = load i8**, i8*** %12, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  %138 = load i8**, i8*** %14, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %139, i32* %19, align 4
  br label %140

140:                                              ; preds = %131, %130
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %91

143:                                              ; preds = %99
  br label %144

144:                                              ; preds = %143, %39
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %149 = icmp ne %struct.TYPE_4__* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32**, i32*** %13, align 8
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = call i32 @spellfix1Uninit(i32 0, i32* %153)
  br label %159

155:                                              ; preds = %147, %144
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %157 = bitcast %struct.TYPE_4__* %156 to i32*
  %158 = load i32**, i32*** %13, align 8
  store i32* %157, i32** %158, align 8
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i32, i32* %19, align 4
  ret i32 %160
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_declare_vtab(i32*, i8*) #1

declare dso_local i32 @spellfix1DbExec(i32*, i32*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @spellfix1Dequote(i8*) #1

declare dso_local i32 @spellfix1Uninit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

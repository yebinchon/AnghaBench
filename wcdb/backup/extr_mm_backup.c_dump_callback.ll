; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_callback.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@MMBAK_TAG_SQL_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"DELETE FROM sqlite_sequence;\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"sqlite_stat?\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ANALYZE sqlite_master;\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@compar_table_tabdesc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"CREATE VIRTUAL TABLE\00", align 1
@MMBAK_FLAG_NO_CREATE_TABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"PRAGMA writable_schema=ON;\00", align 1
@.str.7 = private unnamed_addr constant [92 x i8] c"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@MMBAK_FLAG_FIX_CORRUPTION = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**, i8**)* @dump_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_callback(i8* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %13, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %191

34:                                               ; preds = %4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = load i32, i32* @MMBAK_TAG_SQL_ONESHOT, align 4
  %41 = call i32 @string_literal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i64 (%struct.TYPE_6__*, i32, i8*, ...) @dump_write_blob(%struct.TYPE_6__* %39, i32 %40, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %191

47:                                               ; preds = %38
  br label %69

48:                                               ; preds = %34
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @sqlite3_strglob(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = load i32, i32* @MMBAK_TAG_SQL_ONESHOT, align 4
  %55 = call i32 @string_literal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i64 (%struct.TYPE_6__*, i32, i8*, ...) @dump_write_blob(%struct.TYPE_6__* %53, i32 %54, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %191

61:                                               ; preds = %52
  br label %68

62:                                               ; preds = %48
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @strncmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %191

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %61
  br label %69

69:                                               ; preds = %68, %47
  store i8* null, i8** %15, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @compar_table_tabdesc, align 4
  %83 = call i64 @bsearch(i8* %75, i64 %78, i32 %81, i32 8, i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %84, %struct.TYPE_5__** %16, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %191

88:                                               ; preds = %74
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %15, align 8
  br label %92

92:                                               ; preds = %88, %69
  %93 = load i8*, i8** %13, align 8
  %94 = call i32 @strncmp(i8* %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 20)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %135, label %96

96:                                               ; preds = %92
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MMBAK_FLAG_NO_CREATE_TABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %134, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %110 = load i32, i32* @MMBAK_TAG_SQL_ONESHOT, align 4
  %111 = call i32 @string_literal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i64 (%struct.TYPE_6__*, i32, i8*, ...) @dump_write_blob(%struct.TYPE_6__* %109, i32 %110, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %191

117:                                              ; preds = %108
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %103
  %121 = load i8*, i8** %11, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0), i8* %121, i8* %122, i8* %123)
  store i8* %124, i8** %17, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = load i32, i32* @MMBAK_TAG_SQL_ONESHOT, align 4
  %127 = load i8*, i8** %17, align 8
  %128 = call i64 (%struct.TYPE_6__*, i32, i8*, ...) @dump_write_blob(%struct.TYPE_6__* %125, i32 %126, i8* %127, i32 -1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  store i32 -1, i32* %5, align 4
  br label %191

131:                                              ; preds = %120
  %132 = load i8*, i8** %17, align 8
  %133 = call i32 @sqlite3_free(i8* %132)
  br label %134

134:                                              ; preds = %131, %96
  store i32 0, i32* %5, align 4
  br label %191

135:                                              ; preds = %92
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MMBAK_FLAG_NO_CREATE_TABLE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %135
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = load i32, i32* @MMBAK_TAG_SQL_ONESHOT, align 4
  %145 = load i8*, i8** %13, align 8
  %146 = call i64 (%struct.TYPE_6__*, i32, i8*, ...) @dump_write_blob(%struct.TYPE_6__* %143, i32 %144, i8* %145, i32 -1)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 -1, i32* %5, align 4
  br label %191

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %190, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = call i32 @dump_rows(%struct.TYPE_6__* %156, i8* %157, i8* %158, i32 0)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @SQLITE_CORRUPT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %155
  %164 = load i8*, i8** %15, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %184, label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MMBAK_FLAG_FIX_CORRUPTION, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %166
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = call i32 @dump_rows(%struct.TYPE_6__* %174, i8* %175, i8* %176, i32 1)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @SQLITE_CORRUPT, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @SQLITE_OK, align 4
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %181, %173
  br label %184

184:                                              ; preds = %183, %166, %163, %155
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @SQLITE_OK, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 -1, i32* %5, align 4
  br label %191

189:                                              ; preds = %184
  br label %190

190:                                              ; preds = %189, %151
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %188, %148, %134, %130, %116, %87, %66, %60, %46, %33
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @dump_write_blob(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @string_literal(i8*) #1

declare dso_local i32 @sqlite3_strglob(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @bsearch(i8*, i64, i32, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @dump_rows(%struct.TYPE_6__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

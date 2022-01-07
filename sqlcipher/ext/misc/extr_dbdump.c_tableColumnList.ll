; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_tableColumnList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_dbdump.c_tableColumnList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"PRAGMA table_info=%Q\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"SELECT 1 FROM pragma_index_list(%Q) WHERE origin='pk'\00", align 1
@tableColumnList.azRowid = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_rowid_\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_3__*, i8*)* @tableColumnList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @tableColumnList(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** null, i8*** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %209

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @sqlite3_prepare_v2(i32 %26, i8* %27, i32 -1, i32** %7, i32 0)
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @sqlite3_free(i8* %29)
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i8** null, i8*** %3, align 8
  br label %209

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @sqlite3_step(i32* %36)
  %38 = load i32, i32* @SQLITE_ROW, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %98

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 2
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 2
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 10
  store i32 %50, i32* %10, align 4
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = trunc i64 %54 to i32
  %56 = call i8** @sqlite3_realloc64(i8** %51, i32 %55)
  store i8** %56, i8*** %15, align 8
  %57 = load i8**, i8*** %15, align 8
  %58 = icmp eq i8** %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %197

60:                                               ; preds = %45
  %61 = load i8**, i8*** %15, align 8
  store i8** %61, i8*** %6, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* null, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %40
  %65 = load i32*, i32** %7, align 8
  %66 = call i8* @sqlite3_column_text(i32* %65, i32 1)
  %67 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = load i8**, i8*** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %67, i8** %72, align 8
  %73 = load i8**, i8*** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %197

80:                                               ; preds = %64
  %81 = load i32*, i32** %7, align 8
  %82 = call i64 @sqlite3_column_int(i32* %81, i32 5)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = call i8* @sqlite3_column_text(i32* %90, i32 2)
  %92 = call i64 @sqlite3_stricmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %12, align 4
  br label %96

95:                                               ; preds = %89, %84
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %94
  br label %97

97:                                               ; preds = %96, %80
  br label %35

98:                                               ; preds = %35
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @sqlite3_finalize(i32* %99)
  store i32* null, i32** %7, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  store i8* null, i8** %105, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %98
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  store i8* %110, i8** %8, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %197

114:                                              ; preds = %108
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @sqlite3_prepare_v2(i32 %117, i8* %118, i32 -1, i32** %7, i32 0)
  store i32 %119, i32* %14, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @sqlite3_free(i8* %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %114
  %125 = load i8**, i8*** %6, align 8
  %126 = call i32 @freeColumnList(i8** %125)
  store i8** null, i8*** %3, align 8
  br label %209

127:                                              ; preds = %114
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @sqlite3_step(i32* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @sqlite3_finalize(i32* %130)
  store i32* null, i32** %7, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @SQLITE_ROW, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %127, %98
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %195

139:                                              ; preds = %136
  store i32 0, i32* %17, align 4
  br label %140

140:                                              ; preds = %191, %139
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %141, 3
  br i1 %142, label %143, label %194

143:                                              ; preds = %140
  store i32 1, i32* %16, align 4
  br label %144

144:                                              ; preds = %162, %143
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tableColumnList.azRowid, i64 0, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = load i8**, i8*** %6, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @sqlite3_stricmp(i8* %152, i8* %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %148
  br label %165

161:                                              ; preds = %148
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  br label %144

165:                                              ; preds = %160, %144
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %5, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tableColumnList.azRowid, i64 0, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @sqlite3_table_column_metadata(i32 %172, i32 0, i8* %173, i8* %177, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @SQLITE_OK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %169
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tableColumnList.azRowid, i64 0, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load i8**, i8*** %6, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 0
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %182, %169
  br label %194

190:                                              ; preds = %165
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %17, align 4
  br label %140

194:                                              ; preds = %189, %140
  br label %195

195:                                              ; preds = %194, %136
  %196 = load i8**, i8*** %6, align 8
  store i8** %196, i8*** %3, align 8
  br label %209

197:                                              ; preds = %113, %79, %59
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @sqlite3_finalize(i32* %198)
  %200 = load i8**, i8*** %6, align 8
  %201 = call i32 @freeColumnList(i8** %200)
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* @SQLITE_NOMEM, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  store i8** null, i8*** %3, align 8
  br label %209

209:                                              ; preds = %197, %195, %124, %33, %22
  %210 = load i8**, i8*** %3, align 8
  ret i8** %210
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8** @sqlite3_realloc64(i8**, i32) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @freeColumnList(i8**) #1

declare dso_local i32 @sqlite3_table_column_metadata(i32, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

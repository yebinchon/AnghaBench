; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_mmapwarm.c_sqlite3_mmap_warm.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_mmapwarm.c_sqlite3_mmap_warm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_7__*, i32, i32, i8**)*, i32 (%struct.TYPE_7__*, i32, i8*)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BEGIN; SELECT * FROM %s%q%ssqlite_master\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"'.\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"PRAGMA %s%q%spage_size\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_FCNTL_FILE_POINTER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"sqlite3_mmap_warm_cache: Warmed up %d pages of %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"END\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_mmap_warm(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @sqlite3_get_autocommit(i32* %17)
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @SQLITE_MISUSE, align 4
  store i32 %21, i32* %3, align 4
  br label %200

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i8*, i8** %5, align 8
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %31 ]
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %33, i8* %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %42, i32* %3, align 4
  br label %200

43:                                               ; preds = %32
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @sqlite3_exec(i32* %44, i8* %45, i32 0, i32 0, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @sqlite3_free(i8* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %43
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  br label %62

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %61 ]
  %64 = load i8*, i8** %5, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %68 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %63, i8* %67)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %72, i32* %6, align 4
  br label %103

73:                                               ; preds = %62
  store i32* null, i32** %10, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @sqlite3_prepare_v2(i32* %74, i8* %75, i32 -1, i32** %10, i32 0)
  store i32 %76, i32* %6, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @sqlite3_free(i8* %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @SQLITE_OK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load i32*, i32** %10, align 8
  %84 = call i64 @sqlite3_step(i32* %83)
  %85 = load i64, i64* @SQLITE_ROW, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @sqlite3_column_int(i32* %88, i32 0)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @sqlite3_finalize(i32* %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %73
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SQLITE_OK, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %97, %93
  br label %103

103:                                              ; preds = %102, %71
  br label %104

104:                                              ; preds = %103, %43
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %198

108:                                              ; preds = %104
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* @SQLITE_FCNTL_FILE_POINTER, align 4
  %112 = call i32 @sqlite3_file_control(i32* %109, i8* %110, i32 %111, %struct.TYPE_7__** %12)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %189

116:                                              ; preds = %108
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 3
  br i1 %122, label %123, label %189

123:                                              ; preds = %116
  store i32 1, i32* %13, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  store %struct.TYPE_6__* %126, %struct.TYPE_6__** %14, align 8
  br label %127

127:                                              ; preds = %123, %173
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32 (%struct.TYPE_7__*, i32, i32, i8**)*, i32 (%struct.TYPE_7__*, i32, i32, i8**)** %129, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %13, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = call i32 %130(%struct.TYPE_7__* %131, i32 %134, i32 %135, i8** %15)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @SQLITE_OK, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %127
  %141 = load i8*, i8** %15, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %127
  br label %176

144:                                              ; preds = %140
  %145 = load i8*, i8** %15, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32 (%struct.TYPE_7__*, i32, i8*)*, i32 (%struct.TYPE_7__*, i32, i8*)** %161, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %13, align 4
  %166 = mul nsw i32 %164, %165
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 %162(%struct.TYPE_7__* %163, i32 %166, i8* %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @SQLITE_OK, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %144
  br label %176

173:                                              ; preds = %144
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %127

176:                                              ; preds = %172, %143
  %177 = load i32, i32* @SQLITE_OK, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %183

181:                                              ; preds = %176
  %182 = load i32, i32* %13, align 4
  br label %183

183:                                              ; preds = %181, %180
  %184 = phi i32 [ 0, %180 ], [ %182, %181 ]
  %185 = load i32*, i32** %4, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = call i32 @sqlite3_db_filename(i32* %185, i8* %186)
  %188 = call i32 @sqlite3_log(i32 %177, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %183, %116, %108
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @sqlite3_exec(i32* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 0)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @SQLITE_OK, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %195, %189
  br label %198

198:                                              ; preds = %197, %104
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %41, %20
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @sqlite3_get_autocommit(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @sqlite3_file_control(i32*, i8*, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @sqlite3_log(i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_db_filename(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

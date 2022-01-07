; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_update_folder_perms.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_manager_update_folder_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i8*, i8* }

@FOLDER_PERM_TYPE_USER = common dso_local global i64 0, align 8
@FOLDER_PERM_TYPE_GROUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"DELETE FROM FolderUserPerms WHERE repo_id = ?\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"DELETE FROM FolderGroupPerms WHERE repo_id = ?\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to remove folder perms for %.8s: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"INSERT INTO FolderUserPerms VALUES (?, ?, ?)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"INSERT INTO FolderGroupPerms VALUES (?, ?, ?)\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to insert folder perms for %.8s: %s.\0A\00", align 1
@comp_folder_perms = common dso_local global i32 0, align 4
@folder_perm_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_repo_manager_update_folder_perms(%struct.TYPE_15__* %0, i8* %1, i64 %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @FOLDER_PERM_TYPE_USER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @FOLDER_PERM_TYPE_GROUP, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %4
  %24 = phi i1 [ true, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @g_return_val_if_fail(i32 %25, i32 -1)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = call i32 @pthread_mutex_lock(i32* %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @FOLDER_PERM_TYPE_USER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %37

36:                                               ; preds = %23
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call i32* @sqlite_query_prepare(i32 %42, i8* %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %48 = call i32 @sqlite3_bind_text(i32* %45, i32 1, i8* %46, i32 -1, i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = call i64 @sqlite3_step(i32* %49)
  %51 = load i64, i64* @SQLITE_DONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %37
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sqlite3_errmsg(i32 %59)
  %61 = call i32 @seaf_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @sqlite3_finalize(i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 3
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  store i32 -1, i32* %5, align 4
  br label %229

69:                                               ; preds = %37
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @sqlite3_finalize(i32* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = call i32 @pthread_mutex_unlock(i32* %78)
  store i32 0, i32* %5, align 4
  br label %229

80:                                               ; preds = %69
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* @FOLDER_PERM_TYPE_USER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %86

85:                                               ; preds = %80
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = call i32* @sqlite_query_prepare(i32 %91, i8* %92)
  store i32* %93, i32** %11, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %12, align 8
  br label %95

95:                                               ; preds = %143, %86
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %97 = icmp ne %struct.TYPE_16__* %96, null
  br i1 %97, label %98, label %147

98:                                               ; preds = %95
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %13, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %105 = call i32 @sqlite3_bind_text(i32* %102, i32 1, i8* %103, i32 -1, i32 %104)
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %111 = call i32 @sqlite3_bind_text(i32* %106, i32 2, i8* %109, i32 -1, i32 %110)
  %112 = load i32*, i32** %11, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %117 = call i32 @sqlite3_bind_text(i32* %112, i32 3, i8* %115, i32 -1, i32 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = call i64 @sqlite3_step(i32* %118)
  %120 = load i64, i64* @SQLITE_DONE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %98
  %123 = load i8*, i8** %7, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sqlite3_errmsg(i32 %128)
  %130 = call i32 @seaf_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %123, i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @sqlite3_finalize(i32* %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = call i32 @pthread_mutex_unlock(i32* %136)
  store i32 -1, i32* %5, align 4
  br label %229

138:                                              ; preds = %98
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @sqlite3_reset(i32* %139)
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @sqlite3_clear_bindings(i32* %141)
  br label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %145, align 8
  store %struct.TYPE_16__* %146, %struct.TYPE_16__** %12, align 8
  br label %95

147:                                              ; preds = %95
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @sqlite3_finalize(i32* %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  %154 = call i32 @pthread_mutex_unlock(i32* %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %156 = call %struct.TYPE_16__* @folder_perm_list_copy(%struct.TYPE_16__* %155)
  store %struct.TYPE_16__* %156, %struct.TYPE_16__** %14, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %158 = load i32, i32* @comp_folder_perms, align 4
  %159 = call %struct.TYPE_16__* @g_list_sort(%struct.TYPE_16__* %157, i32 %158)
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %14, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = call i32 @pthread_mutex_lock(i32* %163)
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @FOLDER_PERM_TYPE_USER, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %147
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %7, align 8
  %175 = call %struct.TYPE_16__* @g_hash_table_lookup(i32 %173, i8* %174)
  store %struct.TYPE_16__* %175, %struct.TYPE_16__** %15, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %177 = icmp ne %struct.TYPE_16__* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %168
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %180 = load i64, i64* @folder_perm_free, align 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @g_list_free_full(%struct.TYPE_16__* %179, i32 %181)
  br label %183

183:                                              ; preds = %178, %168
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @g_strdup(i8* %189)
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %192 = call i32 @g_hash_table_insert(i32 %188, i32 %190, %struct.TYPE_16__* %191)
  br label %223

193:                                              ; preds = %147
  %194 = load i64, i64* %8, align 8
  %195 = load i64, i64* @FOLDER_PERM_TYPE_GROUP, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %222

197:                                              ; preds = %193
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i8*, i8** %7, align 8
  %204 = call %struct.TYPE_16__* @g_hash_table_lookup(i32 %202, i8* %203)
  store %struct.TYPE_16__* %204, %struct.TYPE_16__** %15, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %206 = icmp ne %struct.TYPE_16__* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %197
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %209 = load i64, i64* @folder_perm_free, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @g_list_free_full(%struct.TYPE_16__* %208, i32 %210)
  br label %212

212:                                              ; preds = %207, %197
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i8*, i8** %7, align 8
  %219 = call i32 @g_strdup(i8* %218)
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %221 = call i32 @g_hash_table_insert(i32 %217, i32 %219, %struct.TYPE_16__* %220)
  br label %222

222:                                              ; preds = %212, %193
  br label %223

223:                                              ; preds = %222, %183
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = call i32 @pthread_mutex_unlock(i32* %227)
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %223, %122, %74, %53
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @sqlite_query_prepare(i32, i8*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @sqlite3_clear_bindings(i32*) #1

declare dso_local %struct.TYPE_16__* @folder_perm_list_copy(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @g_list_sort(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_16__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @g_list_free_full(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @g_hash_table_insert(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

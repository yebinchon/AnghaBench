; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_remove_deleted.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_remove_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8*, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@seaf = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Remove deleted: %s is locked on server, ignore.\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@FALSE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CE_REMOVE = common dso_local global i32 0, align 4
@DIFF_STATUS_DIR_DELETED = common dso_local global i32 0, align 4
@DIFF_STATUS_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, i8*, i8*, i32*, i32*, i8*, i64, i32*)* @remove_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_deleted(%struct.index_state* %0, i8* %1, i8* %2, i32* %3, i32* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.cache_entry**, align 8
  %18 = alloca %struct.cache_entry*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %27 = load %struct.index_state*, %struct.index_state** %9, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 1
  %29 = load %struct.cache_entry**, %struct.cache_entry*** %28, align 8
  store %struct.cache_entry** %29, %struct.cache_entry*** %17, align 8
  %30 = load i32, i32* @SEAF_PATH_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @g_strconcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %35, i8** %25, align 8
  %36 = load i8*, i8** %25, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %38

38:                                               ; preds = %222, %8
  %39 = load i32, i32* %21, align 4
  %40 = load %struct.index_state*, %struct.index_state** %9, align 8
  %41 = getelementptr inbounds %struct.index_state, %struct.index_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %225

44:                                               ; preds = %38
  %45 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %46 = load i32, i32* %21, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %45, i64 %47
  %49 = load %struct.cache_entry*, %struct.cache_entry** %48, align 8
  store %struct.cache_entry* %49, %struct.cache_entry** %18, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @is_path_writable(i8* %50, i64 %51, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %222

58:                                               ; preds = %44
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @seaf_filelock_manager_is_file_locked(i32 %61, i8* %62, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %70 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @seaf_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  br label %222

73:                                               ; preds = %58
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %81 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i64 @strcmp(i8* %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %88 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %25, align 8
  %91 = load i32, i32* %26, align 4
  %92 = call i64 @strncmp(i8* %89, i8* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %222

95:                                               ; preds = %86, %79, %73
  %96 = load i32, i32* @SEAF_PATH_MAX, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %99 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @snprintf(i8* %33, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %100)
  %102 = load i64, i64* @FALSE, align 8
  store i64 %102, i64* %24, align 8
  %103 = call i32 @seaf_stat(i8* %33, %struct.TYPE_6__* %22)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %95
  %107 = load i64, i64* @errno, align 8
  %108 = load i64, i64* @ENOENT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i64, i64* @TRUE, align 8
  store i64 %111, i64* %24, align 8
  br label %112

112:                                              ; preds = %110, %106, %95
  %113 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %114 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @S_ISDIR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %170

118:                                              ; preds = %112
  %119 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %120 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %118
  %125 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %126 = call i64 @ce_stage(%struct.cache_entry* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %169

128:                                              ; preds = %124, %118
  %129 = load i64, i64* %24, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %23, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @S_ISDIR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %157, label %139

139:                                              ; preds = %134, %128
  %140 = load i32, i32* @CE_REMOVE, align 4
  %141 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %142 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %139
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* @DIFF_STATUS_DIR_DELETED, align 4
  %150 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %151 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i64, i64* @TRUE, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @remove_from_changeset(i32* %148, i32 %149, i8* %152, i64 %153, i8* %154)
  br label %156

156:                                              ; preds = %147, %139
  br label %168

157:                                              ; preds = %134, %131
  %158 = load i32*, i32** %12, align 8
  %159 = call i32 @is_empty_dir(i8* %33, i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* @CE_REMOVE, align 4
  %163 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %164 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %167

167:                                              ; preds = %161, %157
  br label %168

168:                                              ; preds = %167, %156
  br label %169

169:                                              ; preds = %168, %124
  br label %221

170:                                              ; preds = %112
  %171 = load i64, i64* %24, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %23, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %220

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @S_ISREG(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %220, label %181

181:                                              ; preds = %176, %170
  %182 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %183 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %181
  %188 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %189 = call i64 @ce_stage(%struct.cache_entry* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %220

191:                                              ; preds = %187, %181
  %192 = load i32*, i32** %13, align 8
  %193 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %194 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @check_locked_file_before_remove(i32* %192, i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %191
  %199 = load i32, i32* @CE_REMOVE, align 4
  %200 = load %struct.cache_entry**, %struct.cache_entry*** %17, align 8
  %201 = load i32, i32* %21, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %200, i64 %202
  %204 = load %struct.cache_entry*, %struct.cache_entry** %203, align 8
  %205 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %199
  store i32 %207, i32* %205, align 8
  %208 = load i32*, i32** %16, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %219

210:                                              ; preds = %198
  %211 = load i32*, i32** %16, align 8
  %212 = load i32, i32* @DIFF_STATUS_DELETED, align 4
  %213 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  %214 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* @TRUE, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = call i32 @remove_from_changeset(i32* %211, i32 %212, i8* %215, i64 %216, i8* %217)
  br label %219

219:                                              ; preds = %210, %198
  br label %220

220:                                              ; preds = %219, %191, %187, %176, %173
  br label %221

221:                                              ; preds = %220, %169
  br label %222

222:                                              ; preds = %221, %94, %68, %57
  %223 = load i32, i32* %21, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %21, align 4
  br label %38

225:                                              ; preds = %38
  %226 = load %struct.index_state*, %struct.index_state** %9, align 8
  %227 = call i32 @remove_marked_cache_entries(%struct.index_state* %226)
  %228 = load i8*, i8** %25, align 8
  %229 = call i32 @g_free(i8* %228)
  %230 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %230)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @is_path_writable(i8*, i64, i8*) #2

declare dso_local i64 @seaf_filelock_manager_is_file_locked(i32, i8*, i8*) #2

declare dso_local i32 @seaf_debug(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @seaf_stat(i8*, %struct.TYPE_6__*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @ce_stage(%struct.cache_entry*) #2

declare dso_local i32 @remove_from_changeset(i32*, i32, i8*, i64, i8*) #2

declare dso_local i32 @is_empty_dir(i8*, i32*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i64 @check_locked_file_before_remove(i32*, i8*) #2

declare dso_local i32 @remove_marked_cache_entries(%struct.index_state*) #2

declare dso_local i32 @g_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

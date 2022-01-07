; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_path_to_index.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_path_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s has been scanned before, skip adding.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_INDEX_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to stat %s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.index_state*, i32*, i8*, %struct.TYPE_18__*, %struct.TYPE_18__**, i32*, i32**, i32*)* @add_path_to_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_path_to_index(%struct.TYPE_17__* %0, %struct.index_state* %1, i32* %2, i8* %3, %struct.TYPE_18__* %4, %struct.TYPE_18__** %5, i32* %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.index_state*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_16__, align 4
  %22 = alloca %struct.TYPE_19__, align 8
  %23 = alloca %struct.TYPE_18__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %11, align 8
  store %struct.index_state* %1, %struct.index_state** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__** %5, %struct.TYPE_18__*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32** %7, i32*** %18, align 8
  store i32* %8, i32** %19, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %81

31:                                               ; preds = %9
  %32 = load %struct.index_state*, %struct.index_state** %12, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @remove_deleted(%struct.index_state* %32, i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %36, i32* %37, i32 %40, i32 %43, i32 %46)
  %48 = call i32 @memset(%struct.TYPE_19__* %22, i32 0, i32 24)
  %49 = load i32*, i32** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  store i32 %55, i32* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.index_state*, %struct.index_state** %12, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = load i32**, i32*** %18, align 8
  %80 = call i32 @add_recursive(i32 %63, i32 %66, i32 %69, %struct.index_state* %70, i32 %73, i8* %74, i32* %75, i32 %76, %struct.TYPE_18__* %77, i32* %78, i32** %79, %struct.TYPE_19__* %22)
  store i32 0, i32* %10, align 4
  br label %204

81:                                               ; preds = %9
  %82 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %23, align 8
  br label %84

84:                                               ; preds = %115, %81
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %119

87:                                               ; preds = %84
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %24, align 8
  %91 = load i8*, i8** %24, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i64 @strcmp(i8* %91, i8* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 @seaf_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  store i32 0, i32* %10, align 4
  br label %204

98:                                               ; preds = %87
  %99 = load i8*, i8** %24, align 8
  %100 = call i8* @g_strconcat(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %100, i8** %25, align 8
  %101 = load i8*, i8** %25, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i8*, i8** %25, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = call i64 @strncmp(i8* %101, i8* %102, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %98
  %108 = load i8*, i8** %25, align 8
  %109 = call i32 @g_free(i8* %108)
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @seaf_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  store i32 0, i32* %10, align 4
  br label %204

112:                                              ; preds = %98
  %113 = load i8*, i8** %25, align 8
  %114 = call i32 @g_free(i8* %113)
  br label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %23, align 8
  br label %84

119:                                              ; preds = %84
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %14, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %125 = call i64 @check_full_path_ignore(i32 %122, i8* %123, %struct.TYPE_18__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  br label %204

128:                                              ; preds = %119
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %14, align 8
  %133 = call i8* @g_build_filename(i32 %131, i8* %132, i32* null)
  store i8* %133, i8** %20, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = call i64 @seaf_stat(i8* %134, %struct.TYPE_16__* %21)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %128
  %138 = load i64, i64* @errno, align 8
  %139 = load i64, i64* @ENOENT, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %14, align 8
  %149 = load i32, i32* @SYNC_ERROR_ID_INDEX_ERROR, align 4
  %150 = call i32 @send_file_sync_error_notification(i32 %144, i32 %147, i8* %148, i32 %149)
  br label %151

151:                                              ; preds = %141, %137
  %152 = load i8*, i8** %14, align 8
  %153 = load i64, i64* @errno, align 8
  %154 = call i32 @strerror(i64 %153)
  %155 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %152, i32 %154)
  %156 = load i8*, i8** %20, align 8
  %157 = call i32 @g_free(i8* %156)
  store i32 -1, i32* %10, align 4
  br label %204

158:                                              ; preds = %128
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @S_ISDIR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @g_strdup(i8* %166)
  %168 = call %struct.TYPE_18__* @g_list_prepend(%struct.TYPE_18__* %165, i32 %167)
  %169 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  store %struct.TYPE_18__* %168, %struct.TYPE_18__** %169, align 8
  br label %170

170:                                              ; preds = %163, %158
  %171 = call i32 @memset(%struct.TYPE_19__* %22, i32 0, i32 24)
  %172 = load i32*, i32** %19, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store i32* %172, i32** %173, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32 %176, i32* %177, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i32 %180, i32* %181, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.index_state*, %struct.index_state** %12, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %14, align 8
  %196 = load i32*, i32** %13, align 8
  %197 = load i32, i32* @FALSE, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %199 = load i32*, i32** %17, align 8
  %200 = load i32**, i32*** %18, align 8
  %201 = call i32 @add_recursive(i32 %184, i32 %187, i32 %190, %struct.index_state* %191, i32 %194, i8* %195, i32* %196, i32 %197, %struct.TYPE_18__* %198, i32* %199, i32** %200, %struct.TYPE_19__* %22)
  %202 = load i8*, i8** %20, align 8
  %203 = call i32 @g_free(i8* %202)
  store i32 0, i32* %10, align 4
  br label %204

204:                                              ; preds = %170, %151, %127, %107, %95, %31
  %205 = load i32, i32* %10, align 4
  ret i32 %205
}

declare dso_local i32 @remove_deleted(%struct.index_state*, i32, i8*, %struct.TYPE_18__*, i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @add_recursive(i32, i32, i32, %struct.index_state*, i32, i8*, i32*, i32, %struct.TYPE_18__*, i32*, i32**, %struct.TYPE_19__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @check_full_path_ignore(i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @send_file_sync_error_notification(i32, i32, i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_18__* @g_list_prepend(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

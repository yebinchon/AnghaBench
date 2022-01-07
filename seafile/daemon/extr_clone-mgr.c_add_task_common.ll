; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_add_task_common.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_add_task_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i8*, i32, i8*, i8*, i64, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Failed to load more sync info from json: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"is_readonly\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"server_url\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"repo_salt\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"[Clone mgr] failed to save task.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i8*, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32**)* @add_task_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_task_common(%struct.TYPE_13__* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13, i32 %14, i32** %15) #0 {
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32**, align 8
  %34 = alloca %struct.TYPE_14__*, align 8
  %35 = alloca %struct.TYPE_12__, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %18, align 8
  store i8* %1, i8** %19, align 8
  store i32 %2, i32* %20, align 4
  store i8* %3, i8** %21, align 8
  store i8* %4, i8** %22, align 8
  store i8* %5, i8** %23, align 8
  store i8* %6, i8** %24, align 8
  store i32 %7, i32* %25, align 4
  store i8* %8, i8** %26, align 8
  store i8* %9, i8** %27, align 8
  store i8* %10, i8** %28, align 8
  store i8* %11, i8** %29, align 8
  store i8* %12, i8** %30, align 8
  store i8* %13, i8** %31, align 8
  store i32 %14, i32* %32, align 4
  store i32** %15, i32*** %33, align 8
  %40 = load i8*, i8** %19, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = load i8*, i8** %22, align 8
  %43 = load i8*, i8** %23, align 8
  %44 = load i8*, i8** %27, align 8
  %45 = load i8*, i8** %24, align 8
  %46 = load i8*, i8** %28, align 8
  %47 = load i8*, i8** %29, align 8
  %48 = load i8*, i8** %30, align 8
  %49 = call %struct.TYPE_14__* @clone_task_new(i8* %40, i8* %41, i8* %42, i8* %43, i8* %44, i8* %45, i8* %46, i8* %47, i8* %48)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %34, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %52, align 8
  %53 = load i32, i32* %25, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %26, align 8
  %57 = call i8* @g_strdup(i8* %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %20, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %32, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %31, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %110

68:                                               ; preds = %16
  store i32* null, i32** %36, align 8
  %69 = load i8*, i8** %31, align 8
  %70 = call i32* @json_loads(i8* %69, i32 0, %struct.TYPE_12__* %35)
  store i32* %70, i32** %36, align 8
  %71 = load i32*, i32** %36, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %78 = call i32 @clone_task_free(%struct.TYPE_14__* %77)
  store i8* null, i8** %17, align 8
  br label %148

79:                                               ; preds = %68
  %80 = load i32*, i32** %36, align 8
  %81 = call i32* @json_object_get(i32* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %81, i32** %37, align 8
  %82 = load i32*, i32** %37, align 8
  %83 = call i32 @json_integer_value(i32* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load i32*, i32** %36, align 8
  %87 = call i32* @json_object_get(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %87, i32** %38, align 8
  %88 = load i32*, i32** %38, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32*, i32** %38, align 8
  %92 = call i8* @json_string_value(i32* %91)
  %93 = call i64 @canonical_server_url(i8* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32*, i32** %36, align 8
  %98 = call i32* @json_object_get(i32* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32* %98, i32** %39, align 8
  %99 = load i32*, i32** %39, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32*, i32** %39, align 8
  %103 = call i8* @json_string_value(i32* %102)
  %104 = call i8* @g_strdup(i8* %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32*, i32** %36, align 8
  %109 = call i32 @json_decref(i32* %108)
  br label %110

110:                                              ; preds = %107, %16
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %113 = call i64 @save_task_to_db(%struct.TYPE_13__* %111, %struct.TYPE_14__* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %118 = call i32 @clone_task_free(%struct.TYPE_14__* %117)
  store i8* null, i8** %17, align 8
  br label %148

119:                                              ; preds = %110
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %131 = call i32 @check_http_protocol(%struct.TYPE_14__* %130)
  br label %135

132:                                              ; preds = %124
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %134 = call i32 @clone_task_free(%struct.TYPE_14__* %133)
  store i8* null, i8** %17, align 8
  br label %148

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %119
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @g_strdup(i8* %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %145 = call i32 @g_hash_table_insert(i32 %139, i8* %143, %struct.TYPE_14__* %144)
  %146 = load i8*, i8** %19, align 8
  %147 = call i8* @g_strdup(i8* %146)
  store i8* %147, i8** %17, align 8
  br label %148

148:                                              ; preds = %136, %132, %115, %73
  %149 = load i8*, i8** %17, align 8
  ret i8* %149
}

declare dso_local %struct.TYPE_14__* @clone_task_new(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @clone_task_free(%struct.TYPE_14__*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i64 @canonical_server_url(i8*) #1

declare dso_local i8* @json_string_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i64 @save_task_to_db(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @check_http_protocol(%struct.TYPE_14__*) #1

declare dso_local i32 @g_hash_table_insert(i32, i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

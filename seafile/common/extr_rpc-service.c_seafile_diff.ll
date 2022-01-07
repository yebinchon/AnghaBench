; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_diff.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_rpc-service.c_seafile_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Argument should not be null\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid repo id\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid commit id\00", align 1
@seaf = common dso_local global %struct.TYPE_14__* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"No such repository\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SEAFILE_TYPE_DIFF_ENTRY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"new_name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @seafile_diff(i8* %0, i8* %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i8* null, i8** %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %22, %5
  %29 = load i32**, i32*** %11, align 8
  %30 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %31 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %32 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %29, i32 %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %137

33:                                               ; preds = %25
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @is_uuid_valid(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32**, i32*** %11, align 8
  %39 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %40 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %41 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %38, i32 %39, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %137

42:                                               ; preds = %33
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @is_object_id_valid(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %42
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @is_object_id_valid(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52, %48
  %57 = load i32**, i32*** %11, align 8
  %58 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %59 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %60 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %57, i32 %58, i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %137

61:                                               ; preds = %52
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** @seaf, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32* @seaf_repo_manager_get_repo(i32 %64, i8* %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = load i32**, i32*** %11, align 8
  %71 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %72 = load i32, i32* @SEAF_ERR_BAD_ARGS, align 4
  %73 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %70, i32 %71, i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %137

74:                                               ; preds = %61
  %75 = load i32*, i32** %12, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call %struct.TYPE_12__* @seaf_repo_diff(i32* %75, i8* %76, i8* %77, i32 %78, i8** %13)
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %14, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load i32**, i32*** %11, align 8
  %84 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 (i32**, i32, i32, i8*, ...) @g_set_error(i32** %83, i32 %84, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @g_free(i8* %87)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %137

89:                                               ; preds = %74
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %15, align 8
  br label %91

91:                                               ; preds = %113, %89
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %17, align 8
  %98 = load i32, i32* @SEAFILE_TYPE_DIFF_ENTRY, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @get_diff_status_str(i32 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @g_object_new(i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %108, i32* null)
  store i32* %109, i32** %18, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %111 = load i32*, i32** %18, align 8
  %112 = call %struct.TYPE_12__* @g_list_prepend(%struct.TYPE_12__* %110, i32* %111)
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %16, align 8
  br label %113

113:                                              ; preds = %94
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  store %struct.TYPE_12__* %116, %struct.TYPE_12__** %15, align 8
  br label %91

117:                                              ; preds = %91
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %15, align 8
  br label %119

119:                                              ; preds = %128, %117
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %121 = icmp ne %struct.TYPE_12__* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %19, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %127 = call i32 @diff_entry_free(%struct.TYPE_13__* %126)
  br label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  store %struct.TYPE_12__* %131, %struct.TYPE_12__** %15, align 8
  br label %119

132:                                              ; preds = %119
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %134 = call i32 @g_list_free(%struct.TYPE_12__* %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %136 = call %struct.TYPE_12__* @g_list_reverse(%struct.TYPE_12__* %135)
  store %struct.TYPE_12__* %136, %struct.TYPE_12__** %6, align 8
  br label %137

137:                                              ; preds = %132, %82, %69, %56, %37, %28
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %138
}

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*, ...) #1

declare dso_local i32 @is_uuid_valid(i8*) #1

declare dso_local i32 @is_object_id_valid(i8*) #1

declare dso_local i32* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local %struct.TYPE_12__* @seaf_repo_diff(i32*, i8*, i8*, i32, i8**) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @g_object_new(i32, i8*, i32, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @get_diff_status_str(i32) #1

declare dso_local %struct.TYPE_12__* @g_list_prepend(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @diff_entry_free(%struct.TYPE_13__*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @g_list_reverse(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

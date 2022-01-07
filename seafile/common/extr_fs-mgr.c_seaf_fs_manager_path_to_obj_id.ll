; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_path_to_obj_id.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_path_to_obj_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to find root dir %s.\0A\00", align 1
@SEAFILE_DOMAIN = common dso_local global i32 0, align 4
@SEAF_ERR_GENERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@SEAF_ERR_PATH_NO_EXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to get dir for %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seaf_fs_manager_path_to_obj_id(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32* %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32** %6, i32*** %14, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i8* @g_strdup(i8* %24)
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %16, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %19, align 8
  store i8* null, i8** %22, align 8
  br label %29

29:                                               ; preds = %42, %7
  %30 = load i32, i32* %16, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8*, i8** %15, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = load i8*, i8** %15, align 8
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %16, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  br label %29

48:                                               ; preds = %40
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @S_IFDIR, align 4
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %11, align 8
  %60 = call i8* @g_strdup(i8* %59)
  store i8* %60, i8** %22, align 8
  br label %158

61:                                               ; preds = %48
  %62 = load i8*, i8** %15, align 8
  %63 = call i8* @strrchr(i8* %62, i8 signext 47)
  store i8* %63, i8** %17, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %61
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call %struct.TYPE_8__* @seaf_fs_manager_get_seafdir(i32* %67, i8* %68, i32 %69, i8* %70)
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %19, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load i32**, i32*** %14, align 8
  %78 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %79 = load i32, i32* @SEAF_ERR_GENERAL, align 4
  %80 = call i32 @g_set_error(i32** %77, i32 %78, i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %158

81:                                               ; preds = %66
  %82 = load i8*, i8** %15, align 8
  store i8* %82, i8** %18, align 8
  br label %115

83:                                               ; preds = %61
  %84 = load i8*, i8** %17, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %17, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %18, align 8
  store i32* null, i32** %23, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call %struct.TYPE_8__* @seaf_fs_manager_get_seafdir_by_path(i32* %87, i8* %88, i32 %89, i8* %90, i8* %91, i32** %23)
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %19, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %83
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* @SEAFILE_DOMAIN, align 4
  %98 = load i32, i32* @SEAF_ERR_PATH_NO_EXIST, align 4
  %99 = call i32 @g_error_matches(i32* %96, i32 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %15, align 8
  %103 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  %104 = load i32**, i32*** %14, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = call i32 @g_propagate_error(i32** %104, i32* %105)
  br label %158

107:                                              ; preds = %95, %83
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %109 = icmp ne %struct.TYPE_8__* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32**, i32*** %14, align 8
  %112 = load i32*, i32** %23, align 8
  %113 = call i32 @g_propagate_error(i32** %111, i32* %112)
  br label %158

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %81
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %21, align 8
  br label %119

119:                                              ; preds = %153, %115
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %121 = icmp ne %struct.TYPE_9__* %120, null
  br i1 %121, label %122, label %157

122:                                              ; preds = %119
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %20, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @is_object_id_valid(i8* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %153

132:                                              ; preds = %122
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %18, align 8
  %137 = call i64 @strcmp(i32 %135, i8* %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %132
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @g_strdup(i8* %142)
  store i8* %143, i8** %22, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %13, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %146, %139
  br label %157

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %152, %131
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %21, align 8
  br label %119

157:                                              ; preds = %151, %119
  br label %158

158:                                              ; preds = %157, %110, %101, %74, %58
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %160 = icmp ne %struct.TYPE_8__* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %163 = call i32 @seaf_dir_free(%struct.TYPE_8__* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i8*, i8** %15, align 8
  %166 = call i32 @g_free(i8* %165)
  %167 = load i8*, i8** %22, align 8
  ret i8* %167
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_8__* @seaf_fs_manager_get_seafdir(i32*, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @g_set_error(i32**, i32, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @seaf_fs_manager_get_seafdir_by_path(i32*, i8*, i32, i8*, i8*, i32**) #1

declare dso_local i32 @g_error_matches(i32*, i32, i32) #1

declare dso_local i32 @g_propagate_error(i32**, i32*) #1

declare dso_local i32 @is_object_id_valid(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_8__*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

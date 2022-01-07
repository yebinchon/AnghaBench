; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_file_modifier_mtime_v0.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_get_file_modifier_mtime_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@seaf = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i8*, i8**, i32*)* @get_file_modifier_mtime_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file_modifier_mtime_v0(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8** %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [41 x i8], align 16
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %19, align 4
  store i32* null, i32** %20, align 8
  %21 = load i8**, i8*** %13, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32*, i32** %14, align 8
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds [41 x i8], [41 x i8]* %15, i64 0, i64 0
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @memcpy(i8* %23, i8* %24, i32 41)
  br label %26

26:                                               ; preds = %7, %93
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds [41 x i8], [41 x i8]* %15, i64 0, i64 0
  %33 = call %struct.TYPE_6__* @seaf_commit_manager_get_commit(i32 %29, i8* %30, i32 %31, i8* %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %16, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 -1, i32* %19, align 4
  br label %94

37:                                               ; preds = %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %94

43:                                               ; preds = %37
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @seaf, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @seaf_fs_manager_path_to_obj_id(i32 %46, i8* %47, i32 %48, i32 %51, i8* %52, i32* null, i32** %20)
  store i8* %53, i8** %17, align 8
  %54 = load i32*, i32** %20, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 @g_clear_error(i32** %20)
  store i32 -1, i32* %19, align 4
  br label %94

58:                                               ; preds = %43
  %59 = load i8*, i8** %17, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 -1, i32* %19, align 4
  br label %94

62:                                               ; preds = %58
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds [41 x i8], [41 x i8]* %15, i64 0, i64 0
  %70 = call i32 @diff_parents_with_path(%struct.TYPE_6__* %63, i8* %64, i8* %65, i32 %66, i8* %67, i8* %68, i8* %69, i32** %20)
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %20, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32 @g_clear_error(i32** %20)
  store i32 -1, i32* %19, align 4
  br label %94

75:                                               ; preds = %62
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @g_strdup(i32 %81)
  %83 = load i8**, i8*** %13, align 8
  store i8* %82, i8** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %14, align 8
  store i32 %86, i32* %87, align 4
  br label %94

88:                                               ; preds = %75
  %89 = load i8*, i8** %17, align 8
  %90 = call i32 @g_free(i8* %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %92 = call i32 @seaf_commit_unref(%struct.TYPE_6__* %91)
  br label %93

93:                                               ; preds = %88
  br label %26

94:                                               ; preds = %78, %73, %61, %56, %42, %36
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @g_free(i8* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %98 = icmp ne %struct.TYPE_6__* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %101 = call i32 @seaf_commit_unref(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %19, align 4
  ret i32 %103
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @seaf_commit_manager_get_commit(i32, i8*, i32, i8*) #1

declare dso_local i8* @seaf_fs_manager_path_to_obj_id(i32, i8*, i32, i32, i8*, i32*, i32**) #1

declare dso_local i32 @g_clear_error(i32**) #1

declare dso_local i32 @diff_parents_with_path(%struct.TYPE_6__*, i8*, i8*, i32, i8*, i8*, i8*, i32**) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_delete_from_tree.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_delete_from_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TRUE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to load seafdir %s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_12__*, i8*, i32*)* @delete_from_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @delete_from_tree(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i8** @g_strsplit(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8** %26, i8*** %9, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = call i32 @g_strv_length(i8** %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %137, %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %140

34:                                               ; preds = %30
  %35 = load i8**, i8*** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = call %struct.TYPE_10__* @g_hash_table_lookup(i32 %42, i8* %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %14, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %46 = icmp ne %struct.TYPE_10__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %140

48:                                               ; preds = %34
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @S_ISDIR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %109

54:                                               ; preds = %48
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @remove_dent_from_dir(%struct.TYPE_11__* %60, i8* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @g_hash_table_size(i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @TRUE, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %15, align 8
  br label %140

73:                                               ; preds = %54
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %105, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @seaf_fs_manager_get_seafdir(i32 %81, i8* %82, i32 %85, i32 %88)
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %78
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %93, i32 %96)
  br label %140

98:                                               ; preds = %78
  %99 = load i32*, i32** %16, align 8
  %100 = call %struct.TYPE_11__* @seaf_dir_to_changeset_dir(i32* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %102, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @seaf_dir_free(i32* %103)
  br label %105

105:                                              ; preds = %98, %73
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %13, align 8
  br label %136

109:                                              ; preds = %48
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @S_ISREG(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, 1
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @remove_dent_from_dir(%struct.TYPE_11__* %121, i8* %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @g_hash_table_size(i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i32, i32* @TRUE, align 4
  %131 = load i32*, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %120
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %133, %struct.TYPE_10__** %15, align 8
  br label %140

134:                                              ; preds = %115
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135, %105
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %30

140:                                              ; preds = %132, %92, %71, %47, %30
  %141 = load i8**, i8*** %9, align 8
  %142 = call i32 @g_strfreev(i8** %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  ret %struct.TYPE_10__* %143
}

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i32 @g_strv_length(i8**) #1

declare dso_local %struct.TYPE_10__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @remove_dent_from_dir(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @g_hash_table_size(i32) #1

declare dso_local i32* @seaf_fs_manager_get_seafdir(i32, i8*, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @seaf_dir_to_changeset_dir(i32*) #1

declare dso_local i32 @seaf_dir_free(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

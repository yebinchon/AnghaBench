; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_add_to_tree.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_add_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i32, %struct.TYPE_20__*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@seaf = common dso_local global %struct.TYPE_22__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to load seafdir %s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i8*, i32*, i8*, i8*, %struct.TYPE_19__*)* @add_to_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_tree(%struct.TYPE_21__* %0, i8* %1, i32* %2, i8* %3, i8* %4, %struct.TYPE_19__* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %12, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %14, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i8** @g_strsplit(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8** %29, i8*** %15, align 8
  %30 = load i8**, i8*** %15, align 8
  %31 = call i32 @g_strv_length(i8** %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %19, align 8
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %137, %6
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %33
  %38 = load i8**, i8*** %15, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %16, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = call %struct.TYPE_19__* @g_hash_table_lookup(i32 %45, i8* %46)
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %20, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %50, label %118

50:                                               ; preds = %37
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %50
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %17, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %140

62:                                               ; preds = %56
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = icmp ne %struct.TYPE_20__* %65, null
  br i1 %66, label %94, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** @seaf, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32* @seaf_fs_manager_get_seafdir(i32 %70, i8* %71, i32 %74, i32 %77)
  store i32* %78, i32** %21, align 8
  %79 = load i32*, i32** %21, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %67
  %82 = load i8*, i8** %13, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %85)
  br label %140

87:                                               ; preds = %67
  %88 = load i32*, i32** %21, align 8
  %89 = call %struct.TYPE_20__* @seaf_dir_to_changeset_dir(i32* %88)
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  store %struct.TYPE_20__* %89, %struct.TYPE_20__** %91, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = call i32 @seaf_dir_free(i32* %92)
  br label %94

94:                                               ; preds = %87, %62
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %96, align 8
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %19, align 8
  br label %117

98:                                               ; preds = %50
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @S_ISREG(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = call i32 @update_file(%struct.TYPE_19__* %110, i8* %111, i32* %112, i8* %113)
  br label %140

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116, %94
  br label %136

118:                                              ; preds = %37
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = sub nsw i32 %120, 1
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %130 = call i32 @create_new_dent(%struct.TYPE_20__* %124, i8* %125, i8* %126, i32* %127, i8* %128, %struct.TYPE_19__* %129)
  br label %135

131:                                              ; preds = %118
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = call %struct.TYPE_20__* @create_intermediate_dir(%struct.TYPE_20__* %132, i8* %133)
  store %struct.TYPE_20__* %134, %struct.TYPE_20__** %19, align 8
  br label %135

135:                                              ; preds = %131, %123
  br label %136

136:                                              ; preds = %135, %117
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %33

140:                                              ; preds = %109, %81, %61, %33
  %141 = load i8**, i8*** %15, align 8
  %142 = call i32 @g_strfreev(i8** %141)
  ret void
}

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i32 @g_strv_length(i8**) #1

declare dso_local %struct.TYPE_19__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @seaf_fs_manager_get_seafdir(i32, i8*, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @seaf_dir_to_changeset_dir(i32*) #1

declare dso_local i32 @seaf_dir_free(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @update_file(%struct.TYPE_19__*, i8*, i32*, i8*) #1

declare dso_local i32 @create_new_dent(%struct.TYPE_20__*, i8*, i8*, i32*, i8*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @create_intermediate_dir(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

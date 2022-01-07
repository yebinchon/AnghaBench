; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_rename_index_entries.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_rename_index_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32, i64 }
%struct.cache_entry = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BUG: %s should not exist in index after remove.\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"BUG: not enough room to insert renamed entries.\0Acache_alloc: %u, cache_nr: %u, n_entries: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rename_index_entries(%struct.index_state* %0, i8* %1, i8* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cache_entry**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %6
  %26 = load %struct.index_state*, %struct.index_state** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = call %struct.cache_entry** @create_renamed_cache_entries(%struct.index_state* %26, i8* %27, i8* %28, i32* %15, i32 %29, i8* %30)
  store %struct.cache_entry** %31, %struct.cache_entry*** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %7, align 4
  br label %171

41:                                               ; preds = %25
  %42 = load %struct.index_state*, %struct.index_state** %8, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @remove_from_index_with_prefix(%struct.index_state* %42, i8* %43, i32* null)
  %45 = load %struct.index_state*, %struct.index_state** %8, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @remove_empty_parent_dir_entry(%struct.index_state* %45, i8* %46)
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %18, align 4
  %50 = load %struct.index_state*, %struct.index_state** %8, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @index_name_pos(%struct.index_state* %50, i8* %51, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %57)
  store i32 -1, i32* %16, align 4
  br label %148

59:                                               ; preds = %41
  %60 = load i32, i32* %19, align 4
  %61 = sub nsw i32 0, %60
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  %63 = load %struct.index_state*, %struct.index_state** %8, align 8
  %64 = getelementptr inbounds %struct.index_state, %struct.index_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.index_state*, %struct.index_state** %8, align 8
  %67 = getelementptr inbounds %struct.index_state, %struct.index_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %59
  %73 = load %struct.index_state*, %struct.index_state** %8, align 8
  %74 = getelementptr inbounds %struct.index_state, %struct.index_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.index_state*, %struct.index_state** %8, align 8
  %77 = getelementptr inbounds %struct.index_state, %struct.index_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i32 %79)
  store i32 -1, i32* %16, align 4
  br label %148

81:                                               ; preds = %59
  %82 = load i32, i32* %19, align 4
  %83 = load %struct.index_state*, %struct.index_state** %8, align 8
  %84 = getelementptr inbounds %struct.index_state, %struct.index_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %112

87:                                               ; preds = %81
  %88 = load %struct.index_state*, %struct.index_state** %8, align 8
  %89 = getelementptr inbounds %struct.index_state, %struct.index_state* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.index_state*, %struct.index_state** %8, align 8
  %98 = getelementptr inbounds %struct.index_state, %struct.index_state* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load %struct.index_state*, %struct.index_state** %8, align 8
  %104 = getelementptr inbounds %struct.index_state, %struct.index_state* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %19, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memmove(i64 %96, i64 %102, i32 %110)
  br label %112

112:                                              ; preds = %87, %81
  %113 = load %struct.index_state*, %struct.index_state** %8, align 8
  %114 = getelementptr inbounds %struct.index_state, %struct.index_state* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = load %struct.cache_entry**, %struct.cache_entry*** %14, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 8
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i64 %118, %struct.cache_entry** %119, i32 %123)
  store i32 0, i32* %17, align 4
  br label %125

125:                                              ; preds = %137, %112
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load %struct.index_state*, %struct.index_state** %8, align 8
  %131 = load %struct.cache_entry**, %struct.cache_entry*** %14, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %131, i64 %133
  %135 = load %struct.cache_entry*, %struct.cache_entry** %134, align 8
  %136 = call i32 @add_name_hash(%struct.index_state* %130, %struct.cache_entry* %135)
  br label %137

137:                                              ; preds = %129
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %125

140:                                              ; preds = %125
  %141 = load i32, i32* %15, align 4
  %142 = load %struct.index_state*, %struct.index_state** %8, align 8
  %143 = getelementptr inbounds %struct.index_state, %struct.index_state* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.index_state*, %struct.index_state** %8, align 8
  %147 = getelementptr inbounds %struct.index_state, %struct.index_state* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %140, %72, %56
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %148
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %163, %151
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load %struct.cache_entry**, %struct.cache_entry*** %14, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %157, i64 %159
  %161 = load %struct.cache_entry*, %struct.cache_entry** %160, align 8
  %162 = call i32 @cache_entry_free(%struct.cache_entry* %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %152

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %148
  %168 = load %struct.cache_entry**, %struct.cache_entry*** %14, align 8
  %169 = call i32 @free(%struct.cache_entry** %168)
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %40
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local %struct.cache_entry** @create_renamed_cache_entries(%struct.index_state*, i8*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @remove_from_index_with_prefix(%struct.index_state*, i8*, i32*) #1

declare dso_local i32 @remove_empty_parent_dir_entry(%struct.index_state*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, %struct.cache_entry**, i32) #1

declare dso_local i32 @add_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @cache_entry_free(%struct.cache_entry*) #1

declare dso_local i32 @free(%struct.cache_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

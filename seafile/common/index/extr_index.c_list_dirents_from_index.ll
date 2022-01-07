; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_list_dirents_from_index.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_list_dirents_from_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TRUE = common dso_local global i32 0, align 4
@compare_index_dents = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @list_dirents_from_index(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @g_strdup(i8* %22)
  store i8* %23, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.index_state*, %struct.index_state** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @index_name_pos(%struct.index_state* %27, i8* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32* null, i32** %3, align 8
  br label %161

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 0, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @g_strconcat(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %68, %35
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.index_state*, %struct.index_state** %4, align 8
  %46 = getelementptr inbounds %struct.index_state, %struct.index_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %43
  %50 = load %struct.index_state*, %struct.index_state** %4, align 8
  %51 = getelementptr inbounds %struct.index_state, %struct.index_state* %50, i32 0, i32 1
  %52 = load %struct.cache_entry**, %struct.cache_entry*** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %52, i64 %54
  %56 = load %struct.cache_entry*, %struct.cache_entry** %55, align 8
  store %struct.cache_entry* %56, %struct.cache_entry** %9, align 8
  %57 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @strncmp(i8* %59, i8* %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %49
  br label %69

68:                                               ; preds = %64
  br label %43

69:                                               ; preds = %67, %43
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.index_state*, %struct.index_state** %4, align 8
  %72 = getelementptr inbounds %struct.index_state, %struct.index_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @g_free(i8* %76)
  store i32* null, i32** %3, align 8
  br label %161

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %21
  br label %80

80:                                               ; preds = %151, %79
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.index_state*, %struct.index_state** %4, align 8
  %83 = getelementptr inbounds %struct.index_state, %struct.index_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %154

86:                                               ; preds = %80
  %87 = load %struct.index_state*, %struct.index_state** %4, align 8
  %88 = getelementptr inbounds %struct.index_state, %struct.index_state* %87, i32 0, i32 1
  %89 = load %struct.cache_entry**, %struct.cache_entry*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %89, i64 %91
  %93 = load %struct.cache_entry*, %struct.cache_entry** %92, align 8
  store %struct.cache_entry* %93, %struct.cache_entry** %9, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %96 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @strncmp(i8* %94, i8* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %154

102:                                              ; preds = %86
  %103 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %104 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 47)
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %136

113:                                              ; preds = %102
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8* @g_strndup(i8* %114, i32 %120)
  store i8* %121, i8** %13, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = call i64 @is_duplicate_dirent(i32* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @g_free(i8* %127)
  br label %151

129:                                              ; preds = %113
  %130 = load i8*, i8** %13, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32* @index_dirent_new(i8* %130, i32 %131, %struct.cache_entry* null)
  store i32* %132, i32** %15, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = call i32* @g_list_prepend(i32* %133, i32* %134)
  store i32* %135, i32** %10, align 8
  br label %150

136:                                              ; preds = %102
  %137 = load i8*, i8** %11, align 8
  %138 = call i8* @g_strdup(i8* %137)
  store i8* %138, i8** %13, align 8
  %139 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %140 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @S_ISDIR(i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %146 = call i32* @index_dirent_new(i8* %143, i32 %144, %struct.cache_entry* %145)
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = call i32* @g_list_prepend(i32* %147, i32* %148)
  store i32* %149, i32** %10, align 8
  br label %150

150:                                              ; preds = %136, %129
  br label %151

151:                                              ; preds = %150, %126
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %80

154:                                              ; preds = %101, %80
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* @compare_index_dents, align 4
  %157 = call i32* @g_list_sort(i32* %155, i32 %156)
  store i32* %157, i32** %10, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = call i32 @g_free(i8* %158)
  %160 = load i32*, i32** %10, align 8
  store i32* %160, i32** %3, align 8
  br label %161

161:                                              ; preds = %154, %75, %34
  %162 = load i32*, i32** %3, align 8
  ret i32* %162
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @g_strndup(i8*, i32) #1

declare dso_local i64 @is_duplicate_dirent(i32*, i8*) #1

declare dso_local i32* @index_dirent_new(i8*, i32, %struct.cache_entry*) #1

declare dso_local i32* @g_list_prepend(i32*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32* @g_list_sort(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

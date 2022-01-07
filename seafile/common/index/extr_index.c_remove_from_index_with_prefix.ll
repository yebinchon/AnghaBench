; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_from_index_with_prefix.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_from_index_with_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_from_index_with_prefix(%struct.index_state* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @index_name_pos(%struct.index_state* %15, i8* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.index_state*, %struct.index_state** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @remove_index_entry_at(%struct.index_state* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %164

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 0, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @g_strconcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %36, i8** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %64, %31
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.index_state*, %struct.index_state** %5, align 8
  %42 = getelementptr inbounds %struct.index_state, %struct.index_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load %struct.index_state*, %struct.index_state** %5, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 2
  %48 = load %struct.cache_entry**, %struct.cache_entry*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %48, i64 %50
  %52 = load %struct.cache_entry*, %struct.cache_entry** %51, align 8
  store %struct.cache_entry* %52, %struct.cache_entry** %10, align 8
  %53 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %54 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @strncmp(i32 %55, i8* %56, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %64

63:                                               ; preds = %45
  br label %65

64:                                               ; preds = %60
  br label %39

65:                                               ; preds = %63, %39
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.index_state*, %struct.index_state** %5, align 8
  %68 = getelementptr inbounds %struct.index_state, %struct.index_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @g_free(i8* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %71
  store i32 0, i32* %4, align 4
  br label %164

80:                                               ; preds = %65
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %112, %80
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.index_state*, %struct.index_state** %5, align 8
  %85 = getelementptr inbounds %struct.index_state, %struct.index_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = load %struct.index_state*, %struct.index_state** %5, align 8
  %90 = getelementptr inbounds %struct.index_state, %struct.index_state* %89, i32 0, i32 2
  %91 = load %struct.cache_entry**, %struct.cache_entry*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %91, i64 %93
  %95 = load %struct.cache_entry*, %struct.cache_entry** %94, align 8
  store %struct.cache_entry* %95, %struct.cache_entry** %10, align 8
  %96 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %97 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @strncmp(i32 %98, i8* %99, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %88
  %104 = load %struct.index_state*, %struct.index_state** %5, align 8
  %105 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %106 = call i32 @remove_name_hash(%struct.index_state* %104, %struct.cache_entry* %105)
  %107 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %108 = call i32 @cache_entry_free(%struct.cache_entry* %107)
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %112

111:                                              ; preds = %88
  br label %113

112:                                              ; preds = %103
  br label %82

113:                                              ; preds = %111, %82
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @g_free(i8* %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i32*, i32** %7, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @TRUE, align 4
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  store i32 0, i32* %4, align 4
  br label %164

126:                                              ; preds = %113
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.index_state*, %struct.index_state** %5, align 8
  %129 = getelementptr inbounds %struct.index_state, %struct.index_state* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %126
  %133 = load %struct.index_state*, %struct.index_state** %5, align 8
  %134 = getelementptr inbounds %struct.index_state, %struct.index_state* %133, i32 0, i32 2
  %135 = load %struct.cache_entry**, %struct.cache_entry*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %135, i64 %137
  %139 = load %struct.index_state*, %struct.index_state** %5, align 8
  %140 = getelementptr inbounds %struct.index_state, %struct.index_state* %139, i32 0, i32 2
  %141 = load %struct.cache_entry**, %struct.cache_entry*** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %141, i64 %143
  %145 = load %struct.index_state*, %struct.index_state** %5, align 8
  %146 = getelementptr inbounds %struct.index_state, %struct.index_state* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memmove(%struct.cache_entry** %138, %struct.cache_entry** %144, i32 %152)
  br label %154

154:                                              ; preds = %132, %126
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %9, align 4
  %157 = sub nsw i32 %155, %156
  %158 = load %struct.index_state*, %struct.index_state** %5, align 8
  %159 = getelementptr inbounds %struct.index_state, %struct.index_state* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.index_state*, %struct.index_state** %5, align 8
  %163 = getelementptr inbounds %struct.index_state, %struct.index_state* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %154, %125, %79, %27
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @remove_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @cache_entry_free(%struct.cache_entry*) #1

declare dso_local i32 @memmove(%struct.cache_entry**, %struct.cache_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

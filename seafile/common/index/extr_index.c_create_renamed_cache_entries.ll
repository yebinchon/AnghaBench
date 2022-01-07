; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_create_renamed_cache_entries.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_create_renamed_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.index_state = type { i32, i32, %struct.cache_entry** }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry** (%struct.index_state*, i8*, i8*, i32*, i32 (%struct.cache_entry*, i8*)*, i8*)* @create_renamed_cache_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry** @create_renamed_cache_entries(%struct.index_state* %0, i8* %1, i8* %2, i32* %3, i32 (%struct.cache_entry*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.cache_entry**, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct.cache_entry*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca %struct.cache_entry**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 (%struct.cache_entry*, i8*)* %4, i32 (%struct.cache_entry*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.cache_entry** null, %struct.cache_entry*** %15, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.index_state*, %struct.index_state** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @index_name_pos(%struct.index_state* %22, i8* %23, i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %6
  %29 = load %struct.index_state*, %struct.index_state** %8, align 8
  %30 = getelementptr inbounds %struct.index_state, %struct.index_state* %29, i32 0, i32 2
  %31 = load %struct.cache_entry**, %struct.cache_entry*** %30, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %31, i64 %33
  %35 = load %struct.cache_entry*, %struct.cache_entry** %34, align 8
  store %struct.cache_entry* %35, %struct.cache_entry** %14, align 8
  %36 = call %struct.cache_entry** @calloc(i32 1, i32 8)
  store %struct.cache_entry** %36, %struct.cache_entry*** %15, align 8
  %37 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call %struct.cache_entry* @create_renamed_cache_entry(%struct.cache_entry* %37, i8* %38, i8* %39)
  %41 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  store %struct.cache_entry* %40, %struct.cache_entry** %41, align 8
  %42 = load i32*, i32** %11, align 8
  store i32 1, i32* %42, align 4
  %43 = load %struct.index_state*, %struct.index_state** %8, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call i32 @remove_index_entry_at(%struct.index_state* %43, i32 %44)
  %46 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  store %struct.cache_entry** %46, %struct.cache_entry*** %7, align 8
  br label %222

47:                                               ; preds = %6
  %48 = load i32, i32* %17, align 4
  %49 = sub nsw i32 0, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %17, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @g_strconcat(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %52, i8** %18, align 8
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %80, %47
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.index_state*, %struct.index_state** %8, align 8
  %58 = getelementptr inbounds %struct.index_state, %struct.index_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load %struct.index_state*, %struct.index_state** %8, align 8
  %63 = getelementptr inbounds %struct.index_state, %struct.index_state* %62, i32 0, i32 2
  %64 = load %struct.cache_entry**, %struct.cache_entry*** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %64, i64 %66
  %68 = load %struct.cache_entry*, %struct.cache_entry** %67, align 8
  store %struct.cache_entry* %68, %struct.cache_entry** %14, align 8
  %69 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %70 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %18, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i64 @strncmp(i32 %71, i8* %72, i32 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %80

79:                                               ; preds = %61
  br label %81

80:                                               ; preds = %76
  br label %55

81:                                               ; preds = %79, %55
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.index_state*, %struct.index_state** %8, align 8
  %84 = getelementptr inbounds %struct.index_state, %struct.index_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i8*, i8** %18, align 8
  %89 = call i32 @g_free(i8* %88)
  %90 = load i32*, i32** %11, align 8
  store i32 0, i32* %90, align 4
  store %struct.cache_entry** null, %struct.cache_entry*** %7, align 8
  br label %222

91:                                               ; preds = %81
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %118, %91
  %94 = load i32, i32* %19, align 4
  %95 = load %struct.index_state*, %struct.index_state** %8, align 8
  %96 = getelementptr inbounds %struct.index_state, %struct.index_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %93
  %100 = load %struct.index_state*, %struct.index_state** %8, align 8
  %101 = getelementptr inbounds %struct.index_state, %struct.index_state* %100, i32 0, i32 2
  %102 = load %struct.cache_entry**, %struct.cache_entry*** %101, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %102, i64 %104
  %106 = load %struct.cache_entry*, %struct.cache_entry** %105, align 8
  store %struct.cache_entry* %106, %struct.cache_entry** %14, align 8
  %107 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %108 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %18, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i64 @strncmp(i32 %109, i8* %110, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %99
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %19, align 4
  br label %118

117:                                              ; preds = %99
  br label %119

118:                                              ; preds = %114
  br label %93

119:                                              ; preds = %117, %93
  %120 = load i8*, i8** %18, align 8
  %121 = call i32 @g_free(i8* %120)
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32*, i32** %11, align 8
  store i32 0, i32* %126, align 4
  store %struct.cache_entry** null, %struct.cache_entry*** %7, align 8
  br label %222

127:                                              ; preds = %119
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %17, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32*, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.cache_entry** @calloc(i32 %133, i32 8)
  store %struct.cache_entry** %134, %struct.cache_entry*** %15, align 8
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %180, %127
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %138, %140
  %142 = icmp slt i32 %137, %141
  br i1 %142, label %143, label %183

143:                                              ; preds = %136
  %144 = load %struct.index_state*, %struct.index_state** %8, align 8
  %145 = getelementptr inbounds %struct.index_state, %struct.index_state* %144, i32 0, i32 2
  %146 = load %struct.cache_entry**, %struct.cache_entry*** %145, align 8
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %146, i64 %148
  %150 = load %struct.cache_entry*, %struct.cache_entry** %149, align 8
  store %struct.cache_entry* %150, %struct.cache_entry** %14, align 8
  %151 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call %struct.cache_entry* @create_renamed_cache_entry(%struct.cache_entry* %151, i8* %152, i8* %153)
  %155 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %17, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %155, i64 %159
  store %struct.cache_entry* %154, %struct.cache_entry** %160, align 8
  %161 = load i32 (%struct.cache_entry*, i8*)*, i32 (%struct.cache_entry*, i8*)** %12, align 8
  %162 = icmp ne i32 (%struct.cache_entry*, i8*)* %161, null
  br i1 %162, label %163, label %174

163:                                              ; preds = %143
  %164 = load i32 (%struct.cache_entry*, i8*)*, i32 (%struct.cache_entry*, i8*)** %12, align 8
  %165 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %17, align 4
  %168 = sub nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %165, i64 %169
  %171 = load %struct.cache_entry*, %struct.cache_entry** %170, align 8
  %172 = load i8*, i8** %13, align 8
  %173 = call i32 %164(%struct.cache_entry* %171, i8* %172)
  br label %174

174:                                              ; preds = %163, %143
  %175 = load %struct.index_state*, %struct.index_state** %8, align 8
  %176 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %177 = call i32 @remove_name_hash(%struct.index_state* %175, %struct.cache_entry* %176)
  %178 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %179 = call i32 @cache_entry_free(%struct.cache_entry* %178)
  br label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %19, align 4
  br label %136

183:                                              ; preds = %136
  %184 = load i32, i32* %19, align 4
  %185 = load %struct.index_state*, %struct.index_state** %8, align 8
  %186 = getelementptr inbounds %struct.index_state, %struct.index_state* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %211

189:                                              ; preds = %183
  %190 = load %struct.index_state*, %struct.index_state** %8, align 8
  %191 = getelementptr inbounds %struct.index_state, %struct.index_state* %190, i32 0, i32 2
  %192 = load %struct.cache_entry**, %struct.cache_entry*** %191, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %192, i64 %194
  %196 = load %struct.index_state*, %struct.index_state** %8, align 8
  %197 = getelementptr inbounds %struct.index_state, %struct.index_state* %196, i32 0, i32 2
  %198 = load %struct.cache_entry**, %struct.cache_entry*** %197, align 8
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %198, i64 %200
  %202 = load %struct.index_state*, %struct.index_state** %8, align 8
  %203 = getelementptr inbounds %struct.index_state, %struct.index_state* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sub nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 @memmove(%struct.cache_entry** %195, %struct.cache_entry** %201, i32 %209)
  br label %211

211:                                              ; preds = %189, %183
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* %17, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load %struct.index_state*, %struct.index_state** %8, align 8
  %216 = getelementptr inbounds %struct.index_state, %struct.index_state* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load %struct.index_state*, %struct.index_state** %8, align 8
  %220 = getelementptr inbounds %struct.index_state, %struct.index_state* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  %221 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  store %struct.cache_entry** %221, %struct.cache_entry*** %7, align 8
  br label %222

222:                                              ; preds = %211, %125, %87, %28
  %223 = load %struct.cache_entry**, %struct.cache_entry*** %7, align 8
  ret %struct.cache_entry** %223
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local %struct.cache_entry** @calloc(i32, i32) #1

declare dso_local %struct.cache_entry* @create_renamed_cache_entry(%struct.cache_entry*, i8*, i8*) #1

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

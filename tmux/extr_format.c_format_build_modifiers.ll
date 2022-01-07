; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_build_modifiers.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_build_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_modifier = type { i32 }
%struct.format_tree = type { i32 }

@__const.format_build_modifiers.last = private unnamed_addr constant [4 x i8] c"X;:\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"lbdtqETSWP<>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"mCs=\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c":;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.format_modifier* (%struct.format_tree*, i8**, i32*)* @format_build_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.format_modifier* @format_build_modifiers(%struct.format_tree* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.format_modifier*, align 8
  %5 = alloca %struct.format_tree*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.format_modifier*, align 8
  %11 = alloca i8, align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.format_tree* %0, %struct.format_tree** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  store %struct.format_modifier* null, %struct.format_modifier** %10, align 8
  %18 = bitcast [4 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.format_build_modifiers.last, i32 0, i32 0), i64 4, i1 false)
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %225, %135, %110, %88, %52, %3
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 58
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %230

32:                                               ; preds = %30
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 59
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = call i32* @strchr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8 signext %43)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = call i64 @format_is_end(i8 signext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @format_add_modifier(%struct.format_modifier** %10, i32* %53, i8* %54, i32 1, i8** null, i32 0)
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %20

58:                                               ; preds = %46, %40
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %59, i32 2)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 2)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %67, i32 2)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %71, i32 2)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %75, i32 2)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %79, i32 2)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %78, %74, %70, %66, %62, %58
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @format_is_end(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @format_add_modifier(%struct.format_modifier** %10, i32* %89, i8* %90, i32 2, i8** null, i32 0)
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %8, align 8
  br label %20

94:                                               ; preds = %82, %78
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = call i32* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8 signext %97)
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %230

101:                                              ; preds = %94
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  store i8 %104, i8* %11, align 1
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @format_is_end(i8 signext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @format_add_modifier(%struct.format_modifier** %10, i32* %111, i8* %112, i32 1, i8** null, i32 0)
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %8, align 8
  br label %20

116:                                              ; preds = %101
  store i8** null, i8*** %13, align 8
  store i32 0, i32* %15, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @ispunct(i8 signext %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 45
  br i1 %127, label %128, label %159

128:                                              ; preds = %122, %116
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = call i8* @format_skip(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i8* %131, i8** %9, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %230

135:                                              ; preds = %128
  %136 = call i8** @xcalloc(i32 1, i32 8)
  store i8** %136, i8*** %13, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = ptrtoint i8* %139 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i8* @xstrndup(i8* %138, i32 %145)
  store i8* %146, i8** %14, align 8
  %147 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = call i8* @format_expand(%struct.format_tree* %147, i8* %148)
  %150 = load i8**, i8*** %13, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = call i32 @free(i8* %152)
  store i32 1, i32* %15, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = load i8**, i8*** %13, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @format_add_modifier(%struct.format_modifier** %10, i32* %154, i8* %11, i32 1, i8** %155, i32 %156)
  %158 = load i8*, i8** %9, align 8
  store i8* %158, i8** %8, align 8
  br label %20

159:                                              ; preds = %122
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %162, i8* %163, align 1
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  br label %166

166:                                              ; preds = %218, %159
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %170, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = call i64 @format_is_end(i8 signext %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %8, align 8
  br label %225

184:                                              ; preds = %175, %166
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %188 = call i8* @format_skip(i8* %186, i8* %187)
  store i8* %188, i8** %9, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = icmp eq i8* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %184
  br label %225

192:                                              ; preds = %184
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %8, align 8
  %195 = load i8**, i8*** %13, align 8
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, 1
  %198 = call i8** @xreallocarray(i8** %195, i32 %197, i32 8)
  store i8** %198, i8*** %13, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = load i8*, i8** %8, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i8* @xstrndup(i8* %199, i32 %205)
  store i8* %206, i8** %14, align 8
  %207 = load %struct.format_tree*, %struct.format_tree** %5, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = call i8* @format_expand(%struct.format_tree* %207, i8* %208)
  %210 = load i8**, i8*** %13, align 8
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %15, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8*, i8** %210, i64 %213
  store i8* %209, i8** %214, align 8
  %215 = load i8*, i8** %14, align 8
  %216 = call i32 @free(i8* %215)
  %217 = load i8*, i8** %9, align 8
  store i8* %217, i8** %8, align 8
  br label %218

218:                                              ; preds = %192
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = call i64 @format_is_end(i8 signext %221)
  %223 = icmp ne i64 %222, 0
  %224 = xor i1 %223, true
  br i1 %224, label %166, label %225

225:                                              ; preds = %218, %191, %181
  %226 = load i32*, i32** %7, align 8
  %227 = load i8**, i8*** %13, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @format_add_modifier(%struct.format_modifier** %10, i32* %226, i8* %11, i32 1, i8** %227, i32 %228)
  br label %20

230:                                              ; preds = %134, %100, %30
  %231 = load i8*, i8** %8, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, 58
  br i1 %234, label %235, label %241

235:                                              ; preds = %230
  %236 = load %struct.format_modifier*, %struct.format_modifier** %10, align 8
  %237 = load i32*, i32** %7, align 8
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @format_free_modifiers(%struct.format_modifier* %236, i32 %238)
  %240 = load i32*, i32** %7, align 8
  store i32 0, i32* %240, align 4
  store %struct.format_modifier* null, %struct.format_modifier** %4, align 8
  br label %246

241:                                              ; preds = %230
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = load i8**, i8*** %6, align 8
  store i8* %243, i8** %244, align 8
  %245 = load %struct.format_modifier*, %struct.format_modifier** %10, align 8
  store %struct.format_modifier* %245, %struct.format_modifier** %4, align 8
  br label %246

246:                                              ; preds = %241, %235
  %247 = load %struct.format_modifier*, %struct.format_modifier** %4, align 8
  ret %struct.format_modifier* %247
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @format_is_end(i8 signext) #2

declare dso_local i32 @format_add_modifier(%struct.format_modifier**, i32*, i8*, i32, i8**, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @ispunct(i8 signext) #2

declare dso_local i8* @format_skip(i8*, i8*) #2

declare dso_local i8** @xcalloc(i32, i32) #2

declare dso_local i8* @xstrndup(i8*, i32) #2

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8** @xreallocarray(i8**, i32, i32) #2

declare dso_local i32 @format_free_modifiers(%struct.format_modifier*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

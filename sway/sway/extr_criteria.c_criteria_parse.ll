; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_parse.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_criteria.c_criteria_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.criteria = type { i8*, i32 }

@error = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"No criteria\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Quote mismatch in criteria\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Found pair: %s=%s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"No closing brace found in criteria\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Criteria is empty\00", align 1
@ATOM_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.criteria* @criteria_parse(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.criteria*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.criteria*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i8**, i8*** %5, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** @error, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  %16 = call i32 @skip_spaces(i8** %6)
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 91
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i8* @strdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = load i8**, i8*** %5, align 8
  store i8* %22, i8** %23, align 8
  store %struct.criteria* null, %struct.criteria** %3, align 8
  br label %249

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  %27 = call i8* @calloc(i32 1, i32 16)
  %28 = bitcast i8* %27 to %struct.criteria*
  store %struct.criteria* %28, %struct.criteria** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %200, %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 93
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %206

41:                                               ; preds = %39
  %42 = call i32 @skip_spaces(i8** %6)
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %61, %41
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sge i32 %47, 97
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sle i32 %52, 122
  br i1 %53, label %59, label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 95
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i1 [ true, %49 ], [ %58, %54 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  br label %44

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = add nsw i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i8* @calloc(i32 %71, i32 1)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @strncpy(i8* %77, i8* %78, i32 %84)
  br label %86

86:                                               ; preds = %76, %64
  %87 = call i32 @skip_spaces(i8** %6)
  store i8* null, i8** %9, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 61
  br i1 %91, label %92, label %191

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %6, align 8
  %95 = call i32 @skip_spaces(i8** %6)
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 34
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  store i32 1, i32* %10, align 4
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  br label %103

103:                                              ; preds = %100, %92
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %12, align 8
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %128, %107
  %109 = load i8*, i8** %6, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 34
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 -1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 92
  br label %124

124:                                              ; preds = %118, %113
  %125 = phi i1 [ true, %113 ], [ %123, %118 ]
  br label %126

126:                                              ; preds = %124, %108
  %127 = phi i1 [ false, %108 ], [ %125, %124 ]
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  br label %108

131:                                              ; preds = %126
  %132 = load i8*, i8** %6, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = call i8* @strdup(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i8**, i8*** %5, align 8
  store i8* %136, i8** %137, align 8
  br label %242

138:                                              ; preds = %131
  br label %161

139:                                              ; preds = %103
  br label %140

140:                                              ; preds = %157, %139
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i8*, i8** %6, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 32
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i8*, i8** %6, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 93
  br label %155

155:                                              ; preds = %150, %145, %140
  %156 = phi i1 [ false, %145 ], [ false, %140 ], [ %154, %150 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %6, align 8
  br label %140

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160, %138
  %162 = load i8*, i8** %6, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = add nsw i64 %166, 1
  %168 = trunc i64 %167 to i32
  %169 = call i8* @calloc(i32 %168, i32 1)
  store i8* %169, i8** %9, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = call i32 @strncpy(i8* %170, i8* %171, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %161
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %184

184:                                              ; preds = %181, %161
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @unescape(i8* %185)
  %187 = load i32, i32* @SWAY_DEBUG, align 4
  %188 = load i8*, i8** %8, align 8
  %189 = load i8*, i8** %9, align 8
  %190 = call i32 @sway_log(i32 %187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %188, i8* %189)
  br label %191

191:                                              ; preds = %184, %86
  %192 = load %struct.criteria*, %struct.criteria** %7, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @parse_token(%struct.criteria* %192, i8* %193, i8* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** @error, align 8
  %199 = load i8**, i8*** %5, align 8
  store i8* %198, i8** %199, align 8
  br label %242

200:                                              ; preds = %191
  %201 = call i32 @skip_spaces(i8** %6)
  %202 = load i8*, i8** %8, align 8
  %203 = call i32 @free(i8* %202)
  %204 = load i8*, i8** %9, align 8
  %205 = call i32 @free(i8* %204)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %29

206:                                              ; preds = %39
  %207 = load i8*, i8** %6, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 93
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = call i8* @strdup(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %213 = load i8**, i8*** %5, align 8
  store i8* %212, i8** %213, align 8
  br label %242

214:                                              ; preds = %206
  %215 = load %struct.criteria*, %struct.criteria** %7, align 8
  %216 = call i64 @criteria_is_empty(%struct.criteria* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = call i8* @strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i8**, i8*** %5, align 8
  store i8* %219, i8** %220, align 8
  br label %242

221:                                              ; preds = %214
  %222 = load i8*, i8** %6, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %6, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = load i8*, i8** %4, align 8
  %226 = ptrtoint i8* %224 to i64
  %227 = ptrtoint i8* %225 to i64
  %228 = sub i64 %226, %227
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  %232 = call i8* @calloc(i32 %231, i32 1)
  %233 = load %struct.criteria*, %struct.criteria** %7, align 8
  %234 = getelementptr inbounds %struct.criteria, %struct.criteria* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  %235 = load %struct.criteria*, %struct.criteria** %7, align 8
  %236 = getelementptr inbounds %struct.criteria, %struct.criteria* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i8*, i8** %4, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @strncpy(i8* %237, i8* %238, i32 %239)
  %241 = load %struct.criteria*, %struct.criteria** %7, align 8
  store %struct.criteria* %241, %struct.criteria** %3, align 8
  br label %249

242:                                              ; preds = %218, %211, %197, %135
  %243 = load i8*, i8** %8, align 8
  %244 = call i32 @free(i8* %243)
  %245 = load i8*, i8** %9, align 8
  %246 = call i32 @free(i8* %245)
  %247 = load %struct.criteria*, %struct.criteria** %7, align 8
  %248 = call i32 @criteria_destroy(%struct.criteria* %247)
  store %struct.criteria* null, %struct.criteria** %3, align 8
  br label %249

249:                                              ; preds = %242, %221, %21
  %250 = load %struct.criteria*, %struct.criteria** %3, align 8
  ret %struct.criteria* %250
}

declare dso_local i32 @skip_spaces(i8**) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @unescape(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*, i8*) #1

declare dso_local i32 @parse_token(%struct.criteria*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @criteria_is_empty(%struct.criteria*) #1

declare dso_local i32 @criteria_destroy(%struct.criteria*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

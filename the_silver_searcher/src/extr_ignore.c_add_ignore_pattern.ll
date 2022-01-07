; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_add_ignore_pattern.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_add_ignore_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8**, i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Pattern is empty. Not adding any ignores.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"added ignore pattern %s to %s\00", align 1
@root_ignores = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"root ignores\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_ignore_pattern(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %33, %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @isspace(i8 signext %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  br label %19

36:                                               ; preds = %31, %19
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %198

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @is_fnmatch(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %114

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 42
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = call i64 @strchr(i8* %59, i8 signext 46)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = call i64 @is_fnmatch(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i8*** %69, i8**** %7, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i64* %71, i64** %8, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 2
  store i32 %75, i32* %6, align 4
  br label %113

76:                                               ; preds = %62, %57, %51, %45
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i8*** %84, i8**** %7, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  store i64* %86, i64** %8, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %112

91:                                               ; preds = %76
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 33
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  store i8*** %99, i8**** %7, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  store i64* %101, i64** %8, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %6, align 4
  br label %111

106:                                              ; preds = %91
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  store i8*** %108, i8**** %7, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 7
  store i64* %110, i64** %8, align 8
  br label %111

111:                                              ; preds = %106, %97
  br label %112

112:                                              ; preds = %111, %82
  br label %113

113:                                              ; preds = %112, %67
  br label %135

114:                                              ; preds = %41
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 47
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 8
  store i8*** %122, i8**** %7, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 9
  store i64* %124, i64** %8, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %6, align 4
  br label %134

129:                                              ; preds = %114
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 10
  store i8*** %131, i8**** %7, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 11
  store i64* %133, i64** %8, align 8
  br label %134

134:                                              ; preds = %129, %120
  br label %135

135:                                              ; preds = %134, %113
  %136 = load i64*, i64** %8, align 8
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = load i8***, i8**** %7, align 8
  %140 = load i8**, i8*** %139, align 8
  %141 = load i64*, i64** %8, align 8
  %142 = load i64, i64* %141, align 8
  %143 = mul i64 %142, 8
  %144 = call i8** @ag_realloc(i8** %140, i64 %143)
  store i8** %144, i8*** %9, align 8
  %145 = load i8***, i8**** %7, align 8
  store i8** %144, i8*** %145, align 8
  %146 = load i64*, i64** %8, align 8
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %147, 1
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %175, %135
  %151 = load i32, i32* %5, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load i8*, i8** %4, align 8
  %155 = load i8**, i8*** %9, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @strcmp(i8* %154, i8* %160)
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %178

164:                                              ; preds = %153
  %165 = load i8**, i8*** %9, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = load i8**, i8*** %9, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %170, i8** %174, align 8
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %5, align 4
  br label %150

178:                                              ; preds = %163, %150
  %179 = load i8*, i8** %4, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i8* @ag_strndup(i8* %179, i32 %180)
  %182 = load i8**, i8*** %9, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* %181, i8** %185, align 8
  %186 = load i8*, i8** %4, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root_ignores, align 8
  %189 = icmp eq %struct.TYPE_4__* %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %178
  br label %195

191:                                              ; preds = %178
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 12
  %194 = load i8*, i8** %193, align 8
  br label %195

195:                                              ; preds = %191, %190
  %196 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %190 ], [ %194, %191 ]
  %197 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %186, i8* %196)
  br label %198

198:                                              ; preds = %195, %39
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i64 @is_fnmatch(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8** @ag_realloc(i8**, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @ag_strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

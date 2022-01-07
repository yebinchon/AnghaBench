; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_results_to_description.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_results_to_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Added or modified \22%s\22.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Added or modified \22%s\22 and %d more files.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Deleted \22%s\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Deleted \22%s\22 and %d more files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Renamed \22%s\22.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Renamed \22%s\22 and %d more files.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Renamed directory \22%s\22.\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Renamed \22%s\22 and %d more directories.\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Added directory \22%s\22.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Added \22%s\22 and %d more directories.\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Removed directory \22%s\22.\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Removed \22%s\22 and %d more directories.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @diff_results_to_description(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %223

22:                                               ; preds = %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %4, align 8
  br label %24

24:                                               ; preds = %112, %22
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %116

27:                                               ; preds = %24
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %111 [
    i32 134, label %34
    i32 133, label %45
    i32 128, label %56
    i32 130, label %67
    i32 129, label %78
    i32 132, label %89
    i32 131, label %100
  ]

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @get_basename(i32 %40)
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %111

45:                                               ; preds = %27
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @get_basename(i32 %51)
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %111

56:                                               ; preds = %27
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @get_basename(i32 %62)
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %111

67:                                               ; preds = %27
  %68 = load i32, i32* %17, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @get_basename(i32 %73)
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %111

78:                                               ; preds = %27
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @get_basename(i32 %84)
  store i8* %85, i8** %6, align 8
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %111

89:                                               ; preds = %27
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @get_basename(i32 %95)
  store i8* %96, i8** %10, align 8
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %111

100:                                              ; preds = %27
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @get_basename(i32 %106)
  store i8* %107, i8** %11, align 8
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %27, %108, %97, %86, %75, %64, %53, %42
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %4, align 8
  br label %24

116:                                              ; preds = %24
  %117 = call i32* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %117, i32** %18, align 8
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32*, i32** %18, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  br label %134

124:                                              ; preds = %116
  %125 = load i32, i32* %12, align 4
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32*, i32** %18, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %129, i32 %131)
  br label %133

133:                                              ; preds = %127, %124
  br label %134

134:                                              ; preds = %133, %120
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32*, i32** %18, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %139)
  br label %151

141:                                              ; preds = %134
  %142 = load i32, i32* %13, align 4
  %143 = icmp sgt i32 %142, 1
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32*, i32** %18, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %147, 1
  %149 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %144, %141
  br label %151

151:                                              ; preds = %150, %137
  %152 = load i32, i32* %14, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32*, i32** %18, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %156)
  br label %168

158:                                              ; preds = %151
  %159 = load i32, i32* %14, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32*, i32** %18, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sub nsw i32 %164, 1
  %166 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %163, i32 %165)
  br label %167

167:                                              ; preds = %161, %158
  br label %168

168:                                              ; preds = %167, %154
  %169 = load i32, i32* %17, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32*, i32** %18, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %173)
  br label %185

175:                                              ; preds = %168
  %176 = load i32, i32* %17, align 4
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32*, i32** %18, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sub nsw i32 %181, 1
  %183 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %179, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* %180, i32 %182)
  br label %184

184:                                              ; preds = %178, %175
  br label %185

185:                                              ; preds = %184, %171
  %186 = load i32, i32* %15, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32*, i32** %18, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %190)
  br label %202

192:                                              ; preds = %185
  %193 = load i32, i32* %15, align 4
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32*, i32** %18, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = load i32, i32* %15, align 4
  %199 = sub nsw i32 %198, 1
  %200 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %196, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %197, i32 %199)
  br label %201

201:                                              ; preds = %195, %192
  br label %202

202:                                              ; preds = %201, %188
  %203 = load i32, i32* %16, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32*, i32** %18, align 8
  %207 = load i8*, i8** %11, align 8
  %208 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %207)
  br label %219

209:                                              ; preds = %202
  %210 = load i32, i32* %16, align 4
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = load i32*, i32** %18, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = load i32, i32* %16, align 4
  %216 = sub nsw i32 %215, 1
  %217 = call i32 (i32*, i8*, i8*, ...) @g_string_append_printf(i32* %213, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %214, i32 %216)
  br label %218

218:                                              ; preds = %212, %209
  br label %219

219:                                              ; preds = %218, %205
  %220 = load i32*, i32** %18, align 8
  %221 = load i32, i32* @FALSE, align 4
  %222 = call i8* @g_string_free(i32* %220, i32 %221)
  store i8* %222, i8** %2, align 8
  br label %223

223:                                              ; preds = %219, %21
  %224 = load i8*, i8** %2, align 8
  ret i8* %224
}

declare dso_local i8* @get_basename(i32) #1

declare dso_local i32* @g_string_new(i8*) #1

declare dso_local i32 @g_string_append_printf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

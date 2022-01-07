; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_expand_macro.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/wpp/extr_ppl.yy.c_expand_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32, i64*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@def_macro = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Too %s macro arguments (%d)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"few\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"many\00", align 1
@pp_flex_debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"expand_macro(%d): %s:%d: '%s'(%d,%d) -> ...\0A\00", align 1
@macexpstackidx = common dso_local global i32 0, align 4
@pp_status = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@curdef_idx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" \00\00", align 1
@curdef_text = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"expand_text: '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @expand_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_macro(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @def_macro, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33, %1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 0, %48
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44, %33
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @abs(i32 %55) #3
  %57 = icmp slt i32 %52, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ppy_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %59, i32 %60)
  br label %203

62:                                               ; preds = %44, %39
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %63

82:                                               ; preds = %63
  %83 = load i64, i64* @pp_flex_debug, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* @macexpstackidx, align 4
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @pp_status, i32 0, i32 0), align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @pp_status, i32 0, i32 1), align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %87, i8* %88, i32 %89, i8* %92, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %85, %82
  store i32 0, i32* @curdef_idx, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %3, align 8
  br label %103

103:                                              ; preds = %113, %98
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = call %struct.TYPE_13__* @add_expand_text(%struct.TYPE_13__* %107, %struct.TYPE_14__* %108, i32* %7)
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %3, align 8
  %110 = icmp ne %struct.TYPE_13__* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %117

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %3, align 8
  br label %103

117:                                              ; preds = %111, %103
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %124, %117
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = call i32 @add_text(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %124

124:                                              ; preds = %122
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %118

127:                                              ; preds = %118
  %128 = call i32 @add_text(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %129 = load i32, i32* @curdef_idx, align 4
  store i32 %129, i32* %5, align 4
  %130 = load i8*, i8** @curdef_text, align 8
  %131 = load i32, i32* @curdef_idx, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8* %134, i8** %6, align 8
  br label %135

135:                                              ; preds = %148, %127
  %136 = load i32, i32* %5, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = and i32 %141, 255
  %143 = trunc i32 %142 to i8
  %144 = call i32 @isspace(i8 signext %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %138
  br label %153

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %5, align 4
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 -1
  store i8* %152, i8** %6, align 8
  br label %135

153:                                              ; preds = %146, %135
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %6, align 8
  store i8 32, i8* %155, align 1
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  store i8 0, i8* %157, align 1
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %160 = load i8*, i8** @curdef_text, align 8
  store i8* %160, i8** %6, align 8
  br label %161

161:                                              ; preds = %175, %153
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %5, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load i8*, i8** %6, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = and i32 %168, 255
  %170 = trunc i32 %169 to i8
  %171 = call i32 @isspace(i8 signext %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %165
  br label %180

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %4, align 4
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %6, align 8
  br label %161

180:                                              ; preds = %173, %161
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %4, align 4
  %183 = sub nsw i32 %181, %182
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = load i64, i64* @pp_flex_debug, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, i32* @stderr, align 4
  %190 = load i8*, i8** @curdef_text, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %188, %185
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %197 = call i32 @push_buffer(%struct.TYPE_12__* %196, i32* null, i32* null, i32 0)
  %198 = load i8*, i8** @curdef_text, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = call i32 @ppy__scan_string(i8* %201)
  br label %203

203:                                              ; preds = %51, %195, %180
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ppy_error(i8*, i8*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_13__* @add_expand_text(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @add_text(i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @push_buffer(%struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local i32 @ppy__scan_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

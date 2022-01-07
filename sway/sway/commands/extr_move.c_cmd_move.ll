; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_move.c_cmd_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cmd_results = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"move\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_4__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@WLR_DIRECTION_LEFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@WLR_DIRECTION_RIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@WLR_DIRECTION_UP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@WLR_DIRECTION_DOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"--no-auto-back-and-forth\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"container\00", align 1
@expected_full_syntax = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"mark\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"scratchpad\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_move(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %10 = call %struct.cmd_results* @checkarg(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  store %struct.cmd_results* %10, %struct.cmd_results** %6, align 8
  %11 = icmp ne %struct.cmd_results* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %13, %struct.cmd_results** %3, align 8
  br label %230

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @CMD_INVALID, align 4
  %23 = call %struct.cmd_results* @cmd_results_new(i32 %22, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %23, %struct.cmd_results** %3, align 8
  br label %230

24:                                               ; preds = %14
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @WLR_DIRECTION_LEFT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  %36 = call %struct.cmd_results* @cmd_move_in_direction(i32 %31, i32 %33, i8** %35)
  store %struct.cmd_results* %36, %struct.cmd_results** %3, align 8
  br label %230

37:                                               ; preds = %24
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcasecmp(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* @WLR_DIRECTION_RIGHT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %5, align 8
  %49 = call %struct.cmd_results* @cmd_move_in_direction(i32 %44, i32 %46, i8** %48)
  store %struct.cmd_results* %49, %struct.cmd_results** %3, align 8
  br label %230

50:                                               ; preds = %37
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @WLR_DIRECTION_UP, align 4
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %5, align 8
  %62 = call %struct.cmd_results* @cmd_move_in_direction(i32 %57, i32 %59, i8** %61)
  store %struct.cmd_results* %62, %struct.cmd_results** %3, align 8
  br label %230

63:                                               ; preds = %50
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcasecmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32, i32* @WLR_DIRECTION_DOWN, align 4
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %5, align 8
  %75 = call %struct.cmd_results* @cmd_move_in_direction(i32 %70, i32 %72, i8** %74)
  store %struct.cmd_results* %75, %struct.cmd_results** %3, align 8
  br label %230

76:                                               ; preds = %63
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcasecmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = icmp sge i32 %83, 2
  br i1 %84, label %85, label %105

85:                                               ; preds = %82
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcasecmp(i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcasecmp(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %91, %85
  %98 = load i32, i32* %4, align 4
  %99 = sub nsw i32 %98, 2
  store i32 %99, i32* %4, align 4
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  store i8** %101, i8*** %5, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = call %struct.cmd_results* @cmd_move_workspace(i32 %102, i8** %103)
  store %struct.cmd_results* %104, %struct.cmd_results** %3, align 8
  br label %230

105:                                              ; preds = %91, %82, %76
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  store i32 0, i32* %7, align 4
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @strcasecmp(i8* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  store i32 1, i32* %7, align 4
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %5, align 8
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcasecmp(i8* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @strcasecmp(i8* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %126, %120
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %5, align 8
  br label %137

137:                                              ; preds = %132, %126
  %138 = load i8**, i8*** %5, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @strcasecmp(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %4, align 4
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %5, align 8
  br label %148

148:                                              ; preds = %143, %137
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @CMD_INVALID, align 4
  %153 = load i8*, i8** @expected_full_syntax, align 8
  %154 = call %struct.cmd_results* @cmd_results_new(i32 %152, i8* %153)
  store %struct.cmd_results* %154, %struct.cmd_results** %3, align 8
  br label %230

155:                                              ; preds = %148
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load i8**, i8*** %5, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @strcasecmp(i8* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @CMD_INVALID, align 4
  %166 = load i8*, i8** @expected_full_syntax, align 8
  %167 = call %struct.cmd_results* @cmd_results_new(i32 %165, i8* %166)
  store %struct.cmd_results* %167, %struct.cmd_results** %3, align 8
  br label %230

168:                                              ; preds = %158, %155
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strcasecmp(i8* %171, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcasecmp(i8* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcasecmp(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180, %174, %168
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i8**, i8*** %5, align 8
  %190 = call %struct.cmd_results* @cmd_move_container(i32 %187, i32 %188, i8** %189)
  store %struct.cmd_results* %190, %struct.cmd_results** %3, align 8
  br label %230

191:                                              ; preds = %180
  %192 = load i8**, i8*** %5, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @strcasecmp(i8* %194, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = call %struct.cmd_results* (...) @cmd_move_to_scratchpad()
  store %struct.cmd_results* %198, %struct.cmd_results** %3, align 8
  br label %230

199:                                              ; preds = %191
  %200 = load i8**, i8*** %5, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @strcasecmp(i8* %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %4, align 4
  %207 = icmp sgt i32 %206, 1
  br i1 %207, label %208, label %224

208:                                              ; preds = %205
  %209 = load i8**, i8*** %5, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @strcasecmp(i8* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @strcasecmp(i8* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214, %199
  %221 = load i32, i32* %4, align 4
  %222 = load i8**, i8*** %5, align 8
  %223 = call %struct.cmd_results* @cmd_move_to_position(i32 %221, i8** %222)
  store %struct.cmd_results* %223, %struct.cmd_results** %3, align 8
  br label %230

224:                                              ; preds = %214, %208, %205
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* @CMD_INVALID, align 4
  %228 = load i8*, i8** @expected_full_syntax, align 8
  %229 = call %struct.cmd_results* @cmd_results_new(i32 %227, i8* %228)
  store %struct.cmd_results* %229, %struct.cmd_results** %3, align 8
  br label %230

230:                                              ; preds = %226, %220, %197, %186, %164, %151, %97, %69, %56, %43, %30, %21, %12
  %231 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %231
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_move_in_direction(i32, i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_move_workspace(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_move_container(i32, i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_move_to_scratchpad(...) #1

declare dso_local %struct.cmd_results* @cmd_move_to_position(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

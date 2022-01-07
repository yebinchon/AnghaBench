; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@REQ_VIEW_PAGER = common dso_local global i32 0, align 4
@REQ_VIEW_MAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to change directory to %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@REQ_VIEW_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"blame\00", align 1
@REQ_VIEW_BLAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@REQ_VIEW_GREP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@REQ_VIEW_DIFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@REQ_VIEW_LOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"reflog\00", align 1
@REQ_VIEW_REFLOG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@REQ_VIEW_STASH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@REQ_VIEW_REFS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"tig version %s\0A\00", align 1
@TIG_VERSION = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@usage_string = common dso_local global i8* null, align 8
@argv_env = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"command too long\00", align 1
@NCURSES_VERSION = common dso_local global i32 0, align 4
@NCURSES_VERSION_PATCH = common dso_local global i32 0, align 4
@rl_library_version = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i8** null, i8*** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @REQ_VIEW_PAGER, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @REQ_VIEW_MAIN, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %25

25:                                               ; preds = %49, %23
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %29
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = call i64 @chdir(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %49

48:                                               ; preds = %29
  br label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %25

52:                                               ; preds = %48, %25
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %215

58:                                               ; preds = %52
  %59 = load i8**, i8*** %6, align 8
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8*, i8** %59, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @REQ_VIEW_STATUS, align 4
  store i32 %69, i32* %8, align 4
  br label %122

70:                                               ; preds = %58
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @REQ_VIEW_BLAME, align 4
  store i32 %75, i32* %8, align 4
  br label %121

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @REQ_VIEW_GREP, align 4
  store i32 %81, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %120

82:                                               ; preds = %76
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @REQ_VIEW_DIFF, align 4
  store i32 %87, i32* %8, align 4
  br label %119

88:                                               ; preds = %82
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @REQ_VIEW_LOG, align 4
  store i32 %93, i32* %8, align 4
  br label %118

94:                                               ; preds = %88
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @REQ_VIEW_REFLOG, align 4
  store i32 %99, i32* %8, align 4
  br label %117

100:                                              ; preds = %94
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @REQ_VIEW_STASH, align 4
  store i32 %105, i32* %8, align 4
  br label %116

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @REQ_VIEW_REFS, align 4
  store i32 %111, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %115

112:                                              ; preds = %106
  store i8* null, i8** %9, align 8
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %110
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116, %98
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %86
  br label %120

120:                                              ; preds = %119, %80
  br label %121

121:                                              ; preds = %120, %74
  br label %122

122:                                              ; preds = %121, %68
  br label %123

123:                                              ; preds = %203, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %206

127:                                              ; preds = %123
  %128 = load i8**, i8*** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %15, align 8
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %196, label %135

135:                                              ; preds = %127
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  store i32 1, i32* %10, align 4
  br label %195

140:                                              ; preds = %135
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144, %140
  %149 = load i8*, i8** @TIG_VERSION, align 8
  %150 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* @EXIT_SUCCESS, align 4
  %152 = call i32 @exit(i32 %151) #3
  unreachable

153:                                              ; preds = %144
  %154 = load i8*, i8** %15, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i8*, i8** %15, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157, %153
  %162 = load i8*, i8** @usage_string, align 8
  %163 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* @EXIT_SUCCESS, align 4
  %165 = call i32 @exit(i32 %164) #3
  unreachable

166:                                              ; preds = %157
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 @strlen(i8* %167)
  %169 = icmp sge i32 %168, 2
  br i1 %169, label %170, label %192

170:                                              ; preds = %166
  %171 = load i8*, i8** %15, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 43
  br i1 %174, label %175, label %192

175:                                              ; preds = %170
  %176 = load i8*, i8** %15, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = call i64 @string_isnumber(i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %175
  %181 = load i8*, i8** %15, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = call i32 @atoi(i8* %182)
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* %16, align 4
  %188 = sub nsw i32 %187, 1
  br label %190

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %186
  %191 = phi i32 [ %188, %186 ], [ 0, %189 ]
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @argv_env, i32 0, i32 0), align 4
  br label %203

192:                                              ; preds = %175, %170, %166
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194, %139
  br label %196

196:                                              ; preds = %195, %127
  %197 = load i8*, i8** %15, align 8
  %198 = call i32 @argv_append(i8*** %12, i8* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %196
  br label %203

203:                                              ; preds = %202, %190
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %123

206:                                              ; preds = %123
  %207 = load i8**, i8*** %12, align 8
  %208 = icmp ne i8** %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i8**, i8*** %12, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @filter_options(i8** %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %213, %56
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @string_isnumber(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @argv_append(i8***, i8*) #1

declare dso_local i32 @filter_options(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

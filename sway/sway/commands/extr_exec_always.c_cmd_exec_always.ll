; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_exec_always.c_cmd_exec_always.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_exec_always.c_cmd_exec_always.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.cmd_results = type { i32 }

@config = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_DEFER = common dso_local global i32 0, align 4
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"--no-startup-id\00", align 1
@SWAY_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"exec switch '--no-startup-id' not supported, ignored.\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Executing %s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to create pipe for fork\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Child process created with pid %d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Second fork() failed\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_exec_always(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.cmd_results*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [2 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.cmd_results* null, %struct.cmd_results** %6, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @CMD_DEFER, align 4
  %26 = call %struct.cmd_results* @cmd_results_new(i32 %25, i8* null)
  store %struct.cmd_results* %26, %struct.cmd_results** %3, align 8
  br label %205

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 -1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %33 = call %struct.cmd_results* @checkarg(i32 %28, i8* %31, i32 %32, i32 1)
  store %struct.cmd_results* %33, %struct.cmd_results** %6, align 8
  %34 = icmp ne %struct.cmd_results* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %36, %struct.cmd_results** %3, align 8
  br label %205

37:                                               ; preds = %27
  store i8* null, i8** %7, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load i32, i32* @SWAY_INFO, align 4
  %45 = call i32 (i32, i8*, ...) @sway_log(i32 %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 -1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %55 = call %struct.cmd_results* @checkarg(i32 %50, i8* %53, i32 %54, i32 1)
  store %struct.cmd_results* %55, %struct.cmd_results** %6, align 8
  %56 = icmp ne %struct.cmd_results* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = load %struct.cmd_results*, %struct.cmd_results** %6, align 8
  store %struct.cmd_results* %58, %struct.cmd_results** %3, align 8
  br label %205

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 39
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 34
  br i1 %78, label %79, label %86

79:                                               ; preds = %71, %63
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @strdup(i8* %82)
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @strip_quotes(i8* %84)
  br label %90

86:                                               ; preds = %71, %60
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i8* @join_args(i8** %87, i32 %88)
  store i8* %89, i8** %7, align 8
  br label %90

90:                                               ; preds = %86, %79
  %91 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @strncpy(i8* %91, i8* %92, i32 4095)
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 4095
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* @SWAY_DEBUG, align 4
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %99 = call i32 (i32, i8*, ...) @sway_log(i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %101 = call i64 @pipe(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load i32, i32* @SWAY_ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @sway_log(i32 %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %90
  %107 = call i64 (...) @fork()
  store i64 %107, i64* %10, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %106
  %110 = call i32 (...) @setsid()
  %111 = call i32 @sigemptyset(i32* %12)
  %112 = load i32, i32* @SIG_SETMASK, align 4
  %113 = call i32 @sigprocmask(i32 %112, i32* %12, i32* null)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @close(i32 %115)
  %117 = call i64 (...) @fork()
  store i64 %117, i64* %11, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %109
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @close(i32 %121)
  %123 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %124 = call i32 @execl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %123, i8* null)
  %125 = call i32 @_exit(i32 0) #3
  unreachable

126:                                              ; preds = %109
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %131, %126
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %129, 8
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = bitcast i64* %11 to i32*
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 8, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @write(i32 %133, i32* %137, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %13, align 4
  br label %127

145:                                              ; preds = %127
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @close(i32 %147)
  %149 = call i32 @_exit(i32 0) #3
  unreachable

150:                                              ; preds = %106
  %151 = load i64, i64* %10, align 8
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @close(i32 %155)
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @close(i32 %158)
  %160 = load i32, i32* @CMD_FAILURE, align 4
  %161 = call %struct.cmd_results* @cmd_results_new(i32 %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store %struct.cmd_results* %161, %struct.cmd_results** %3, align 8
  br label %205

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @close(i32 %165)
  store i32 0, i32* %14, align 4
  br label %167

167:                                              ; preds = %171, %163
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %169, 8
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = bitcast i64* %11 to i32*
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 8, %179
  %181 = trunc i64 %180 to i32
  %182 = call i32 @read(i32 %173, i32* %177, i32 %181)
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %14, align 4
  br label %167

185:                                              ; preds = %167
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @close(i32 %187)
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @waitpid(i64 %189, i32* null, i32 0)
  %191 = load i64, i64* %11, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i32, i32* @SWAY_DEBUG, align 4
  %195 = load i64, i64* %11, align 8
  %196 = call i32 (i32, i8*, ...) @sway_log(i32 %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %195)
  %197 = load i64, i64* %11, align 8
  %198 = call i32 @root_record_workspace_pid(i64 %197)
  br label %202

199:                                              ; preds = %185
  %200 = load i32, i32* @CMD_FAILURE, align 4
  %201 = call %struct.cmd_results* @cmd_results_new(i32 %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store %struct.cmd_results* %201, %struct.cmd_results** %3, align 8
  br label %205

202:                                              ; preds = %193
  %203 = load i32, i32* @CMD_SUCCESS, align 4
  %204 = call %struct.cmd_results* @cmd_results_new(i32 %203, i8* null)
  store %struct.cmd_results* %204, %struct.cmd_results** %3, align 8
  br label %205

205:                                              ; preds = %202, %199, %153, %57, %35, %24
  %206 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %206
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strip_quotes(i8*) #1

declare dso_local i8* @join_args(i8**, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @root_record_workspace_pid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

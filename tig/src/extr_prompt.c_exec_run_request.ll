; ModuleID = '/home/carl/AnghaBench/tig/src/extr_prompt.c_exec_run_request.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_prompt.c_exec_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.view = type { i32, i32 }
%struct.run_request = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i32, i32 }

@REQ_NONE = common dso_local global i32 0, align 4
@SIZEOF_MED_STR = common dso_local global i32 0, align 4
@SIZEOF_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to format arguments\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" and exit\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Run `%s`%s?\00", align 1
@repo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@REQ_QUIT = common dso_local global i32 0, align 4
@REQ_REFRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_run_request(%struct.view* %0, %struct.run_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.run_request*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.run_request* %1, %struct.run_request** %5, align 8
  store i8** null, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @REQ_NONE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @SIZEOF_MED_STR, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @SIZEOF_ARG, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8*, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.run_request*, %struct.run_request** %5, align 8
  %27 = getelementptr inbounds %struct.run_request, %struct.run_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = trunc i64 %20 to i32
  %30 = call i32 @argv_to_string(i32 %28, i8* %22, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = call i32 @argv_from_string_no_quotes(i8** %25, i32* %12, i8* %22)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.view*, %struct.view** %4, align 8
  %37 = getelementptr inbounds %struct.view, %struct.view* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @argv_format(i32 %38, i8*** %6, i8** %25, i32 0, i32 1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8**, i8*** %6, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %35, %32, %2
  %45 = call i32 @report(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @REQ_NONE, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %175

47:                                               ; preds = %41
  %48 = load %struct.run_request*, %struct.run_request** %5, align 8
  %49 = getelementptr inbounds %struct.run_request, %struct.run_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.view*, %struct.view** %4, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = call i32 @run_prompt_command(%struct.view* %54, i8** %55)
  store i32 %56, i32* %8, align 4
  br label %126

57:                                               ; preds = %47
  %58 = load %struct.run_request*, %struct.run_request** %5, align 8
  %59 = getelementptr inbounds %struct.run_request, %struct.run_request* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.run_request*, %struct.run_request** %5, align 8
  %66 = getelementptr inbounds %struct.run_request, %struct.run_request* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %57
  %71 = load i32, i32* @SIZEOF_STR, align 4
  %72 = zext i32 %71 to i64
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %14, align 8
  %74 = alloca i8, i64 %72, align 16
  store i64 %72, i64* %15, align 8
  %75 = load i32, i32* @SIZEOF_STR, align 4
  %76 = zext i32 %75 to i64
  %77 = alloca i8, i64 %76, align 16
  store i64 %76, i64* %16, align 8
  %78 = load %struct.run_request*, %struct.run_request** %5, align 8
  %79 = getelementptr inbounds %struct.run_request, %struct.run_request* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  store i8* %84, i8** %17, align 8
  %85 = load i8**, i8*** %6, align 8
  %86 = trunc i64 %72 to i32
  %87 = call i64 @argv_to_string_quoted(i8** %85, i8* %74, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %70
  %90 = load i8*, i8** %17, align 8
  %91 = call i64 @string_format(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = call i64 @prompt_yesno(i8* %77)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %93, %89, %70
  %98 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %97, %57
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99
  %103 = load i8**, i8*** %6, align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @repo, i32 0, i32 0), align 4
  %105 = load %struct.run_request*, %struct.run_request** %5, align 8
  %106 = getelementptr inbounds %struct.run_request, %struct.run_request* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.run_request*, %struct.run_request** %5, align 8
  %110 = getelementptr inbounds %struct.run_request, %struct.run_request* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.run_request*, %struct.run_request** %5, align 8
  %117 = getelementptr inbounds %struct.run_request, %struct.run_request* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.run_request*, %struct.run_request** %5, align 8
  %121 = getelementptr inbounds %struct.run_request, %struct.run_request* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @open_external_viewer(i8** %103, i32 %104, i32 %108, i32 %115, i32 %119, i32 %123, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %102, %99
  br label %126

126:                                              ; preds = %125, %53
  %127 = load i8**, i8*** %6, align 8
  %128 = icmp ne i8** %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i8**, i8*** %6, align 8
  %131 = call i32 @argv_free(i8** %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i8**, i8*** %6, align 8
  %134 = call i32 @free(i8** %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @REQ_NONE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %173

138:                                              ; preds = %132
  %139 = load %struct.run_request*, %struct.run_request** %5, align 8
  %140 = getelementptr inbounds %struct.run_request, %struct.run_request* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @REQ_NONE, align 4
  store i32 %148, i32* %8, align 4
  br label %172

149:                                              ; preds = %144, %138
  %150 = load %struct.run_request*, %struct.run_request** %5, align 8
  %151 = getelementptr inbounds %struct.run_request, %struct.run_request* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @REQ_QUIT, align 4
  store i32 %156, i32* %8, align 4
  br label %171

157:                                              ; preds = %149
  %158 = load %struct.run_request*, %struct.run_request** %5, align 8
  %159 = getelementptr inbounds %struct.run_request, %struct.run_request* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %157
  %164 = load %struct.view*, %struct.view** %4, align 8
  %165 = getelementptr inbounds %struct.view, %struct.view* %164, i32 0, i32 0
  %166 = call i64 @watch_dirty(i32* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @REQ_REFRESH, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %168, %163, %157
  br label %171

171:                                              ; preds = %170, %155
  br label %172

172:                                              ; preds = %171, %147
  br label %173

173:                                              ; preds = %172, %132
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %175

175:                                              ; preds = %173, %44
  %176 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @argv_to_string(i32, i8*, i32, i8*) #2

declare dso_local i32 @argv_from_string_no_quotes(i8**, i32*, i8*) #2

declare dso_local i32 @argv_format(i32, i8***, i8**, i32, i32) #2

declare dso_local i32 @report(i8*) #2

declare dso_local i32 @run_prompt_command(%struct.view*, i8**) #2

declare dso_local i64 @argv_to_string_quoted(i8**, i8*, i32, i8*) #2

declare dso_local i64 @string_format(i8*, i8*, i8*, i8*) #2

declare dso_local i64 @prompt_yesno(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @open_external_viewer(i8**, i32, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @argv_free(i8**) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i64 @watch_dirty(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

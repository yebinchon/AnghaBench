; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_job_get.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_job_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_job_tree = type { i32 }
%struct.format_tree = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.format_job_tree* }
%struct.format_job = type { i8*, i8*, i64, i32, i64, i32*, i32*, i32, %struct.TYPE_2__* }

@format_jobs = common dso_local global %struct.format_job_tree zeroinitializer, align 4
@format_job_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"<'%s' not ready>\00", align 1
@FORMAT_FORCE = common dso_local global i32 0, align 4
@format_job_update = common dso_local global i32 0, align 4
@format_job_complete = common dso_local global i32 0, align 4
@JOB_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"<'%s' didn't start>\00", align 1
@FORMAT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.format_tree*, i8*)* @format_job_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_job_get(%struct.format_tree* %0, i8* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.format_job_tree*, align 8
  %6 = alloca %struct.format_job, align 8
  %7 = alloca %struct.format_job*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %12 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.format_job_tree* @format_jobs, %struct.format_job_tree** %5, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %18 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.format_job_tree*, %struct.format_job_tree** %20, align 8
  %22 = icmp ne %struct.format_job_tree* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %25 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.format_job_tree*, %struct.format_job_tree** %27, align 8
  store %struct.format_job_tree* %28, %struct.format_job_tree** %5, align 8
  br label %37

29:                                               ; preds = %16
  %30 = call %struct.format_job_tree* @xmalloc(i32 4)
  %31 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %32 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.format_job_tree* %30, %struct.format_job_tree** %34, align 8
  store %struct.format_job_tree* %30, %struct.format_job_tree** %5, align 8
  %35 = load %struct.format_job_tree*, %struct.format_job_tree** %5, align 8
  %36 = call i32 @RB_INIT(%struct.format_job_tree* %35)
  br label %37

37:                                               ; preds = %29, %23
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %40 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.format_job, %struct.format_job* %6, i32 0, i32 7
  store i32 %41, i32* %42, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds %struct.format_job, %struct.format_job* %6, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @format_job_tree, align 4
  %46 = load %struct.format_job_tree*, %struct.format_job_tree** %5, align 8
  %47 = call %struct.format_job* @RB_FIND(i32 %45, %struct.format_job_tree* %46, %struct.format_job* %6)
  store %struct.format_job* %47, %struct.format_job** %7, align 8
  %48 = icmp eq %struct.format_job* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %38
  %50 = call %struct.format_job* @xcalloc(i32 1, i32 72)
  store %struct.format_job* %50, %struct.format_job** %7, align 8
  %51 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %52 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.format_job*, %struct.format_job** %7, align 8
  %55 = getelementptr inbounds %struct.format_job, %struct.format_job* %54, i32 0, i32 8
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %57 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.format_job*, %struct.format_job** %7, align 8
  %60 = getelementptr inbounds %struct.format_job, %struct.format_job* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @xstrdup(i8* %61)
  %63 = load %struct.format_job*, %struct.format_job** %7, align 8
  %64 = getelementptr inbounds %struct.format_job, %struct.format_job* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.format_job*, %struct.format_job** %7, align 8
  %66 = getelementptr inbounds %struct.format_job, %struct.format_job* %65, i32 0, i32 6
  store i32* null, i32** %66, align 8
  %67 = load %struct.format_job*, %struct.format_job** %7, align 8
  %68 = getelementptr inbounds %struct.format_job, %struct.format_job* %67, i32 0, i32 1
  %69 = load %struct.format_job*, %struct.format_job** %7, align 8
  %70 = getelementptr inbounds %struct.format_job, %struct.format_job* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @xasprintf(i8** %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @format_job_tree, align 4
  %74 = load %struct.format_job_tree*, %struct.format_job_tree** %5, align 8
  %75 = load %struct.format_job*, %struct.format_job** %7, align 8
  %76 = call i32 @RB_INSERT(i32 %73, %struct.format_job_tree* %74, %struct.format_job* %75)
  br label %77

77:                                               ; preds = %49, %38
  %78 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = call i8* @format_expand(%struct.format_tree* %78, i8* %79)
  store i8* %80, i8** %9, align 8
  %81 = load %struct.format_job*, %struct.format_job** %7, align 8
  %82 = getelementptr inbounds %struct.format_job, %struct.format_job* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %77
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.format_job*, %struct.format_job** %7, align 8
  %88 = getelementptr inbounds %struct.format_job, %struct.format_job* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @strcmp(i8* %86, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %85, %77
  %93 = load %struct.format_job*, %struct.format_job** %7, align 8
  %94 = getelementptr inbounds %struct.format_job, %struct.format_job* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %9, align 8
  %99 = call i8* @xstrdup(i8* %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.format_job*, %struct.format_job** %7, align 8
  %102 = getelementptr inbounds %struct.format_job, %struct.format_job* %101, i32 0, i32 6
  store i32* %100, i32** %102, align 8
  store i32 1, i32* %10, align 4
  br label %109

103:                                              ; preds = %85
  %104 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %105 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FORMAT_FORCE, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %103, %92
  %110 = call i64 @time(i32* null)
  store i64 %110, i64* %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.format_job*, %struct.format_job** %7, align 8
  %115 = getelementptr inbounds %struct.format_job, %struct.format_job* %114, i32 0, i32 5
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.format_job*, %struct.format_job** %7, align 8
  %120 = getelementptr inbounds %struct.format_job, %struct.format_job* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @job_free(i32* %121)
  br label %123

123:                                              ; preds = %118, %113, %109
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load %struct.format_job*, %struct.format_job** %7, align 8
  %128 = getelementptr inbounds %struct.format_job, %struct.format_job* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %171

131:                                              ; preds = %126
  %132 = load %struct.format_job*, %struct.format_job** %7, align 8
  %133 = getelementptr inbounds %struct.format_job, %struct.format_job* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %171

137:                                              ; preds = %131, %123
  %138 = load i8*, i8** %9, align 8
  %139 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %140 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %139, i32 0, i32 1
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = call i32 @server_client_get_cwd(%struct.TYPE_2__* %141, i32* null)
  %143 = load i32, i32* @format_job_update, align 4
  %144 = load i32, i32* @format_job_complete, align 4
  %145 = load %struct.format_job*, %struct.format_job** %7, align 8
  %146 = load i32, i32* @JOB_NOWAIT, align 4
  %147 = call i32* @job_run(i8* %138, i32* null, i32 %142, i32 %143, i32 %144, i32* null, %struct.format_job* %145, i32 %146)
  %148 = load %struct.format_job*, %struct.format_job** %7, align 8
  %149 = getelementptr inbounds %struct.format_job, %struct.format_job* %148, i32 0, i32 5
  store i32* %147, i32** %149, align 8
  %150 = load %struct.format_job*, %struct.format_job** %7, align 8
  %151 = getelementptr inbounds %struct.format_job, %struct.format_job* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %137
  %155 = load %struct.format_job*, %struct.format_job** %7, align 8
  %156 = getelementptr inbounds %struct.format_job, %struct.format_job* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @free(i8* %157)
  %159 = load %struct.format_job*, %struct.format_job** %7, align 8
  %160 = getelementptr inbounds %struct.format_job, %struct.format_job* %159, i32 0, i32 1
  %161 = load %struct.format_job*, %struct.format_job** %7, align 8
  %162 = getelementptr inbounds %struct.format_job, %struct.format_job* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @xasprintf(i8** %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %154, %137
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.format_job*, %struct.format_job** %7, align 8
  %168 = getelementptr inbounds %struct.format_job, %struct.format_job* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.format_job*, %struct.format_job** %7, align 8
  %170 = getelementptr inbounds %struct.format_job, %struct.format_job* %169, i32 0, i32 4
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %165, %131, %126
  %172 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %173 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @FORMAT_STATUS, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load %struct.format_job*, %struct.format_job** %7, align 8
  %180 = getelementptr inbounds %struct.format_job, %struct.format_job* %179, i32 0, i32 3
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %171
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %185 = load %struct.format_job*, %struct.format_job** %7, align 8
  %186 = getelementptr inbounds %struct.format_job, %struct.format_job* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i8* @format_expand(%struct.format_tree* %184, i8* %187)
  ret i8* %188
}

declare dso_local %struct.format_job_tree* @xmalloc(i32) #1

declare dso_local i32 @RB_INIT(%struct.format_job_tree*) #1

declare dso_local %struct.format_job* @RB_FIND(i32, %struct.format_job_tree*, %struct.format_job*) #1

declare dso_local %struct.format_job* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*) #1

declare dso_local i32 @RB_INSERT(i32, %struct.format_job_tree*, %struct.format_job*) #1

declare dso_local i8* @format_expand(%struct.format_tree*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @job_free(i32*) #1

declare dso_local i32* @job_run(i8*, i32*, i32, i32, i32, i32*, %struct.format_job*, i32) #1

declare dso_local i32 @server_client_get_cwd(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

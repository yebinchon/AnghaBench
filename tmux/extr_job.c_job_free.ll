; ModuleID = '/home/carl/AnghaBench/tmux/extr_job.c_job_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_job.c_job_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32, i32, i32*, i32*, i32 (i32*)*, %struct.job* }

@.str = private unnamed_addr constant [16 x i8] c"free job %p: %s\00", align 1
@entry = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @job_free(%struct.job* %0) #0 {
  %2 = alloca %struct.job*, align 8
  store %struct.job* %0, %struct.job** %2, align 8
  %3 = load %struct.job*, %struct.job** %2, align 8
  %4 = load %struct.job*, %struct.job** %2, align 8
  %5 = getelementptr inbounds %struct.job, %struct.job* %4, i32 0, i32 5
  %6 = load %struct.job*, %struct.job** %5, align 8
  %7 = call i32 @log_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.job* %3, %struct.job* %6)
  %8 = load %struct.job*, %struct.job** %2, align 8
  %9 = load i32, i32* @entry, align 4
  %10 = call i32 @LIST_REMOVE(%struct.job* %8, i32 %9)
  %11 = load %struct.job*, %struct.job** %2, align 8
  %12 = getelementptr inbounds %struct.job, %struct.job* %11, i32 0, i32 5
  %13 = load %struct.job*, %struct.job** %12, align 8
  %14 = call i32 @free(%struct.job* %13)
  %15 = load %struct.job*, %struct.job** %2, align 8
  %16 = getelementptr inbounds %struct.job, %struct.job* %15, i32 0, i32 4
  %17 = load i32 (i32*)*, i32 (i32*)** %16, align 8
  %18 = icmp ne i32 (i32*)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.job*, %struct.job** %2, align 8
  %21 = getelementptr inbounds %struct.job, %struct.job* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.job*, %struct.job** %2, align 8
  %26 = getelementptr inbounds %struct.job, %struct.job* %25, i32 0, i32 4
  %27 = load i32 (i32*)*, i32 (i32*)** %26, align 8
  %28 = load %struct.job*, %struct.job** %2, align 8
  %29 = getelementptr inbounds %struct.job, %struct.job* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 %27(i32* %30)
  br label %32

32:                                               ; preds = %24, %19, %1
  %33 = load %struct.job*, %struct.job** %2, align 8
  %34 = getelementptr inbounds %struct.job, %struct.job* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.job*, %struct.job** %2, align 8
  %39 = getelementptr inbounds %struct.job, %struct.job* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SIGTERM, align 4
  %42 = call i32 @kill(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.job*, %struct.job** %2, align 8
  %45 = getelementptr inbounds %struct.job, %struct.job* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.job*, %struct.job** %2, align 8
  %50 = getelementptr inbounds %struct.job, %struct.job* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bufferevent_free(i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.job*, %struct.job** %2, align 8
  %55 = getelementptr inbounds %struct.job, %struct.job* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.job*, %struct.job** %2, align 8
  %60 = getelementptr inbounds %struct.job, %struct.job* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.job*, %struct.job** %2, align 8
  %65 = call i32 @free(%struct.job* %64)
  ret void
}

declare dso_local i32 @log_debug(i8*, %struct.job*, %struct.job*) #1

declare dso_local i32 @LIST_REMOVE(%struct.job*, i32) #1

declare dso_local i32 @free(%struct.job*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @bufferevent_free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

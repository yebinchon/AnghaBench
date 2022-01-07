; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_dump.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_job.c_job_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [81 x i8] c"%s-> Job %u:\0A%s\09Action: %s -> %s\0A%s\09State: %s\0A%s\09Irreversible: %s\0A%s\09May GC: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @job_dump(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @assert(%struct.TYPE_10__* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_10__* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strempty(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @job_type_to_string(i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @job_state_to_string(i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @yes_no(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = call i32 @job_may_gc(%struct.TYPE_10__* %39)
  %41 = call i8* @yes_no(i32 %40)
  %42 = call i32 @fprintf(%struct.TYPE_10__* %13, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %17, i8* %18, i8* %23, i8* %27, i8* %28, i8* %32, i8* %33, i8* %37, i8* %38, i8* %41)
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i8* @strempty(i8*) #1

declare dso_local i32 @fprintf(%struct.TYPE_10__*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @job_type_to_string(i32) #1

declare dso_local i8* @job_state_to_string(i32) #1

declare dso_local i8* @yes_no(i32) #1

declare dso_local i32 @job_may_gc(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

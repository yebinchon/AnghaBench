; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_exec_cpu_sched_prio.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_exec_cpu_sched_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to parse CPU scheduling priority, ignoring: %s\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"CPU scheduling priority is out of range, ignoring: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_exec_cpu_sched_prio(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_2__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %22, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %17, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @assert(i8* %35)
  %37 = load i8*, i8** %19, align 8
  %38 = call i32 @safe_atoi(i8* %37, i32* %23)
  store i32 %38, i32* %26, align 4
  %39 = load i32, i32* %26, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %10
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* @LOG_ERR, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %26, align 4
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 @log_syntax(i8* %42, i32 %43, i8* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 0, i32* %11, align 4
  br label %78

49:                                               ; preds = %10
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sched_get_priority_min(i32 %52)
  store i32 %53, i32* %24, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sched_get_priority_max(i32 %56)
  store i32 %57, i32* %25, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i32, i32* %24, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %25, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %49
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* @LOG_ERR, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 @log_syntax(i8* %66, i32 %67, i8* %68, i32 %69, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  store i32 0, i32* %11, align 4
  br label %78

72:                                               ; preds = %61
  %73 = load i32, i32* %23, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %72, %65, %41
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @safe_atoi(i8*, i32*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @sched_get_priority_min(i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

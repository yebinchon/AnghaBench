; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_new_input_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_new_input_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_config = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to allocate input config\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"new_input_config(%s)\00", align 1
@INT_MIN = common dso_local global i8* null, align 8
@FLT_MIN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.input_config* @new_input_config(i8* %0) #0 {
  %2 = alloca %struct.input_config*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.input_config*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call %struct.input_config* @calloc(i32 1, i32 176)
  store %struct.input_config* %5, %struct.input_config** %4, align 8
  %6 = load %struct.input_config*, %struct.input_config** %4, align 8
  %7 = icmp ne %struct.input_config* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @SWAY_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @sway_log(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.input_config* null, %struct.input_config** %2, align 8
  br label %88

11:                                               ; preds = %1
  %12 = load i32, i32* @SWAY_DEBUG, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i32, i8*, ...) @sway_log(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strdup(i8* %15)
  %17 = load %struct.input_config*, %struct.input_config** %4, align 8
  %18 = getelementptr inbounds %struct.input_config, %struct.input_config* %17, i32 0, i32 21
  store i32 %16, i32* %18, align 8
  %19 = icmp ne i32 %16, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = load %struct.input_config*, %struct.input_config** %4, align 8
  %22 = call i32 @free(%struct.input_config* %21)
  %23 = load i32, i32* @SWAY_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @sway_log(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.input_config* null, %struct.input_config** %2, align 8
  br label %88

25:                                               ; preds = %11
  %26 = load %struct.input_config*, %struct.input_config** %4, align 8
  %27 = getelementptr inbounds %struct.input_config, %struct.input_config* %26, i32 0, i32 20
  store i32* null, i32** %27, align 8
  %28 = load i8*, i8** @INT_MIN, align 8
  %29 = load %struct.input_config*, %struct.input_config** %4, align 8
  %30 = getelementptr inbounds %struct.input_config, %struct.input_config* %29, i32 0, i32 19
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @INT_MIN, align 8
  %32 = load %struct.input_config*, %struct.input_config** %4, align 8
  %33 = getelementptr inbounds %struct.input_config, %struct.input_config* %32, i32 0, i32 18
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @INT_MIN, align 8
  %35 = load %struct.input_config*, %struct.input_config** %4, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 17
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @INT_MIN, align 8
  %38 = load %struct.input_config*, %struct.input_config** %4, align 8
  %39 = getelementptr inbounds %struct.input_config, %struct.input_config* %38, i32 0, i32 16
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @INT_MIN, align 8
  %41 = load %struct.input_config*, %struct.input_config** %4, align 8
  %42 = getelementptr inbounds %struct.input_config, %struct.input_config* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @INT_MIN, align 8
  %44 = load %struct.input_config*, %struct.input_config** %4, align 8
  %45 = getelementptr inbounds %struct.input_config, %struct.input_config* %44, i32 0, i32 14
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @INT_MIN, align 8
  %47 = load %struct.input_config*, %struct.input_config** %4, align 8
  %48 = getelementptr inbounds %struct.input_config, %struct.input_config* %47, i32 0, i32 13
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @INT_MIN, align 8
  %50 = load %struct.input_config*, %struct.input_config** %4, align 8
  %51 = getelementptr inbounds %struct.input_config, %struct.input_config* %50, i32 0, i32 12
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @INT_MIN, align 8
  %53 = load %struct.input_config*, %struct.input_config** %4, align 8
  %54 = getelementptr inbounds %struct.input_config, %struct.input_config* %53, i32 0, i32 11
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @INT_MIN, align 8
  %56 = load %struct.input_config*, %struct.input_config** %4, align 8
  %57 = getelementptr inbounds %struct.input_config, %struct.input_config* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @FLT_MIN, align 8
  %59 = load %struct.input_config*, %struct.input_config** %4, align 8
  %60 = getelementptr inbounds %struct.input_config, %struct.input_config* %59, i32 0, i32 9
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @FLT_MIN, align 8
  %62 = load %struct.input_config*, %struct.input_config** %4, align 8
  %63 = getelementptr inbounds %struct.input_config, %struct.input_config* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @INT_MIN, align 8
  %65 = load %struct.input_config*, %struct.input_config** %4, align 8
  %66 = getelementptr inbounds %struct.input_config, %struct.input_config* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @INT_MIN, align 8
  %68 = load %struct.input_config*, %struct.input_config** %4, align 8
  %69 = getelementptr inbounds %struct.input_config, %struct.input_config* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @INT_MIN, align 8
  %71 = load %struct.input_config*, %struct.input_config** %4, align 8
  %72 = getelementptr inbounds %struct.input_config, %struct.input_config* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @INT_MIN, align 8
  %74 = load %struct.input_config*, %struct.input_config** %4, align 8
  %75 = getelementptr inbounds %struct.input_config, %struct.input_config* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @INT_MIN, align 8
  %77 = load %struct.input_config*, %struct.input_config** %4, align 8
  %78 = getelementptr inbounds %struct.input_config, %struct.input_config* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @INT_MIN, align 8
  %80 = load %struct.input_config*, %struct.input_config** %4, align 8
  %81 = getelementptr inbounds %struct.input_config, %struct.input_config* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @INT_MIN, align 8
  %83 = load %struct.input_config*, %struct.input_config** %4, align 8
  %84 = getelementptr inbounds %struct.input_config, %struct.input_config* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.input_config*, %struct.input_config** %4, align 8
  %86 = getelementptr inbounds %struct.input_config, %struct.input_config* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.input_config*, %struct.input_config** %4, align 8
  store %struct.input_config* %87, %struct.input_config** %2, align 8
  br label %88

88:                                               ; preds = %25, %20, %8
  %89 = load %struct.input_config*, %struct.input_config** %2, align 8
  ret %struct.input_config* %89
}

declare dso_local %struct.input_config* @calloc(i32, i32) #1

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(%struct.input_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

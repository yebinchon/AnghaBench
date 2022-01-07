; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_get_version.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_ipc-json.c_ipc_json_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@SWAY_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"human_readable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"variant\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sway\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"minor\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"patch\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"loaded_config_file_name\00", align 1
@config = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ipc_json_get_version() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32* (...) @json_object_new_object()
  store i32* %5, i32** %4, align 8
  %6 = load i8*, i8** @SWAY_VERSION, align 8
  %7 = call i32 @sscanf(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %1, i32* %2, i32* %3)
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** @SWAY_VERSION, align 8
  %10 = call i32 @json_object_new_string(i8* %9)
  %11 = call i32 @json_object_object_add(i32* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @json_object_new_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @json_object_object_add(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @json_object_new_int(i32 %16)
  %18 = call i32 @json_object_object_add(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @json_object_new_int(i32 %20)
  %22 = call i32 @json_object_object_add(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @json_object_new_int(i32 %24)
  %26 = call i32 @json_object_object_add(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @config, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @json_object_new_string(i8* %30)
  %32 = call i32 @json_object_object_add(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %4, align 8
  ret i32* %33
}

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32) #1

declare dso_local i32 @json_object_new_string(i8*) #1

declare dso_local i32 @json_object_new_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

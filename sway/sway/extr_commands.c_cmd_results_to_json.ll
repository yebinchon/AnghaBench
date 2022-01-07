; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_commands.c_cmd_results_to_json.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_commands.c_cmd_results_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.cmd_results** }
%struct.cmd_results = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"success\00", align 1
@CMD_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"parse_error\00", align 1
@CMD_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cmd_results_to_json(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = call i32* (...) @json_object_new_array()
  store i32* %9, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.cmd_results**, %struct.cmd_results*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cmd_results*, %struct.cmd_results** %19, i64 %21
  %23 = load %struct.cmd_results*, %struct.cmd_results** %22, align 8
  store %struct.cmd_results* %23, %struct.cmd_results** %5, align 8
  %24 = call i32* (...) @json_object_new_object()
  store i32* %24, i32** %6, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  %27 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CMD_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @json_object_new_boolean(i32 %31)
  %33 = call i32 @json_object_object_add(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  %35 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %16
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  %41 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CMD_INVALID, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @json_object_new_boolean(i32 %45)
  %47 = call i32 @json_object_object_add(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  %50 = getelementptr inbounds %struct.cmd_results, %struct.cmd_results* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @json_object_new_string(i64 %51)
  %53 = call i32 @json_object_object_add(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %38, %16
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @json_object_array_add(i32* %55, i32* %56)
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %10

61:                                               ; preds = %10
  %62 = load i32*, i32** %3, align 8
  %63 = call i8* @json_object_to_json_string(i32* %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i8* @strdup(i8* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @json_object_put(i32* %66)
  %68 = load i8*, i8** %8, align 8
  ret i8* %68
}

declare dso_local i32* @json_object_new_array(...) #1

declare dso_local i32* @json_object_new_object(...) #1

declare dso_local i32 @json_object_object_add(i32*, i8*, i32) #1

declare dso_local i32 @json_object_new_boolean(i32) #1

declare dso_local i32 @json_object_new_string(i64) #1

declare dso_local i32 @json_object_array_add(i32*, i32*) #1

declare dso_local i8* @json_object_to_json_string(i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @json_object_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_cmd_resize.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_cmd_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sway_container* }
%struct.sway_container = type { i32 }
%struct.cmd_results = type { i32 }

@root = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Can't run this command while there's no outputs connected.\00", align 1
@config = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot resize nothing\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"grow\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@__const.cmd_resize.usage = private unnamed_addr constant [86 x i8] c"Expected 'resize <shrink|grow> <width|height|up|down|left|right> [<amount>] [px|ppt]'\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmd_results* @cmd_resize(i32 %0, i8** %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca %struct.cmd_results*, align 8
  %8 = alloca [86 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @root, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @CMD_INVALID, align 4
  %17 = call %struct.cmd_results* @cmd_results_new(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %17, %struct.cmd_results** %3, align 8
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @config, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.sway_container*, %struct.sway_container** %21, align 8
  store %struct.sway_container* %22, %struct.sway_container** %6, align 8
  %23 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %24 = icmp ne %struct.sway_container* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @CMD_INVALID, align 4
  %27 = call %struct.cmd_results* @cmd_results_new(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cmd_results* %27, %struct.cmd_results** %3, align 8
  br label %76

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %31 = call %struct.cmd_results* @checkarg(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 2)
  store %struct.cmd_results* %31, %struct.cmd_results** %7, align 8
  %32 = icmp ne %struct.cmd_results* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load %struct.cmd_results*, %struct.cmd_results** %7, align 8
  store %struct.cmd_results* %34, %struct.cmd_results** %3, align 8
  br label %76

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = call %struct.cmd_results* @cmd_resize_set(i32 %43, i8** %45)
  store %struct.cmd_results* %46, %struct.cmd_results** %3, align 8
  br label %76

47:                                               ; preds = %35
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcasecmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = call %struct.cmd_results* @cmd_resize_adjust(i32 %55, i8** %57, i32 1)
  store %struct.cmd_results* %58, %struct.cmd_results** %3, align 8
  br label %76

59:                                               ; preds = %47
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @strcasecmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = call %struct.cmd_results* @cmd_resize_adjust(i32 %67, i8** %69, i32 -1)
  store %struct.cmd_results* %70, %struct.cmd_results** %3, align 8
  br label %76

71:                                               ; preds = %59
  %72 = bitcast [86 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %72, i8* align 16 getelementptr inbounds ([86 x i8], [86 x i8]* @__const.cmd_resize.usage, i32 0, i32 0), i64 86, i1 false)
  %73 = load i32, i32* @CMD_INVALID, align 4
  %74 = getelementptr inbounds [86 x i8], [86 x i8]* %8, i64 0, i64 0
  %75 = call %struct.cmd_results* @cmd_results_new(i32 %73, i8* %74)
  store %struct.cmd_results* %75, %struct.cmd_results** %3, align 8
  br label %76

76:                                               ; preds = %71, %65, %53, %41, %33, %25, %15
  %77 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %77
}

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.cmd_results* @cmd_resize_set(i32, i8**) #1

declare dso_local %struct.cmd_results* @cmd_resize_adjust(i32, i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

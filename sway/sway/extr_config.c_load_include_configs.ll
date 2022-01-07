; ModuleID = '/home/carl/AnghaBench/sway/sway/extr_config.c_load_include_configs.c'
source_filename = "/home/carl/AnghaBench/sway/sway/extr_config.c_load_include_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_config = type { i32 }
%struct.swaynag_instance = type { i32 }
%struct.TYPE_4__ = type { i8**, i64 }

@SWAY_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to change working directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_include_configs(i8* %0, %struct.sway_config* %1, %struct.swaynag_instance* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_config*, align 8
  %6 = alloca %struct.swaynag_instance*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sway_config* %1, %struct.sway_config** %5, align 8
  store %struct.swaynag_instance* %2, %struct.swaynag_instance** %6, align 8
  %13 = call i8* @getcwd(i32* null, i32 0)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.sway_config*, %struct.sway_config** %5, align 8
  %15 = getelementptr inbounds %struct.sway_config, %struct.sway_config* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @strdup(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @dirname(i8* %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @chdir(i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @SWAY_ERROR, align 4
  %25 = call i32 @sway_log(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %60

26:                                               ; preds = %3
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @wordexp(i8* %27, %struct.TYPE_4__* %10, i32 0)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  store i8** %32, i8*** %11, align 8
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %47, %30
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i8**, i8*** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.sway_config*, %struct.sway_config** %5, align 8
  %45 = load %struct.swaynag_instance*, %struct.swaynag_instance** %6, align 8
  %46 = call i32 @load_include_config(i8* %42, i8* %43, %struct.sway_config* %44, %struct.swaynag_instance* %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %33

50:                                               ; preds = %33
  %51 = call i32 @wordfree(%struct.TYPE_4__* %10)
  br label %52

52:                                               ; preds = %50, %26
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @chdir(i8* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @SWAY_ERROR, align 4
  %58 = call i32 @sway_log(i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %23
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @free(i8* %63)
  ret void
}

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i64 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @load_include_config(i8*, i8*, %struct.sway_config*, %struct.swaynag_instance*) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

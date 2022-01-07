; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_load_configuration.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_load_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type opaque

@.str = private unnamed_addr constant [38 x i8] c"Failed to parse commandline arguments\00", align 1
@arg_default_unit = common dso_local global i64 0, align 8
@SPECIAL_DEFAULT_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to set default unit\00", align 1
@arg_show_status = common dso_local global i64 0, align 8
@_SHOW_STATUS_INVALID = common dso_local global i64 0, align 8
@SHOW_STATUS_YES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.rlimit*, %struct.rlimit*, i8**)* @load_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_configuration(i32 %0, i8** %1, %struct.rlimit* %2, %struct.rlimit* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.rlimit*, align 8
  %10 = alloca %struct.rlimit*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.rlimit* %2, %struct.rlimit** %9, align 8
  store %struct.rlimit* %3, %struct.rlimit** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %14 = bitcast %struct.rlimit* %13 to i8**
  %15 = call i32 @assert(i8** %14)
  %16 = load %struct.rlimit*, %struct.rlimit** %10, align 8
  %17 = bitcast %struct.rlimit* %16 to i8**
  %18 = call i32 @assert(i8** %17)
  %19 = load i8**, i8*** %11, align 8
  %20 = call i32 @assert(i8** %19)
  %21 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %22 = bitcast %struct.rlimit* %21 to i8**
  %23 = load %struct.rlimit*, %struct.rlimit** %10, align 8
  %24 = bitcast %struct.rlimit* %23 to i8**
  %25 = call i32 @parse_configuration(i8** %22, i8** %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i8**, i8*** %8, align 8
  %28 = call i32 @parse_argv(i32 %26, i8** %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %53

34:                                               ; preds = %5
  %35 = load i64, i64* @arg_default_unit, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @SPECIAL_DEFAULT_TARGET, align 4
  %39 = call i64 @strdup(i32 %38)
  store i64 %39, i64* @arg_default_unit, align 8
  %40 = load i64, i64* @arg_default_unit, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %43, align 8
  %44 = call i32 (...) @log_oom()
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i64, i64* @arg_show_status, align 8
  %48 = load i64, i64* @_SHOW_STATUS_INVALID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @SHOW_STATUS_YES, align 8
  store i64 %51, i64* @arg_show_status, align 8
  br label %52

52:                                               ; preds = %50, %46
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %42, %31
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @parse_configuration(i8**, i8**) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i32 @log_oom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

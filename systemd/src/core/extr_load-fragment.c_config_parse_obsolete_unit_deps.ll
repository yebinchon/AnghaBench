; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_obsolete_unit_deps.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_load-fragment.c_config_parse_obsolete_unit_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Unit dependency type %s= is obsolete, replacing by %s=, please update your unit file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_obsolete_unit_deps(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* @LOG_WARNING, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i8*, i8** %16, align 8
  %26 = load i32, i32* %17, align 4
  %27 = call i32 @unit_dependency_to_string(i32 %26)
  %28 = call i32 @log_syntax(i8* %21, i32 %22, i8* %23, i32 %24, i32 0, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i8*, i8** %18, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = load i8*, i8** %20, align 8
  %39 = call i32 @config_parse_unit_deps(i8* %29, i8* %30, i32 %31, i8* %32, i32 %33, i8* %34, i32 %35, i8* %36, i8* %37, i8* %38)
  ret i32 %39
}

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @unit_dependency_to_string(i32) #1

declare dso_local i32 @config_parse_unit_deps(i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

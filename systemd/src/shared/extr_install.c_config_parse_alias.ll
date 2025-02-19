; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_install.c_config_parse_alias.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_install.c_config_parse_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Alias= is not allowed for %s units, ignoring.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*)* @config_parse_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_parse_alias(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i32, align 4
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
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @assert(i8* %25)
  %27 = load i8*, i8** %17, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %19, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @unit_name_to_type(i8* %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = call i32 @unit_type_may_alias(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %10
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %22, align 4
  %42 = call i32 @unit_type_to_string(i32 %41)
  %43 = call i32 @log_syntax(i8* %37, i32 %38, i8* %39, i32 %40, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %11, align 4
  br label %56

44:                                               ; preds = %10
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i8*, i8** %15, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %20, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = call i32 @config_parse_strv(i8* %45, i8* %46, i32 %47, i8* %48, i32 %49, i8* %50, i32 %51, i8* %52, i8* %53, i8* %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %44, %36
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @unit_name_to_type(i8*) #1

declare dso_local i32 @unit_type_may_alias(i32) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @unit_type_to_string(i32) #1

declare dso_local i32 @config_parse_strv(i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

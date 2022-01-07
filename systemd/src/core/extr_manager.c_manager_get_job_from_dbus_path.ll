; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_get_job_from_dbus_path.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_get_job_from_dbus_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"/org/freedesktop/systemd1/job/\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_get_job_from_dbus_path(i32** %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = bitcast i32** %12 to i8*
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i32**, i32*** %7, align 8
  %18 = bitcast i32** %17 to i8*
  %19 = call i32 @assert(i8* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @startswith(i8* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @safe_atou(i8* %28, i32* %9)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @manager_get_job(i32** %35, i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load i32*, i32** %10, align 8
  %45 = load i32**, i32*** %7, align 8
  store i32* %44, i32** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %40, %32, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @startswith(i8*, i8*) #1

declare dso_local i32 @safe_atou(i8*, i32*) #1

declare dso_local i32* @manager_get_job(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

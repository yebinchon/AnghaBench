; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_path-lookup.c_acquire_transient_dir.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_path-lookup.c_acquire_transient_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIT_FILE_SYSTEM = common dso_local global i64 0, align 8
@UNIT_FILE_USER = common dso_local global i32 0, align 4
@UNIT_FILE_GLOBAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"transient\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"/run/systemd/transient\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"/systemd/transient\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i8**)* @acquire_transient_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_transient_dir(i64 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = call i32 @assert(i8** %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @UNIT_FILE_SYSTEM, align 8
  %13 = load i32, i32* @UNIT_FILE_USER, align 4
  %14 = load i64, i64* @UNIT_FILE_GLOBAL, align 8
  %15 = call i8** @IN_SET(i64 %11, i64 %12, i32 %13, i64 %14)
  %16 = call i32 @assert(i8** %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @UNIT_FILE_GLOBAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @path_join(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  br label %39

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @UNIT_FILE_SYSTEM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i8* @strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %8, align 8
  br label %38

35:                                               ; preds = %29
  %36 = load i8**, i8*** %7, align 8
  %37 = call i32 @xdg_user_runtime_dir(i8** %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %42, %35, %20
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i8** @IN_SET(i64, i64, i32, i64) #1

declare dso_local i8* @path_join(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @xdg_user_runtime_dir(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

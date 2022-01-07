; ModuleID = '/home/carl/AnghaBench/systemd/src/portable/extr_portablectl.c_determine_image.c'
source_filename = "/home/carl/AnghaBench/systemd/src/portable/extr_portablectl.c_determine_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_quiet = common dso_local global i32 0, align 4
@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [188 x i8] c"Ambiguous invocation: current working directory contains file matching non-path argument '%s', ignoring. Prefix argument with './' to force reference to file in current working directory.\00", align 1
@arg_transport = common dso_local global i64 0, align 8
@BUS_TRANSPORT_LOCAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Operations on images by path not supported when connecting to remote systems.\00", align 1
@CHASE_TRAIL_SLASH = common dso_local global i32 0, align 4
@CHASE_NONEXISTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Cannot normalize specified image path '%s': %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @determine_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_image(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @image_name_is_valid(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i32, i32* @arg_quiet, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @F_OK, align 4
  %19 = call i64 @laccess(i8* %17, i32 %18)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @log_warning(i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %16, %13
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (...) @log_oom()
  store i32 %30, i32* %4, align 4
  br label %62

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = load i8**, i8*** %7, align 8
  store i8* %32, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %62

34:                                               ; preds = %3
  %35 = load i64, i64* @arg_transport, align 8
  %36 = load i64, i64* @BUS_TRANSPORT_LOCAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = call i32 @SYNTHETIC_ERRNO(i32 %39)
  %41 = call i32 (i32, i8*, ...) @log_error_errno(i32 %40, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @CHASE_TRAIL_SLASH, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @CHASE_NONEXISTENT, align 4
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = or i32 %44, %51
  %53 = load i8**, i8*** %7, align 8
  %54 = call i32 @chase_symlinks(i8* %43, i32* null, i32 %52, i8** %53, i32* null)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 (i32, i8*, ...) @log_error_errno(i32 %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %57, %38, %31, %29
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @image_name_is_valid(i8*) #1

declare dso_local i64 @laccess(i8*, i32) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @chase_symlinks(i8*, i32*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

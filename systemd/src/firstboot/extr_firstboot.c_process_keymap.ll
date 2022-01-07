; ModuleID = '/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_keymap.c'
source_filename = "/home/carl/AnghaBench/systemd/src/firstboot/extr_firstboot.c_process_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_root = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"/etc/vconsole.conf\00", align 1
@F_OK = common dso_local global i32 0, align 4
@arg_copy_keymap = common dso_local global i64 0, align 8
@COPY_REFLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to copy %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s copied.\00", align 1
@arg_keymap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"KEYMAP=\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to create the parent directory of %s: %m\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Failed to write %s: %m\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s written.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @process_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_keymap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = load i64, i64* @arg_root, align 8
  %6 = call i8* @prefix_roota(i64 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @F_OK, align 4
  %9 = call i64 @laccess(i8* %7, i32 %8)
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %81

12:                                               ; preds = %0
  %13 = load i64, i64* @arg_copy_keymap, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64, i64* @arg_root, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @mkdir_parents(i8* %19, i32 493)
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @COPY_REFLINK, align 4
  %23 = call i32 @copy_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21, i32 0, i32 420, i32 0, i32 0, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @log_error_errno(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %1, align 4
  br label %81

35:                                               ; preds = %28
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @log_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 0, i32* %1, align 4
  br label %81

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38, %15, %12
  %40 = call i32 (...) @prompt_keymap()
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %81

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %1, align 4
  br label %81

51:                                               ; preds = %46
  %52 = load i32, i32* @arg_keymap, align 4
  %53 = call i64 @isempty(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %81

56:                                               ; preds = %51
  %57 = load i32, i32* @arg_keymap, align 4
  %58 = call i32 @strjoina(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = call i8** @STRV_MAKE(i32 %58)
  store i8** %59, i8*** %3, align 8
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 @mkdir_parents(i8* %60, i32 493)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = load i8*, i8** %2, align 8
  %67 = call i32 @log_error_errno(i32 %65, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  store i32 %67, i32* %1, align 4
  br label %81

68:                                               ; preds = %56
  %69 = load i8*, i8** %2, align 8
  %70 = load i8**, i8*** %3, align 8
  %71 = call i32 @write_env_file(i8* %69, i8** %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @log_error_errno(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  store i32 %77, i32* %1, align 4
  br label %81

78:                                               ; preds = %68
  %79 = load i8*, i8** %2, align 8
  %80 = call i32 @log_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  store i32 0, i32* %1, align 4
  br label %81

81:                                               ; preds = %78, %74, %64, %55, %49, %45, %35, %31, %11
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i8* @prefix_roota(i64, i8*) #1

declare dso_local i64 @laccess(i8*, i32) #1

declare dso_local i32 @mkdir_parents(i8*, i32) #1

declare dso_local i32 @copy_file(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i32 @prompt_keymap(...) #1

declare dso_local i64 @isempty(i32) #1

declare dso_local i8** @STRV_MAKE(i32) #1

declare dso_local i32 @strjoina(i8*, i32) #1

declare dso_local i32 @write_env_file(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_install_variables.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/extr_bootctl.c_install_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"Not booted with EFI, skipping EFI variable setup.\00", align 1
@F_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot access \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Failed to access EFI variables. Is the \22efivarfs\22 filesystem mounted?\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to determine current boot order: %m\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Linux Boot Manager\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to create EFI Boot variable entry: %m\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Created EFI boot entry \22Linux Boot Manager\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i8*, i32)* @install_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_variables(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = call i32 (...) @is_efi_boot()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = call i32 @log_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %80

23:                                               ; preds = %7
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i8* @prefix_roota(i8* %24, i8* %25)
  store i8* %26, i8** %16, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i32, i32* @F_OK, align 4
  %29 = call i64 @access(i8* %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %80

36:                                               ; preds = %31
  %37 = load i32, i32* @errno, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 (i32, i8*, ...) @log_error_errno(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %8, align 4
  br label %80

40:                                               ; preds = %23
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = call i32 @find_slot(i32 %41, i8* %42, i32* %17)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i32, i8*, ...) @log_error_errno(i32 %47, i8* %53)
  store i32 %54, i32* %8, align 4
  br label %80

55:                                               ; preds = %40
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @efi_add_boot_option(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %66, i8* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* %18, align 4
  %73 = call i32 (i32, i8*, ...) @log_error_errno(i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  store i32 %73, i32* %8, align 4
  br label %80

74:                                               ; preds = %61
  %75 = call i32 @log_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %58
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @insert_into_order(i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %71, %46, %36, %35, %21
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @is_efi_boot(...) #1

declare dso_local i32 @log_warning(i8*) #1

declare dso_local i8* @prefix_roota(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, ...) #1

declare dso_local i32 @find_slot(i32, i8*, i32*) #1

declare dso_local i32 @efi_add_boot_option(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @insert_into_order(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

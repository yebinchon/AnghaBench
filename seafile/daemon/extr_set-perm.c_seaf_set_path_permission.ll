; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_set-perm.c_seaf_set_path_permission.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_set-perm.c_seaf_set_path_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to stat %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SEAF_PATH_PERM_RO = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@SEAF_PATH_PERM_RW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to chmod %s to %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_set_path_permission(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @stat(i8* %10, %struct.stat* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 (i8*, i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %16)
  store i32 -1, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @SEAF_PATH_PERM_RO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32, i32* @S_IWUSR, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %38

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @SEAF_PATH_PERM_RW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @S_IWUSR, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @chmod(i8* %39, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 (i8*, i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45, i32 %47)
  store i32 -1, i32* %4, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %43, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

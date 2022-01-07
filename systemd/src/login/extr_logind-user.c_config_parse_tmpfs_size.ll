; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-user.c_config_parse_tmpfs_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-user.c_config_parse_tmpfs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to parse size value '%s', ignoring: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_parse_tmpfs_size(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i8* %7, i8* %8, i8* %9) #0 {
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
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
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
  %25 = load i8*, i8** %20, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %22, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @assert(i8* %27)
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @assert(i8* %29)
  %31 = load i8*, i8** %19, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load i8*, i8** %20, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @parse_permille(i8* %35)
  store i32 %36, i32* %23, align 4
  %37 = load i32, i32* %23, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %10
  %40 = load i32, i32* %23, align 4
  %41 = icmp slt i32 %40, 1000
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %23, align 4
  %44 = call i64 @physical_memory_scale(i32 %43, i32 1000)
  %45 = load i64*, i64** %22, align 8
  store i64 %44, i64* %45, align 8
  br label %76

46:                                               ; preds = %39, %10
  %47 = load i8*, i8** %19, align 8
  %48 = call i32 @parse_size(i8* %47, i32 1024, i64* %24)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i64, i64* %24, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %24, align 8
  %56 = load i64, i64* %24, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %51
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %23, align 4
  br label %61

61:                                               ; preds = %58, %54, %46
  %62 = load i32, i32* %23, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = load i32, i32* @LOG_ERR, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 @log_syntax(i8* %65, i32 %66, i8* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %70)
  store i32 0, i32* %11, align 4
  br label %77

72:                                               ; preds = %61
  %73 = load i64, i64* %24, align 8
  %74 = call i64 @PAGE_ALIGN(i64 %73)
  %75 = load i64*, i64** %22, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %72, %42
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @parse_permille(i8*) #1

declare dso_local i64 @physical_memory_scale(i32, i32) #1

declare dso_local i32 @parse_size(i8*, i32, i64*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

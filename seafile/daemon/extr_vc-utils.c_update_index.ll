; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_update_index.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_update_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s.shadow\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to open shadow index: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to write shadow index: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to update index errno=%d %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_index(%struct.index_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @SEAF_PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @SEAF_PATH_MAX, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @O_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_BINARY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @seaf_util_create(i8* %14, i32 %24, i32 438)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.index_state*, %struct.index_state** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @write_index(%struct.index_state* %33, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @strerror(i32 %38)
  %40 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @close(i32 %41)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @close(i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @seaf_util_rename(i8* %14, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %53)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %50, %37, %28
  %57 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @seaf_util_create(i8*, i32, i32) #2

declare dso_local i32 @seaf_warning(i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @write_index(%struct.index_state*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @seaf_util_rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_add_match_this_boot.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_add_match_this_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.add_match_this_boot.match = private unnamed_addr constant [42 x i8] c"_BOOT_ID=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [42 x i8] c"Failed to get boot id of container %s: %m\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to get boot id: %m\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to add match: %m\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to add conjunction: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_match_this_boot(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [42 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast [42 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([42 x i8], [42 x i8]* @__const.add_match_this_boot.match, i32 0, i32 0), i64 42, i1 false)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @get_boot_id_for_machine(i8* %15, i32* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i32, i8*, ...) @log_error_errno(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %14
  br label %32

24:                                               ; preds = %2
  %25 = call i32 @sd_id128_get_boot(i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, ...) @log_error_errno(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 9
  %36 = call i32 @sd_id128_to_string(i32 %33, i8* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [42 x i8], [42 x i8]* %6, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @sd_journal_add_match(i32* %37, i8* %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, ...) @log_error_errno(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %32
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @sd_journal_add_conjunction(i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i32, i8*, ...) @log_error_errno(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %44, %28, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32*) #2

declare dso_local i32 @get_boot_id_for_machine(i8*, i32*) #2

declare dso_local i32 @log_error_errno(i32, i8*, ...) #2

declare dso_local i32 @sd_id128_get_boot(i32*) #2

declare dso_local i32 @sd_id128_to_string(i32, i8*) #2

declare dso_local i32 @sd_journal_add_match(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sd_journal_add_conjunction(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

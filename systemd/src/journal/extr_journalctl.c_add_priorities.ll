; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journalctl.c_add_priorities.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journalctl.c_add_priorities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.add_priorities.match = private unnamed_addr constant [11 x i8] c"PRIORITY=0\00", align 1
@arg_priorities = common dso_local global i32 0, align 4
@LOG_EMERG = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to add match: %m\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to add conjunction: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @add_priorities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_priorities(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [11 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = bitcast [11 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.add_priorities.match, i32 0, i32 0), i64 11, i1 false)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @assert(i32* %8)
  %10 = load i32, i32* @arg_priorities, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load i32, i32* @LOG_EMERG, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %13
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LOG_DEBUG, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i32, i32* @arg_priorities, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 48, %26
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 9
  store i8 %28, i8* %29, align 1
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %32 = getelementptr inbounds [11 x i8], [11 x i8]* %4, i64 0, i64 0
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @sd_journal_add_match(i32* %30, i8* %31, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @log_error_errno(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @sd_journal_add_conjunction(i32* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @log_error_errno(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %37, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32*) #2

declare dso_local i32 @sd_journal_add_match(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @log_error_errno(i32, i8*) #2

declare dso_local i32 @sd_journal_add_conjunction(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

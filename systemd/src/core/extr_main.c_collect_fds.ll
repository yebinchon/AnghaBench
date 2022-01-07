; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_main.c_collect_fds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_main.c_collect_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Failed to allocate fd set\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate fd set: %m\00", align 1
@arg_serialization = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @collect_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_fds(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = call i32 @assert(i8** %7)
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @assert(i8** %9)
  %11 = load i8**, i8*** %4, align 8
  %12 = call i32 @fdset_new_fill(i8** %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @log_emergency_errno(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @fdset_cloexec(i8* %21, i32 1)
  %23 = load i64, i64* @arg_serialization, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* @arg_serialization, align 8
  %29 = call i32 @fileno(i64 %28)
  %30 = call i64 @fdset_remove(i8* %27, i32 %29)
  %31 = icmp sge i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert_se(i32 %32)
  br label %34

34:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i32 @fdset_new_fill(i8**) #1

declare dso_local i32 @log_emergency_errno(i32, i8*) #1

declare dso_local i32 @fdset_cloexec(i8*, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @fdset_remove(i8*, i32) #1

declare dso_local i32 @fileno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_operational_state_to_color.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_operational_state_to_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"routable\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"enslaved\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"carrier\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"degraded\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**, i8**)* @operational_state_to_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @operational_state_to_color(i8* %0, i8* %1, i8** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = call i32 @assert(i8** %9)
  %11 = load i8**, i8*** %8, align 8
  %12 = call i32 @assert(i8** %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @STRPTR_IN_SET(i8* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @streq_ptr(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @streq_ptr(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %4
  %25 = call i8* (...) @ansi_highlight_green()
  %26 = load i8**, i8*** %7, align 8
  store i8* %25, i8** %26, align 8
  %27 = call i8* (...) @ansi_normal()
  %28 = load i8**, i8*** %8, align 8
  store i8* %27, i8** %28, align 8
  br label %42

29:                                               ; preds = %20, %16
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @streq_ptr(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call i8* (...) @ansi_highlight_yellow()
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  %36 = call i8* (...) @ansi_normal()
  %37 = load i8**, i8*** %8, align 8
  store i8* %36, i8** %37, align 8
  br label %41

38:                                               ; preds = %29
  %39 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %39, align 8
  %40 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %41, %24
  ret void
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i64 @STRPTR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @streq_ptr(i8*, i8*) #1

declare dso_local i8* @ansi_highlight_green(...) #1

declare dso_local i8* @ansi_normal(...) #1

declare dso_local i8* @ansi_highlight_yellow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

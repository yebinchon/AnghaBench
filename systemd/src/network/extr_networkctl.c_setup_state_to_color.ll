; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_setup_state_to_color.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkctl.c_setup_state_to_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"configuring\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"linger\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8**)* @setup_state_to_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_state_to_color(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = call i32 @assert(i8** %7)
  %9 = load i8**, i8*** %6, align 8
  %10 = call i32 @assert(i8** %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @streq_ptr(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = call i8* (...) @ansi_highlight_green()
  %16 = load i8**, i8*** %5, align 8
  store i8* %15, i8** %16, align 8
  %17 = call i8* (...) @ansi_normal()
  %18 = load i8**, i8*** %6, align 8
  store i8* %17, i8** %18, align 8
  br label %42

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @streq_ptr(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call i8* (...) @ansi_highlight_yellow()
  %25 = load i8**, i8*** %5, align 8
  store i8* %24, i8** %25, align 8
  %26 = call i8* (...) @ansi_normal()
  %27 = load i8**, i8*** %6, align 8
  store i8* %26, i8** %27, align 8
  br label %41

28:                                               ; preds = %19
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @STRPTR_IN_SET(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = call i8* (...) @ansi_highlight_red()
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %35 = call i8* (...) @ansi_normal()
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %40

37:                                               ; preds = %28
  %38 = load i8**, i8*** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i64 @streq_ptr(i8*, i8*) #1

declare dso_local i8* @ansi_highlight_green(...) #1

declare dso_local i8* @ansi_normal(...) #1

declare dso_local i8* @ansi_highlight_yellow(...) #1

declare dso_local i64 @STRPTR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i8* @ansi_highlight_red(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

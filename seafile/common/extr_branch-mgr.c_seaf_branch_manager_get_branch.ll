; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_seaf_branch_manager_get_branch.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_branch-mgr.c_seaf_branch_manager_get_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"fetch_head\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_branch_manager_get_branch(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @real_get_branch(i32* %13, i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32* @real_get_branch(i32* %19, i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %8, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %4, align 8
  br label %29

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32* @real_get_branch(i32* %25, i8* %26, i8* %27)
  store i32* %28, i32** %4, align 8
  br label %29

29:                                               ; preds = %24, %22
  %30 = load i32*, i32** %4, align 8
  ret i32* %30
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @real_get_branch(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_set_title_defaults.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_set_title_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32** }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@options = common dso_local global %struct.TYPE_3__* null, align 8
@P_WAS_SET = common dso_local global i32 0, align 4
@VI_DEFAULT = common dso_local global i64 0, align 8
@p_title = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@p_icon = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_title_defaults() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 @findoption(i32* bitcast ([6 x i8]* @.str to i32*))
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @P_WAS_SET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %6
  %17 = call i64 (...) @mch_can_restore_title()
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i64, i64* @VI_DEFAULT, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  store i32* %19, i32** %27, align 8
  %28 = load i64, i64* %2, align 8
  store i64 %28, i64* @p_title, align 8
  br label %29

29:                                               ; preds = %16, %6, %0
  %30 = call i32 @findoption(i32* bitcast ([5 x i8]* @.str.1 to i32*))
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @P_WAS_SET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %33
  %44 = call i64 (...) @mch_can_restore_icon()
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @options, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @VI_DEFAULT, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* %46, i32** %54, align 8
  %55 = load i64, i64* %2, align 8
  store i64 %55, i64* @p_icon, align 8
  br label %56

56:                                               ; preds = %43, %33, %29
  ret void
}

declare dso_local i32 @findoption(i32*) #1

declare dso_local i64 @mch_can_restore_title(...) #1

declare dso_local i64 @mch_can_restore_icon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

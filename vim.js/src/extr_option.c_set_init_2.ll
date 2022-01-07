; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_option.c_set_init_2.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_option.c_set_init_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@Rows = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_2__* null, align 8
@P_WAS_SET = common dso_local global i32 0, align 4
@OPT_LOCAL = common dso_local global i32 0, align 4
@p_cp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@p_window = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dark\00", align 1
@OPT_FREE = common dso_local global i32 0, align 4
@SHAPE_CURSOR = common dso_local global i32 0, align 4
@SHAPE_MOUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_init_2() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @Rows, align 4
  %3 = ashr i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = call i32 @set_number_default(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @findoption(i32* bitcast ([7 x i8]* @.str to i32*))
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @P_WAS_SET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @OPT_LOCAL, align 4
  %23 = load i32, i32* @p_cp, align 4
  %24 = call i32 @set_option_default(i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %10, %0
  %26 = call i32 (...) @comp_col()
  %27 = call i32 @option_was_set(i32* bitcast ([7 x i8]* @.str.1 to i32*))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @Rows, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* @p_window, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* @Rows, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @set_number_default(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = call i32 @findoption(i32* bitcast ([3 x i8]* @.str.2 to i32*))
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @P_WAS_SET, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %39
  %50 = call i8* (...) @term_bg_default()
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 100
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @OPT_FREE, align 4
  %57 = call i32 @set_string_option_direct(i32* null, i32 %55, i32* bitcast ([5 x i8]* @.str.3 to i32*), i32 %56, i32 0)
  %58 = load i32, i32* @P_WAS_SET, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %59
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %54, %49, %39, %32
  ret void
}

declare dso_local i32 @set_number_default(i8*, i32) #1

declare dso_local i32 @findoption(i32*) #1

declare dso_local i32 @set_option_default(i32, i32, i32) #1

declare dso_local i32 @comp_col(...) #1

declare dso_local i32 @option_was_set(i32*) #1

declare dso_local i8* @term_bg_default(...) #1

declare dso_local i32 @set_string_option_direct(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

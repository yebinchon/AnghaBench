; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dirid.c_DIRID_get_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dirid.c_DIRID_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@DIRID_ABSOLUTE = common dso_local global i32 0, align 4
@DIRID_ABSOLUTE_16BIT = common dso_local global i32 0, align 4
@DIRID_NULL = common dso_local global i32 0, align 4
@DIRID_USER = common dso_local global i32 0, align 4
@nb_user_dirids = common dso_local global i32 0, align 4
@user_dirids = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"user id %d not found\0A\00", align 1
@MIN_CSIDL_DIRID = common dso_local global i32 0, align 4
@MAX_CSIDL_DIRID = common dso_local global i32 0, align 4
@csidl_dirids = common dso_local global i32** null, align 8
@MAX_SYSTEM_DIRID = common dso_local global i32 0, align 4
@system_dirids = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DIRID_get_string(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DIRID_ABSOLUTE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @DIRID_ABSOLUTE_16BIT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @DIRID_NULL, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DIRID_USER, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @nb_user_dirids, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @user_dirids, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @user_dirids, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %2, align 8
  br label %105

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32* null, i32** %2, align 8
  br label %105

46:                                               ; preds = %14
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @MIN_CSIDL_DIRID, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MAX_CSIDL_DIRID, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32* (...) @get_unknown_dirid()
  store i32* %55, i32** %2, align 8
  br label %105

56:                                               ; preds = %50
  %57 = load i32, i32* @MIN_CSIDL_DIRID, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32**, i32*** @csidl_dirids, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %3, align 4
  %68 = call i32* @get_csidl_dir(i32 %67)
  %69 = load i32**, i32*** @csidl_dirids, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* %68, i32** %72, align 8
  br label %73

73:                                               ; preds = %66, %56
  %74 = load i32**, i32*** @csidl_dirids, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %2, align 8
  br label %105

79:                                               ; preds = %46
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @MAX_SYSTEM_DIRID, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32* (...) @get_unknown_dirid()
  store i32* %84, i32** %2, align 8
  br label %105

85:                                               ; preds = %79
  %86 = load i32**, i32*** @system_dirids, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %3, align 4
  %94 = call i32* @create_system_dirid(i32 %93)
  %95 = load i32**, i32*** @system_dirids, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* %94, i32** %98, align 8
  br label %99

99:                                               ; preds = %92, %85
  %100 = load i32**, i32*** @system_dirids, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %2, align 8
  br label %105

105:                                              ; preds = %99, %83, %73, %54, %43, %32
  %106 = load i32*, i32** %2, align 8
  ret i32* %106
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32* @get_unknown_dirid(...) #1

declare dso_local i32* @get_csidl_dir(i32) #1

declare dso_local i32* @create_system_dirid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

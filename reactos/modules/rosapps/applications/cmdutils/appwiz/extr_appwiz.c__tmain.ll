; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/appwiz/extr_appwiz.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Application Wizard\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/l\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"/all\00", align 1
@SHOW_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"/app\00", align 1
@APP_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"/upd\00", align 1
@UPD_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = call i32 @_T(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @SetConsoleTitle(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @RunGUIAppWiz()
  store i32 0, i32* %3, align 4
  br label %114

14:                                               ; preds = %2
  %15 = load i32**, i32*** %5, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i64 @_tcsncmp(i32* %17, i32 %18, i32 2)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @PrintHelp()
  store i32 0, i32* %3, align 4
  br label %114

23:                                               ; preds = %14
  %24 = load i32**, i32*** %5, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i64 @_tcsncmp(i32* %26, i32 %27, i32 2)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %113

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %42

34:                                               ; preds = %30
  %35 = load i32**, i32*** %5, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i64 @_tcsncmp(i32* %37, i32 %38, i32 4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* @SHOW_ALL, align 4
  %44 = call i32 @ShowAppList(i32 %43, i32 -1)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %114

47:                                               ; preds = %42
  %48 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %50 = call i32 @scanf(i32 %48, i32* %49)
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %52 = call i32 @atoi(i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %114

56:                                               ; preds = %47
  %57 = load i32, i32* @SHOW_ALL, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ShowAppList(i32 %57, i32 %58)
  br label %112

60:                                               ; preds = %34
  %61 = load i32**, i32*** %5, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %65 = call i64 @_tcsncmp(i32* %63, i32 %64, i32 4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load i32, i32* @APP_ONLY, align 4
  %69 = call i32 @ShowAppList(i32 %68, i32 -1)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %114

72:                                               ; preds = %67
  %73 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %75 = call i32 @scanf(i32 %73, i32* %74)
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %77 = call i32 @atoi(i32* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %114

81:                                               ; preds = %72
  %82 = load i32, i32* @APP_ONLY, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @ShowAppList(i32 %82, i32 %83)
  br label %111

85:                                               ; preds = %60
  %86 = load i32**, i32*** %5, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 2
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @_T(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %90 = call i64 @_tcsncmp(i32* %88, i32 %89, i32 4)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %85
  %93 = load i32, i32* @UPD_ONLY, align 4
  %94 = call i32 @ShowAppList(i32 %93, i32 -1)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %114

97:                                               ; preds = %92
  %98 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %100 = call i32 @scanf(i32 %98, i32* %99)
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %102 = call i32 @atoi(i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %114

106:                                              ; preds = %97
  %107 = load i32, i32* @UPD_ONLY, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @ShowAppList(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %85
  br label %111

111:                                              ; preds = %110, %81
  br label %112

112:                                              ; preds = %111, %56
  store i32 0, i32* %3, align 4
  br label %114

113:                                              ; preds = %23
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %112, %105, %96, %80, %71, %55, %46, %21, %12
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @SetConsoleTitle(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @RunGUIAppWiz(...) #1

declare dso_local i64 @_tcsncmp(i32*, i32, i32) #1

declare dso_local i32 @PrintHelp(...) #1

declare dso_local i32 @ShowAppList(i32, i32) #1

declare dso_local i32 @scanf(i32, i32*) #1

declare dso_local i32 @atoi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

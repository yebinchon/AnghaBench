; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_GetVarSlaves.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_GetVarSlaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"input-slave\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@SLAVE_TYPE_AUDIO = common dso_local global i32 0, align 4
@SLAVE_PRIORITY_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32***, i32*)* @GetVarSlaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetVarSlaves(i32* %0, i32*** %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32*** %1, i32**** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @var_GetNonEmptyString(i32* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %106

19:                                               ; preds = %3
  %20 = load i32***, i32**** %5, align 8
  %21 = load i32**, i32*** %20, align 8
  store i32** %21, i32*** %8, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %94, %80, %19
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %99

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 35
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ true, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %36

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 35)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  store i8 0, i8* %57, align 1
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %99

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @strstr(i8* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @strdup(i8* %70)
  br label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = call i8* @vlc_path2uri(i8* %73, i32* null)
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i8* [ %71, %69 ], [ %74, %72 ]
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %25

81:                                               ; preds = %75
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* @SLAVE_TYPE_AUDIO, align 4
  %84 = load i32, i32* @SLAVE_PRIORITY_USER, align 4
  %85 = call i32* @input_item_slave_New(i8* %82, i32 %83, i32 %84)
  store i32* %85, i32** %13, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = icmp eq i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %99

94:                                               ; preds = %81
  %95 = load i32, i32* %9, align 4
  %96 = load i32**, i32*** %8, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @TAB_APPEND(i32 %95, i32** %96, i32* %97)
  br label %25

99:                                               ; preds = %93, %64, %33
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32**, i32*** %8, align 8
  %103 = load i32***, i32**** %5, align 8
  store i32** %102, i32*** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %6, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %99, %18
  ret void
}

declare dso_local i8* @var_GetNonEmptyString(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32* @input_item_slave_New(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @TAB_APPEND(i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

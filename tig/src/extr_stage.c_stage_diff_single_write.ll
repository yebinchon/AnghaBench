; ModuleID = '/home/carl/AnghaBench/tig/src/extr_stage.c_stage_diff_single_write.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_stage.c_stage_diff_single_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io = type { i32 }
%struct.line = type { i32 }

@LINE_DIFF_ADD = common dso_local global i32 0, align 4
@LINE_DIFF_DEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io*, i32, %struct.line*, %struct.line*, %struct.line*)* @stage_diff_single_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_diff_single_write(%struct.io* %0, i32 %1, %struct.line* %2, %struct.line* %3, %struct.line* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.line*, align 8
  %10 = alloca %struct.line*, align 8
  %11 = alloca %struct.line*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.io* %0, %struct.io** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.line* %2, %struct.line** %9, align 8
  store %struct.line* %3, %struct.line** %10, align 8
  store %struct.line* %4, %struct.line** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @LINE_DIFF_ADD, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @LINE_DIFF_DEL, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @LINE_DIFF_DEL, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @LINE_DIFF_ADD, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %79, %30
  %33 = load %struct.line*, %struct.line** %9, align 8
  %34 = load %struct.line*, %struct.line** %11, align 8
  %35 = icmp ult %struct.line* %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %37 = load %struct.line*, %struct.line** %9, align 8
  %38 = call i8* @box_text(%struct.line* %37)
  store i8* %38, i8** %15, align 8
  %39 = load %struct.line*, %struct.line** %9, align 8
  %40 = load %struct.line*, %struct.line** %10, align 8
  %41 = icmp eq %struct.line* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %61

43:                                               ; preds = %36
  %44 = load %struct.line*, %struct.line** %9, align 8
  %45 = getelementptr inbounds %struct.line, %struct.line* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %15, align 8
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.line*, %struct.line** %9, align 8
  %54 = getelementptr inbounds %struct.line, %struct.line* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8* null, i8** %15, align 8
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.io*, %struct.io** %7, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @io_printf(%struct.io* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %81

71:                                               ; preds = %64, %61
  %72 = load %struct.line*, %struct.line** %9, align 8
  %73 = getelementptr inbounds %struct.line, %struct.line* %72, i32 1
  store %struct.line* %73, %struct.line** %9, align 8
  %74 = load %struct.line*, %struct.line** %9, align 8
  %75 = load %struct.line*, %struct.line** %11, align 8
  %76 = call i64 @stage_diff_done(%struct.line* %74, %struct.line* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %80

79:                                               ; preds = %71
  br label %32

80:                                               ; preds = %78, %32
  store i32 1, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i8* @box_text(%struct.line*) #1

declare dso_local i32 @io_printf(%struct.io*, i8*, i8*, i8*) #1

declare dso_local i64 @stage_diff_done(%struct.line*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

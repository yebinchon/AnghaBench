; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_to_ascii.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_symbol_to_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_symbol = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c" o\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" I\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" M\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-|\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-'\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-.\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" .\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.graph_symbol*)* @graph_symbol_to_ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @graph_symbol_to_ascii(%struct.graph_symbol* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.graph_symbol*, align 8
  store %struct.graph_symbol* %0, %struct.graph_symbol** %3, align 8
  %4 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %5 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %10 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %90

14:                                               ; preds = %8
  %15 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %16 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %90

20:                                               ; preds = %14
  %21 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %22 = getelementptr inbounds %struct.graph_symbol, %struct.graph_symbol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %90

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %90

29:                                               ; preds = %1
  %30 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %31 = call i64 @graph_symbol_cross_merge(%struct.graph_symbol* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %90

34:                                               ; preds = %29
  %35 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %36 = call i64 @graph_symbol_vertical_merge(%struct.graph_symbol* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %90

39:                                               ; preds = %34
  %40 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %41 = call i64 @graph_symbol_cross_over(%struct.graph_symbol* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %90

44:                                               ; preds = %39
  %45 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %46 = call i64 @graph_symbol_vertical_bar(%struct.graph_symbol* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %90

49:                                               ; preds = %44
  %50 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %51 = call i64 @graph_symbol_turn_left(%struct.graph_symbol* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %90

54:                                               ; preds = %49
  %55 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %56 = call i64 @graph_symbol_multi_branch(%struct.graph_symbol* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %90

59:                                               ; preds = %54
  %60 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %61 = call i64 @graph_symbol_horizontal_bar(%struct.graph_symbol* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %90

64:                                               ; preds = %59
  %65 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %66 = call i64 @graph_symbol_forks(%struct.graph_symbol* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %90

69:                                               ; preds = %64
  %70 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %71 = call i64 @graph_symbol_turn_down_cross_over(%struct.graph_symbol* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %90

74:                                               ; preds = %69
  %75 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %76 = call i64 @graph_symbol_turn_down(%struct.graph_symbol* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %90

79:                                               ; preds = %74
  %80 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %81 = call i64 @graph_symbol_merge(%struct.graph_symbol* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %90

84:                                               ; preds = %79
  %85 = load %struct.graph_symbol*, %struct.graph_symbol** %3, align 8
  %86 = call i64 @graph_symbol_multi_merge(%struct.graph_symbol* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %90

89:                                               ; preds = %84
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %90

90:                                               ; preds = %89, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %25, %19, %13
  %91 = load i8*, i8** %2, align 8
  ret i8* %91
}

declare dso_local i64 @graph_symbol_cross_merge(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_vertical_merge(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_cross_over(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_vertical_bar(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_turn_left(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_multi_branch(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_horizontal_bar(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_forks(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_turn_down_cross_over(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_turn_down(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_merge(%struct.graph_symbol*) #1

declare dso_local i64 @graph_symbol_multi_merge(%struct.graph_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_array_assign.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_array_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c" ,\00", align 1
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @options_array_assign(%struct.options_entry* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.options_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.options_entry* %0, %struct.options_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %13 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %14 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %107

32:                                               ; preds = %26
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @UINT_MAX, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i32* @options_array_item(%struct.options_entry* %38, i64 %39)
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %12, align 8
  br label %33

47:                                               ; preds = %42, %33
  %48 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = call i64 @options_array_set(%struct.options_entry* %48, i64 %49, i8* %50, i32 0, i8** %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %107

54:                                               ; preds = %21
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %107

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @xstrdup(i8* %61)
  store i8* %62, i8** %11, align 8
  store i8* %62, i8** %9, align 8
  br label %63

63:                                               ; preds = %103, %72, %60
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* @strsep(i8** %11, i8* %64)
  store i8* %65, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %104

67:                                               ; preds = %63
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %63

73:                                               ; preds = %67
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @UINT_MAX, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32* @options_array_item(%struct.options_entry* %79, i64 %80)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %88

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %74

88:                                               ; preds = %83, %74
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @UINT_MAX, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %104

93:                                               ; preds = %88
  %94 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8**, i8*** %7, align 8
  %98 = call i64 @options_array_set(%struct.options_entry* %94, i64 %95, i8* %96, i32 0, i8** %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @free(i8* %101)
  store i32 -1, i32* %4, align 4
  br label %107

103:                                              ; preds = %93
  br label %63

104:                                              ; preds = %92, %63
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %100, %59, %47, %31
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32* @options_array_item(%struct.options_entry*, i64) #1

declare dso_local i64 @options_array_set(%struct.options_entry*, i64, i8*, i32, i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

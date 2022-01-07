; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_open_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_open_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wave_open_flags.msg = internal global [1024 x i8] zeroinitializer, align 16
@TRUE = common dso_local global i64 0, align 8
@CALLBACK_TYPEMASK = common dso_local global i32 0, align 4
@CALLBACK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CALLBACK_EVENT\00", align 1
@FALSE = common dso_local global i64 0, align 8
@CALLBACK_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"CALLBACK_FUNCTION\00", align 1
@CALLBACK_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"CALLBACK_NULL\00", align 1
@CALLBACK_THREAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"CALLBACK_THREAD\00", align 1
@CALLBACK_WINDOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"CALLBACK_WINDOW\00", align 1
@WAVE_ALLOWSYNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"WAVE_ALLOWSYNC\00", align 1
@WAVE_FORMAT_DIRECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"WAVE_FORMAT_DIRECT\00", align 1
@WAVE_FORMAT_QUERY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"WAVE_FORMAT_QUERY\00", align 1
@WAVE_MAPPED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"WAVE_MAPPED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wave_open_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @TRUE, align 8
  store i64 %4, i64* %3, align 8
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), align 16
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CALLBACK_TYPEMASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @CALLBACK_EVENT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @CALLBACK_TYPEMASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CALLBACK_FUNCTION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  %25 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @CALLBACK_TYPEMASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CALLBACK_NULL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  %39 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i64, i64* @FALSE, align 8
  store i64 %40, i64* %3, align 8
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @CALLBACK_TYPEMASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @CALLBACK_THREAD, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i64, i64* %3, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @CALLBACK_TYPEMASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @CALLBACK_WINDOW, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load i64, i64* %3, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  %67 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %66, %55
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @WAVE_ALLOWSYNC, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @WAVE_ALLOWSYNC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i64, i64* %3, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %82 = load i64, i64* @FALSE, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %80, %69
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @WAVE_FORMAT_DIRECT, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @WAVE_FORMAT_DIRECT, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i64, i64* %3, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i64, i64* @FALSE, align 8
  store i64 %96, i64* %3, align 8
  br label %97

97:                                               ; preds = %94, %83
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* @WAVE_FORMAT_QUERY, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @WAVE_FORMAT_QUERY, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load i64, i64* %3, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %103
  %109 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %108, %97
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @WAVE_MAPPED, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @WAVE_MAPPED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i64, i64* %3, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %111
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_open_flags.msg, i64 0, i64 0)
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_header_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_wave.c_wave_header_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wave_header_flags.msg = internal global [1024 x i8] zeroinitializer, align 16
@TRUE = common dso_local global i64 0, align 8
@WHDR_BEGINLOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WHDR_BEGINLOOP\00", align 1
@FALSE = common dso_local global i64 0, align 8
@WHDR_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WHDR_DONE\00", align 1
@WHDR_ENDLOOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"WHDR_ENDLOOP\00", align 1
@WHDR_INQUEUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"WHDR_INQUEUE\00", align 1
@WHDR_PREPARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"WHDR_PREPARED\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"UNKNOWN(0x%08x)\00", align 1
@WHDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @wave_header_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wave_header_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @TRUE, align 8
  store i64 %5, i64* %3, align 8
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), align 16
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @WHDR_BEGINLOOP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @WHDR_DONE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @WHDR_ENDLOOP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @WHDR_INQUEUE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %49, %39
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @WHDR_PREPARED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64, i64* %3, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %62, %52
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @WHDR_BEGINLOOP, align 4
  %68 = load i32, i32* @WHDR_DONE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @WHDR_ENDLOOP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @WHDR_INQUEUE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @WHDR_PREPARED, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = and i32 %66, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %65
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @WHDR_BEGINLOOP, align 4
  %83 = load i32, i32* @WHDR_DONE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @WHDR_ENDLOOP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WHDR_INQUEUE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @WHDR_PREPARED, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = and i32 %81, %91
  %93 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = load i64, i64* %3, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %79
  %97 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %79
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %100 = call i32 @strcat(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %98, %65
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @wave_header_flags.msg, i64 0, i64 0)
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

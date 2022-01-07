; ModuleID = '/home/carl/AnghaBench/zstd/programs/extr_util.c_UTIL_countPhysicalCores.c'
source_filename = "/home/carl/AnghaBench/zstd/programs/extr_util.c_UTIL_countPhysicalCores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTIL_countPhysicalCores.numPhysicalCores = internal global i32 0, align 4
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"siblings\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cpu cores\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UTIL_countPhysicalCores() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = load i32, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  store i32 %12, i32* %1, align 4
  br label %100

13:                                               ; preds = %0
  %14 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %15 = call i64 @sysconf(i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  %17 = load i32, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  store i32 1, i32* %1, align 4
  br label %100

20:                                               ; preds = %13
  %21 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  store i32 %25, i32* %1, align 4
  br label %100

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %82, %26
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @feof(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %83

32:                                               ; preds = %27
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %34 = load i32*, i32** %2, align 8
  %35 = call i32* @fgets(i8* %33, i32 80, i32* %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %43 = call i8* @strchr(i8* %42, i8 signext 58)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  br label %94

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 @atoi(i8* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %37
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %62 = call i8* @strchr(i8* %61, i8 signext 58)
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60
  br label %94

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = call i32 @atoi(i8* %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %56
  br label %82

76:                                               ; preds = %32
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @ferror(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %94

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %75
  br label %27

83:                                               ; preds = %27
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sdiv i32 %90, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %86, %83
  br label %94

94:                                               ; preds = %93, %80, %70, %51
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 @fclose(i32* %95)
  %97 = load i32, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* @UTIL_countPhysicalCores.numPhysicalCores, align 4
  store i32 %99, i32* %1, align 4
  br label %100

100:                                              ; preds = %94, %24, %19, %11
  %101 = load i32, i32* %1, align 4
  ret i32 %101
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

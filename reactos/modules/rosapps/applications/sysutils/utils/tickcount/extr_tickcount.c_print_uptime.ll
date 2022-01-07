; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/tickcount/extr_tickcount.c_print_uptime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/tickcount/extr_tickcount.c_print_uptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ticks_per_slice = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%u %s\00", align 1
@slice_names_singular = common dso_local global i32** null, align 8
@slice_names_plural = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%u %s %s %u %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%u %s, \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_uptime(i64 %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64*, i64** @ticks_per_slice, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = sdiv i64 %11, %16
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64*, i64** @ticks_per_slice, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = srem i64 %18, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp sle i64 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %4
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = call i32 @_T(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32**, i32*** @slice_names_singular, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i32**, i32*** @slice_names_plural, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32** [ %41, %40 ], [ %43, %42 ]
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 (i32, i32, i32*, ...) @_tprintf(i32 %35, i32 %37, i32* %49)
  br label %75

51:                                               ; preds = %31
  %52 = load i32*, i32** %7, align 8
  %53 = ptrtoint i32* %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %9, align 8
  %63 = icmp eq i64 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32**, i32*** @slice_names_singular, align 8
  br label %68

66:                                               ; preds = %51
  %67 = load i32**, i32*** @slice_names_plural, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32** [ %65, %64 ], [ %67, %66 ]
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 (i32, i32, i32*, ...) @_tprintf(i32 %55, i32 %57, i32* %58, i32 %59, i32 %61, i32* %73)
  br label %75

75:                                               ; preds = %68, %44
  br label %115

76:                                               ; preds = %4
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = ptrtoint i32* %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = call i32 @_T(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i64, i64* %6, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 (i32, i32, i32*, ...) @_tprintf(i32 %86, i32 %88, i32* %89)
  br label %91

91:                                               ; preds = %82, %79
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32**, i32*** @slice_names_singular, align 8
  br label %100

98:                                               ; preds = %91
  %99 = load i32**, i32*** @slice_names_plural, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32** [ %97, %96 ], [ %99, %98 ]
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  call void @print_uptime(i64 %92, i64 %93, i32* %105, i32 %107)
  br label %114

108:                                              ; preds = %76
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  call void @print_uptime(i64 %109, i64 %110, i32* %111, i32 %113)
  br label %114

114:                                              ; preds = %108, %100
  br label %115

115:                                              ; preds = %114, %75
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_tprintf(i32, i32, i32*, ...) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

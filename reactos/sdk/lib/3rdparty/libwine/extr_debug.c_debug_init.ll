; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_debug_init.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwine/extr_debug.c_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@nb_debug_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DEBUGCHANNEL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"DEBUGFORMAT\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"wine\00", align 1
@winefmt_default_dbg_vlog = common dso_local global i32 0, align 4
@funcs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@extfmt_default_dbg_vlog = common dso_local global i32 0, align 4
@rosfmt_default_dbg_vlog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 (...) @GetLastError()
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @nb_debug_options, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %72

8:                                                ; preds = %0
  store i32 0, i32* @nb_debug_options, align 4
  %9 = call i64 @GetEnvironmentVariableA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* null, i64 0)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load i64, i64* %2, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i8*, i8** %1, align 8
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @GetEnvironmentVariableA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %18, i64 %19)
  %21 = load i64, i64* %2, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @parse_options(i8* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %26, %12
  br label %30

30:                                               ; preds = %29, %8
  %31 = call i64 @GetEnvironmentVariableA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 0)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load i64, i64* %2, align 8
  %36 = call i8* @malloc(i64 %35)
  store i8* %36, i8** %1, align 8
  %37 = load i8*, i8** %1, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load i8*, i8** %1, align 8
  %41 = load i64, i64* %2, align 8
  %42 = call i64 @GetEnvironmentVariableA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %40, i64 %41)
  %43 = load i64, i64* %2, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i8*, i8** %1, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @winefmt_default_dbg_vlog, align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 4
  br label %64

51:                                               ; preds = %45
  %52 = load i8*, i8** %1, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %1, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @extfmt_default_dbg_vlog, align 4
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @rosfmt_default_dbg_vlog, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @funcs, i32 0, i32 0), align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63, %49
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i8*, i8** %1, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %65, %34
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @SetLastError(i64 %70)
  br label %72

72:                                               ; preds = %69, %7
  ret void
}

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @GetEnvironmentVariableA(i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @parse_options(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

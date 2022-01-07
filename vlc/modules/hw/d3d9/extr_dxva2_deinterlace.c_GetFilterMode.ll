; ModuleID = '/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_GetFilterMode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/hw/d3d9/extr_dxva2_deinterlace.c_GetFilterMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_mode_t = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@filter_mode = common dso_local global %struct.filter_mode_t* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filter_mode_t* (i8*)* @GetFilterMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filter_mode_t* @GetFilterMode(i8* %0) #0 {
  %2 = alloca %struct.filter_mode_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %12

12:                                               ; preds = %11, %7
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.filter_mode_t*, %struct.filter_mode_t** @filter_mode, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.filter_mode_t* %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.filter_mode_t*, %struct.filter_mode_t** @filter_mode, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %20, i64 %21
  %23 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %19, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load %struct.filter_mode_t*, %struct.filter_mode_t** @filter_mode, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.filter_mode_t, %struct.filter_mode_t* %28, i64 %29
  store %struct.filter_mode_t* %30, %struct.filter_mode_t** %2, align 8
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %13

35:                                               ; preds = %13
  store %struct.filter_mode_t* null, %struct.filter_mode_t** %2, align 8
  br label %36

36:                                               ; preds = %35, %27
  %37 = load %struct.filter_mode_t*, %struct.filter_mode_t** %2, align 8
  ret %struct.filter_mode_t* %37
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.filter_mode_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

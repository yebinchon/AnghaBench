; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_device_get_identifier.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_input-manager.c_input_device_get_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_input_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d:%d:%s\00", align 1
@SWAY_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to allocate unique input device name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @input_device_get_identifier(%struct.wlr_input_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wlr_input_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.wlr_input_device* %0, %struct.wlr_input_device** %3, align 8
  %11 = load %struct.wlr_input_device*, %struct.wlr_input_device** %3, align 8
  %12 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.wlr_input_device*, %struct.wlr_input_device** %3, align 8
  %15 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.wlr_input_device*, %struct.wlr_input_device** %3, align 8
  %18 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @strdup(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strip_whitespace(i8* %21)
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %36, %1
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  store i8 95, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %24

39:                                               ; preds = %24
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @snprintf(i8* null, i32 0, i8* %40, i32 %41, i32 %42, i8* %43)
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @malloc(i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @SWAY_ERROR, align 4
  %52 = call i32 @sway_log(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %64

53:                                               ; preds = %39
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @snprintf(i8* %54, i32 %55, i8* %56, i32 %57, i32 %58, i8* %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %10, align 8
  store i8* %63, i8** %2, align 8
  br label %64

64:                                               ; preds = %53, %50
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @strip_whitespace(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sway_log(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

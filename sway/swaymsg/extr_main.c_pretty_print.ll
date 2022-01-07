; ModuleID = '/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print.c'
source_filename = "/home/carl/AnghaBench/sway/swaymsg/extr_main.c_pretty_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_GET_VERSION = common dso_local global i32 0, align 4
@IPC_GET_CONFIG = common dso_local global i32 0, align 4
@IPC_SEND_TICK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@JSON_C_TO_STRING_PRETTY = common dso_local global i32 0, align 4
@JSON_C_TO_STRING_SPACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @pretty_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pretty_print(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 132
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 131
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 130
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IPC_GET_VERSION, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 129
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IPC_GET_CONFIG, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IPC_SEND_TICK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @JSON_C_TO_STRING_PRETTY, align 4
  %37 = load i32, i32* @JSON_C_TO_STRING_SPACED, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @json_object_to_json_string_ext(i32* %35, i32 %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %91

41:                                               ; preds = %30, %26, %23, %19, %16, %13, %10, %2
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @IPC_SEND_TICK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %91

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @IPC_GET_VERSION, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @pretty_print_version(i32* %51)
  br label %91

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @IPC_GET_CONFIG, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @pretty_print_config(i32* %58)
  br label %91

60:                                               ; preds = %53
  %61 = load i32*, i32** %4, align 8
  %62 = call i64 @json_object_array_length(i32* %61)
  store i64 %62, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %63

63:                                               ; preds = %88, %60
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32* @json_object_array_get_idx(i32* %68, i64 %69)
  store i32* %70, i32** %5, align 8
  %71 = load i32, i32* %3, align 4
  switch i32 %71, label %87 [
    i32 132, label %72
    i32 128, label %75
    i32 131, label %78
    i32 130, label %81
    i32 129, label %84
  ]

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @pretty_print_cmd(i32* %73)
  br label %87

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @pretty_print_workspace(i32* %76)
  br label %87

78:                                               ; preds = %67
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @pretty_print_input(i32* %79)
  br label %87

81:                                               ; preds = %67
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @pretty_print_output(i32* %82)
  br label %87

84:                                               ; preds = %67
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @pretty_print_seat(i32* %85)
  br label %87

87:                                               ; preds = %67, %84, %81, %78, %75, %72
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %63

91:                                               ; preds = %34, %45, %50, %57, %63
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @json_object_to_json_string_ext(i32*, i32) #1

declare dso_local i32 @pretty_print_version(i32*) #1

declare dso_local i32 @pretty_print_config(i32*) #1

declare dso_local i64 @json_object_array_length(i32*) #1

declare dso_local i32* @json_object_array_get_idx(i32*, i64) #1

declare dso_local i32 @pretty_print_cmd(i32*) #1

declare dso_local i32 @pretty_print_workspace(i32*) #1

declare dso_local i32 @pretty_print_input(i32*) #1

declare dso_local i32 @pretty_print_output(i32*) #1

declare dso_local i32 @pretty_print_seat(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

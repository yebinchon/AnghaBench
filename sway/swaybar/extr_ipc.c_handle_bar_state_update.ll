; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_handle_bar_state_update.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_ipc.c_handle_bar_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"visible_by_modifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar*, i32*)* @handle_bar_state_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_bar_state_update(%struct.swaybar* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swaybar*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.swaybar* %0, %struct.swaybar** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @json_object_object_get_ex(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32** %6)
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @json_object_get_string(i32* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.swaybar*, %struct.swaybar** %4, align 8
  %15 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strcmp(i8* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @json_object_object_get_ex(i32* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32** %8)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @json_object_get_boolean(i32* %23)
  %25 = load %struct.swaybar*, %struct.swaybar** %4, align 8
  %26 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.swaybar*, %struct.swaybar** %4, align 8
  %28 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.swaybar*, %struct.swaybar** %4, align 8
  %33 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.swaybar*, %struct.swaybar** %4, align 8
  %35 = getelementptr inbounds %struct.swaybar, %struct.swaybar* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %20
  %37 = load %struct.swaybar*, %struct.swaybar** %4, align 8
  %38 = call i32 @determine_bar_visibility(%struct.swaybar* %37, i32 0)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @json_object_object_get_ex(i32*, i8*, i32**) #1

declare dso_local i8* @json_object_get_string(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @json_object_get_boolean(i32*) #1

declare dso_local i32 @determine_bar_visibility(%struct.swaybar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

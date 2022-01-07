; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_paste_buffer.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_defaults_paste_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { i32 }
%struct.paste_buffer = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"buffer_name\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"buffer_created\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"buffer_sample\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @format_defaults_paste_buffer(%struct.format_tree* %0, %struct.paste_buffer* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.paste_buffer*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.paste_buffer* %1, %struct.paste_buffer** %4, align 8
  %8 = call i32 @timerclear(%struct.timeval* %5)
  %9 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %10 = call i32 @paste_buffer_created(%struct.paste_buffer* %9)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %13 = call i32 @paste_buffer_data(%struct.paste_buffer* %12, i64* %6)
  %14 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %18 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %19 = call i8* @paste_buffer_name(%struct.paste_buffer* %18)
  %20 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %21 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %22 = call i32 @format_add_tv(%struct.format_tree* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.timeval* %5)
  %23 = load %struct.paste_buffer*, %struct.paste_buffer** %4, align 8
  %24 = call i8* @paste_make_sample(%struct.paste_buffer* %23)
  store i8* %24, i8** %7, align 8
  %25 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (%struct.format_tree*, i8*, i8*, ...) @format_add(%struct.format_tree* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @free(i8* %28)
  ret void
}

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @paste_buffer_created(%struct.paste_buffer*) #1

declare dso_local i32 @paste_buffer_data(%struct.paste_buffer*, i64*) #1

declare dso_local i32 @format_add(%struct.format_tree*, i8*, i8*, ...) #1

declare dso_local i8* @paste_buffer_name(%struct.paste_buffer*) #1

declare dso_local i32 @format_add_tv(%struct.format_tree*, i8*, %struct.timeval*) #1

declare dso_local i8* @paste_make_sample(%struct.paste_buffer*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-show-environment.c_cmd_show_environment_print.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-show-environment.c_cmd_show_environment_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 }
%struct.cmdq_item = type { i32 }
%struct.environ_entry = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s=\22%s\22; export %s;\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"unset %s;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd*, %struct.cmdq_item*, %struct.environ_entry*)* @cmd_show_environment_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_show_environment_print(%struct.cmd* %0, %struct.cmdq_item* %1, %struct.environ_entry* %2) #0 {
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.environ_entry*, align 8
  %7 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  store %struct.environ_entry* %2, %struct.environ_entry** %6, align 8
  %8 = load %struct.cmd*, %struct.cmd** %4, align 8
  %9 = getelementptr inbounds %struct.cmd, %struct.cmd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @args_has(i32 %10, i8 signext 115)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %15 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %20 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %21 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %24 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 (%struct.cmdq_item*, i8*, i32, ...) @cmdq_print(%struct.cmdq_item* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %25)
  br label %33

27:                                               ; preds = %13
  %28 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %29 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %30 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.cmdq_item*, i8*, i32, ...) @cmdq_print(%struct.cmdq_item* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %18
  br label %59

34:                                               ; preds = %3
  %35 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %36 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %41 = call i8* @cmd_show_environment_escape(%struct.environ_entry* %40)
  store i8* %41, i8** %7, align 8
  %42 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %43 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %44 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %48 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.cmdq_item*, i8*, i32, ...) @cmdq_print(%struct.cmdq_item* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %45, i8* %46, i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @free(i8* %51)
  br label %59

53:                                               ; preds = %34
  %54 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %55 = load %struct.environ_entry*, %struct.environ_entry** %6, align 8
  %56 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.cmdq_item*, i8*, i32, ...) @cmdq_print(%struct.cmdq_item* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %33, %53, %39
  ret void
}

declare dso_local i32 @args_has(i32, i8 signext) #1

declare dso_local i32 @cmdq_print(%struct.cmdq_item*, i8*, i32, ...) #1

declare dso_local i8* @cmd_show_environment_escape(%struct.environ_entry*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_set_title.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_set_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i8*, i32, %struct.session* }
%struct.session = type { i32 }
%struct.format_tree = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"set-titles-string\00", align 1
@FORMAT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @server_client_set_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_set_title(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.session*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.format_tree*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %7 = load %struct.client*, %struct.client** %2, align 8
  %8 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 2
  %9 = load %struct.session*, %struct.session** %8, align 8
  store %struct.session* %9, %struct.session** %3, align 8
  %10 = load %struct.session*, %struct.session** %3, align 8
  %11 = getelementptr inbounds %struct.session, %struct.session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @options_get_string(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = load %struct.client*, %struct.client** %2, align 8
  %15 = load i32, i32* @FORMAT_NONE, align 4
  %16 = call %struct.format_tree* @format_create(%struct.client* %14, i32* null, i32 %15, i32 0)
  store %struct.format_tree* %16, %struct.format_tree** %6, align 8
  %17 = load %struct.format_tree*, %struct.format_tree** %6, align 8
  %18 = load %struct.client*, %struct.client** %2, align 8
  %19 = call i32 @format_defaults(%struct.format_tree* %17, %struct.client* %18, i32* null, i32* null, i32* null)
  %20 = load %struct.format_tree*, %struct.format_tree** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @format_expand_time(%struct.format_tree* %20, i8* %21)
  store i8* %22, i8** %5, align 8
  %23 = load %struct.client*, %struct.client** %2, align 8
  %24 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.client*, %struct.client** %2, align 8
  %30 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %28, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27, %1
  %35 = load %struct.client*, %struct.client** %2, align 8
  %36 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @xstrdup(i8* %39)
  %41 = load %struct.client*, %struct.client** %2, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.client*, %struct.client** %2, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 1
  %45 = load %struct.client*, %struct.client** %2, align 8
  %46 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @tty_set_title(i32* %44, i8* %47)
  br label %49

49:                                               ; preds = %34, %27
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load %struct.format_tree*, %struct.format_tree** %6, align 8
  %53 = call i32 @format_free(%struct.format_tree* %52)
  ret void
}

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local %struct.format_tree* @format_create(%struct.client*, i32*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, i32*, i32*, i32*) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @tty_set_title(i32*, i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_update.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i8*, i8*, i32, i64, i32 }
%struct.format_tree = type { i32 }

@FORMAT_NONE = common dso_local global i32 0, align 4
@CLIENT_REDRAWSTATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_prompt_update(%struct.client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.format_tree*, align 8
  %8 = alloca i8*, align 8
  store %struct.client* %0, %struct.client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.client*, %struct.client** %4, align 8
  %10 = load i32, i32* @FORMAT_NONE, align 4
  %11 = call %struct.format_tree* @format_create(%struct.client* %9, i32* null, i32 %10, i32 0)
  store %struct.format_tree* %11, %struct.format_tree** %7, align 8
  %12 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %13 = load %struct.client*, %struct.client** %4, align 8
  %14 = call i32 @format_defaults(%struct.format_tree* %12, %struct.client* %13, i32* null, i32* null, i32* null)
  %15 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @format_expand_time(%struct.format_tree* %15, i8* %16)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.client*, %struct.client** %4, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i8* @format_expand_time(%struct.format_tree* %22, i8* %23)
  %25 = load %struct.client*, %struct.client** %4, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.client*, %struct.client** %4, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @utf8_fromcstr(i8* %31)
  %33 = load %struct.client*, %struct.client** %4, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.client*, %struct.client** %4, align 8
  %36 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @utf8_strlen(i8* %37)
  %39 = load %struct.client*, %struct.client** %4, align 8
  %40 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.client*, %struct.client** %4, align 8
  %42 = getelementptr inbounds %struct.client, %struct.client* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @CLIENT_REDRAWSTATUS, align 4
  %44 = load %struct.client*, %struct.client** %4, align 8
  %45 = getelementptr inbounds %struct.client, %struct.client* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load %struct.format_tree*, %struct.format_tree** %7, align 8
  %51 = call i32 @format_free(%struct.format_tree* %50)
  ret void
}

declare dso_local %struct.format_tree* @format_create(%struct.client*, i32*, i32, i32) #1

declare dso_local i32 @format_defaults(%struct.format_tree*, %struct.client*, i32*, i32*, i32*) #1

declare dso_local i8* @format_expand_time(%struct.format_tree*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @utf8_fromcstr(i8*) #1

declare dso_local i32 @utf8_strlen(i8*) #1

declare dso_local i32 @format_free(%struct.format_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

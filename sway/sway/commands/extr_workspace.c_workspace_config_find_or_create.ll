; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_workspace_config_find_or_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_workspace.c_workspace_config_find_or_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.workspace_config = type { %struct.TYPE_3__, i8*, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@INT_MIN = common dso_local global i8* null, align 8
@config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.workspace_config* (i8*)* @workspace_config_find_or_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.workspace_config* @workspace_config_find_or_create(i8* %0) #0 {
  %2 = alloca %struct.workspace_config*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.workspace_config*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.workspace_config* @workspace_find_config(i8* %5)
  store %struct.workspace_config* %6, %struct.workspace_config** %4, align 8
  %7 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %8 = icmp ne %struct.workspace_config* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  store %struct.workspace_config* %10, %struct.workspace_config** %2, align 8
  br label %49

11:                                               ; preds = %1
  %12 = call %struct.workspace_config* @calloc(i32 1, i32 48)
  store %struct.workspace_config* %12, %struct.workspace_config** %4, align 8
  %13 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %14 = icmp ne %struct.workspace_config* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store %struct.workspace_config* null, %struct.workspace_config** %2, align 8
  br label %49

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strdup(i8* %17)
  %19 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %20 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = call i32 (...) @create_list()
  %22 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %23 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** @INT_MIN, align 8
  %25 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %26 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @INT_MIN, align 8
  %28 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %29 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i8*, i8** @INT_MIN, align 8
  %32 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %33 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load i8*, i8** @INT_MIN, align 8
  %36 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %37 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  %39 = load i8*, i8** @INT_MIN, align 8
  %40 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %41 = getelementptr inbounds %struct.workspace_config, %struct.workspace_config* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  %47 = call i32 @list_add(i32 %45, %struct.workspace_config* %46)
  %48 = load %struct.workspace_config*, %struct.workspace_config** %4, align 8
  store %struct.workspace_config* %48, %struct.workspace_config** %2, align 8
  br label %49

49:                                               ; preds = %16, %15, %9
  %50 = load %struct.workspace_config*, %struct.workspace_config** %2, align 8
  ret %struct.workspace_config* %50
}

declare dso_local %struct.workspace_config* @workspace_find_config(i8*) #1

declare dso_local %struct.workspace_config* @calloc(i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @list_add(i32, %struct.workspace_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

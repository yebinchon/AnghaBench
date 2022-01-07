; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_remove.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-queue.c_cmdq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_item = type { i64, %struct.cmdq_item*, i32, i32*, i32*, %struct.cmdq_item*, i32* }

@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdq_item*)* @cmdq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_remove(%struct.cmdq_item* %0) #0 {
  %2 = alloca %struct.cmdq_item*, align 8
  store %struct.cmdq_item* %0, %struct.cmdq_item** %2, align 8
  %3 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %4 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %3, i32 0, i32 5
  %5 = load %struct.cmdq_item*, %struct.cmdq_item** %4, align 8
  %6 = icmp ne %struct.cmdq_item* %5, null
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %9 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %8, i32 0, i32 5
  %10 = load %struct.cmdq_item*, %struct.cmdq_item** %9, align 8
  %11 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %7
  %16 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %17 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %16, i32 0, i32 5
  %18 = load %struct.cmdq_item*, %struct.cmdq_item** %17, align 8
  %19 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %24 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %23, i32 0, i32 5
  %25 = load %struct.cmdq_item*, %struct.cmdq_item** %24, align 8
  %26 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @format_free(i32* %27)
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %31 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %30, i32 0, i32 5
  %32 = load %struct.cmdq_item*, %struct.cmdq_item** %31, align 8
  %33 = call i32 @free(%struct.cmdq_item* %32)
  br label %34

34:                                               ; preds = %29, %7, %1
  %35 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %36 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %41 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @server_client_unref(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %46 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %51 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @cmd_list_free(i32* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %56 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %59 = load i32, i32* @entry, align 4
  %60 = call i32 @TAILQ_REMOVE(i32 %57, %struct.cmdq_item* %58, i32 %59)
  %61 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %62 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %61, i32 0, i32 1
  %63 = load %struct.cmdq_item*, %struct.cmdq_item** %62, align 8
  %64 = call i32 @free(%struct.cmdq_item* %63)
  %65 = load %struct.cmdq_item*, %struct.cmdq_item** %2, align 8
  %66 = call i32 @free(%struct.cmdq_item* %65)
  ret void
}

declare dso_local i32 @format_free(i32*) #1

declare dso_local i32 @free(%struct.cmdq_item*) #1

declare dso_local i32 @server_client_unref(i32*) #1

declare dso_local i32 @cmd_list_free(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32, %struct.cmdq_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_push_namespace.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_push_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { i32, i32, i32, %struct.namespace*, i32 }

@current_namespace = common dso_local global %struct.namespace* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @push_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_namespace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.namespace*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.namespace*, %struct.namespace** @current_namespace, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.namespace* @find_sub_namespace(%struct.namespace* %4, i8* %5)
  store %struct.namespace* %6, %struct.namespace** %3, align 8
  %7 = load %struct.namespace*, %struct.namespace** %3, align 8
  %8 = icmp ne %struct.namespace* %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = call %struct.namespace* @xmalloc(i32 32)
  store %struct.namespace* %10, %struct.namespace** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @xstrdup(i8* %11)
  %13 = load %struct.namespace*, %struct.namespace** %3, align 8
  %14 = getelementptr inbounds %struct.namespace, %struct.namespace* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.namespace*, %struct.namespace** @current_namespace, align 8
  %16 = load %struct.namespace*, %struct.namespace** %3, align 8
  %17 = getelementptr inbounds %struct.namespace, %struct.namespace* %16, i32 0, i32 3
  store %struct.namespace* %15, %struct.namespace** %17, align 8
  %18 = load %struct.namespace*, %struct.namespace** @current_namespace, align 8
  %19 = getelementptr inbounds %struct.namespace, %struct.namespace* %18, i32 0, i32 1
  %20 = load %struct.namespace*, %struct.namespace** %3, align 8
  %21 = getelementptr inbounds %struct.namespace, %struct.namespace* %20, i32 0, i32 2
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  %23 = load %struct.namespace*, %struct.namespace** %3, align 8
  %24 = getelementptr inbounds %struct.namespace, %struct.namespace* %23, i32 0, i32 1
  %25 = call i32 @list_init(i32* %24)
  %26 = load %struct.namespace*, %struct.namespace** %3, align 8
  %27 = getelementptr inbounds %struct.namespace, %struct.namespace* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  br label %30

30:                                               ; preds = %9, %1
  %31 = load %struct.namespace*, %struct.namespace** %3, align 8
  store %struct.namespace* %31, %struct.namespace** @current_namespace, align 8
  ret void
}

declare dso_local %struct.namespace* @find_sub_namespace(%struct.namespace*, i8*) #1

declare dso_local %struct.namespace* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

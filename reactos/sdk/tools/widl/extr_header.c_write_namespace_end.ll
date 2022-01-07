; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_namespace_end.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_write_namespace_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { %struct.namespace*, i32 }

@use_abi_namespace = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.namespace*)* @write_namespace_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_namespace_end(i32* %0, %struct.namespace* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.namespace*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.namespace* %1, %struct.namespace** %4, align 8
  %5 = load %struct.namespace*, %struct.namespace** %4, align 8
  %6 = call i64 @is_global_namespace(%struct.namespace* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64, i64* @use_abi_namespace, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.namespace*, %struct.namespace** %4, align 8
  %14 = getelementptr inbounds %struct.namespace, %struct.namespace* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @write_line(i32* %12, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %8
  br label %28

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.namespace*, %struct.namespace** %4, align 8
  %21 = getelementptr inbounds %struct.namespace, %struct.namespace* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @write_line(i32* %19, i32 -1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.namespace*, %struct.namespace** %4, align 8
  %26 = getelementptr inbounds %struct.namespace, %struct.namespace* %25, i32 0, i32 0
  %27 = load %struct.namespace*, %struct.namespace** %26, align 8
  call void @write_namespace_end(i32* %24, %struct.namespace* %27)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @is_global_namespace(%struct.namespace*) #1

declare dso_local i32 @write_line(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

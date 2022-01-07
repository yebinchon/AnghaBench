; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.h_is_context_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.h_is_context_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@ATTR_CONTEXTHANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @is_context_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_context_handle(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  br label %6

6:                                                ; preds = %35, %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = call i64 @is_ptr(%struct.TYPE_9__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i64 @type_is_alias(%struct.TYPE_9__* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i1 [ true, %6 ], [ %13, %10 ]
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATTR_CONTEXTHANDLE, align 4
  %21 = call i64 @is_attr(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %38

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i64 @type_is_alias(%struct.TYPE_9__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call %struct.TYPE_9__* @type_alias_get_aliasee(%struct.TYPE_9__* %30)
  br label %35

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call %struct.TYPE_9__* @type_pointer_get_ref(%struct.TYPE_9__* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi %struct.TYPE_9__* [ %31, %29 ], [ %34, %32 ]
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %4, align 8
  br label %6

37:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @is_ptr(%struct.TYPE_9__*) #1

declare dso_local i64 @type_is_alias(%struct.TYPE_9__*) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local %struct.TYPE_9__* @type_alias_get_aliasee(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @type_pointer_get_ref(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

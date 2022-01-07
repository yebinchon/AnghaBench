; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_context_handle_type_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_context_handle_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }

@ATTR_CONTEXTHANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*)* @get_context_handle_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_context_handle_type_name(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  br label %6

6:                                                ; preds = %38, %1
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
  br i1 %15, label %16, label %40

16:                                               ; preds = %14
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ATTR_CONTEXTHANDLE, align 4
  %21 = call i64 @is_attr(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %2, align 8
  br label %42

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = call i64 @type_is_alias(%struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = call %struct.TYPE_9__* @type_alias_get_aliasee(%struct.TYPE_9__* %33)
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call %struct.TYPE_9__* @type_pointer_get_ref(%struct.TYPE_9__* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi %struct.TYPE_9__* [ %34, %32 ], [ %37, %35 ]
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %4, align 8
  br label %6

40:                                               ; preds = %14
  %41 = call i32 @assert(i32 0)
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i64 @is_ptr(%struct.TYPE_9__*) #1

declare dso_local i64 @type_is_alias(%struct.TYPE_9__*) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local %struct.TYPE_9__* @type_alias_get_aliasee(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @type_pointer_get_ref(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

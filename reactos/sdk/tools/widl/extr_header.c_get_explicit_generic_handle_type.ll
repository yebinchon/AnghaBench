; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_get_explicit_generic_handle_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_get_explicit_generic_handle_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }

@TYPE_BASIC = common dso_local global i64 0, align 8
@TYPE_BASIC_HANDLE = common dso_local global i64 0, align 8
@ATTR_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @get_explicit_generic_handle_type(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** %4, align 8
  br label %8

8:                                                ; preds = %48, %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = call i64 @is_ptr(%struct.TYPE_14__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = call i64 @type_is_alias(%struct.TYPE_14__* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ true, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %50

18:                                               ; preds = %16
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i64 @type_get_type_detect_alias(%struct.TYPE_14__* %19)
  %21 = load i64, i64* @TYPE_BASIC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = call i64 @type_basic_get_type(%struct.TYPE_14__* %24)
  %26 = load i64, i64* @TYPE_BASIC_HANDLE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %18
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ATTR_HANDLE, align 4
  %33 = call i64 @is_attr(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %2, align 8
  br label %51

37:                                               ; preds = %28, %23
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = call i64 @type_is_alias(%struct.TYPE_14__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = call %struct.TYPE_14__* @type_alias_get_aliasee(%struct.TYPE_14__* %43)
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call %struct.TYPE_14__* @type_pointer_get_ref(%struct.TYPE_14__* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi %struct.TYPE_14__* [ %44, %42 ], [ %47, %45 ]
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %4, align 8
  br label %8

50:                                               ; preds = %16
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %52
}

declare dso_local i64 @is_ptr(%struct.TYPE_14__*) #1

declare dso_local i64 @type_is_alias(%struct.TYPE_14__*) #1

declare dso_local i64 @type_get_type_detect_alias(%struct.TYPE_14__*) #1

declare dso_local i64 @type_basic_get_type(%struct.TYPE_14__*) #1

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local %struct.TYPE_14__* @type_alias_get_aliasee(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @type_pointer_get_ref(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

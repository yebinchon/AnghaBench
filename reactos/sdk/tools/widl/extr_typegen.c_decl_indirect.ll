; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_decl_indirect.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_decl_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@TYPE_BASIC = common dso_local global i64 0, align 8
@TYPE_ENUM = common dso_local global i64 0, align 8
@TYPE_POINTER = common dso_local global i64 0, align 8
@TYPE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decl_indirect(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @is_user_type(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @type_get_type(i32* %10)
  %12 = load i64, i64* @TYPE_BASIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @type_get_type(i32* %15)
  %17 = load i64, i64* @TYPE_ENUM, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @type_get_type(i32* %20)
  %22 = load i64, i64* @TYPE_POINTER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @type_get_type(i32* %25)
  %27 = load i64, i64* @TYPE_ARRAY, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %24, %19, %14, %9
  %30 = phi i1 [ false, %19 ], [ false, %14 ], [ false, %9 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @is_user_type(i32*) #1

declare dso_local i64 @type_get_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

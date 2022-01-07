; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_add_explicit_handle_if_necessary.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_add_explicit_handle_if_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"IDL_handle\00", align 1
@ATTR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"handle_t\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @add_explicit_handle_if_necessary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_explicit_handle_if_necessary(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @get_func_handle_var(i32* %8, %struct.TYPE_6__* %9, i8* %5, i8* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12, %2
  %16 = call i32 @xstrdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = call %struct.TYPE_6__* @make_var(i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* @ATTR_IN, align 4
  %19 = call i32 @make_attr(i32 %18)
  %20 = call i32 @append_attr(i32* null, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = call i32 @find_type_or_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = call i32 @type_function_add_head_arg(i32 %28, %struct.TYPE_6__* %29)
  br label %31

31:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @get_func_handle_var(i32*, %struct.TYPE_6__*, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @make_var(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @append_attr(i32*, i32) #1

declare dso_local i32 @make_attr(i32) #1

declare dso_local i32 @find_type_or_error(i8*, i32) #1

declare dso_local i32 @type_function_add_head_arg(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

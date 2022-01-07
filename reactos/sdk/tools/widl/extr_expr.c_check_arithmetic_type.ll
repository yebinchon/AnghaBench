; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_check_arithmetic_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_check_arithmetic_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr_loc = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"arithmetic type required in expression%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" for attribute \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expr_loc*, i32*, i32*)* @check_arithmetic_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_arithmetic_type(%struct.expr_loc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.expr_loc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.expr_loc* %0, %struct.expr_loc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_integer_type(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @is_float_type(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %19 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %23 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %29 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %34 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %36 ]
  %39 = call i32 @error_loc_info(i32* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %38)
  br label %40

40:                                               ; preds = %37, %13, %9
  ret void
}

declare dso_local i32 @is_integer_type(i32*) #1

declare dso_local i32 @is_float_type(i32*) #1

declare dso_local i32 @error_loc_info(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

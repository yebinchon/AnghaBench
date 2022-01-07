; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_check_integer_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_expr.c_check_integer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr_loc = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"integer type required in expression%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c" for attribute \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expr_loc*, i32*, i32*)* @check_integer_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_integer_type(%struct.expr_loc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.expr_loc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.expr_loc* %0, %struct.expr_loc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @is_integer_type(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %15 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %19 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %24 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %25 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load %struct.expr_loc*, %struct.expr_loc** %4, align 8
  %30 = getelementptr inbounds %struct.expr_loc, %struct.expr_loc* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %32 ]
  %35 = call i32 @error_loc_info(i32* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %34)
  br label %36

36:                                               ; preds = %33, %9
  ret void
}

declare dso_local i32 @is_integer_type(i32*) #1

declare dso_local i32 @error_loc_info(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

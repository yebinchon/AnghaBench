; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_print_list_of_modi.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_print_list_of_modi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@num_available_modi = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@num_modi = common dso_local global i32 0, align 4
@modi = common dso_local global %struct.TYPE_3__** null, align 8
@available_modi = common dso_local global %struct.TYPE_3__** null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"        * %s%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@color_green = common dso_local global i8* null, align 8
@color_red = common dso_local global i8* null, align 8
@color_reset = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_list_of_modi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_list_of_modi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %68, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @num_available_modi, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %31, %10
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @num_modi, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @modi, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @available_modi, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp eq %struct.TYPE_3__* %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i64, i64* @TRUE, align 8
  store i64 %29, i64* %4, align 8
  br label %34

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %12

34:                                               ; preds = %28, %12
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** @color_green, align 8
  br label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** @color_red, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i8* [ %45, %44 ], [ %47, %46 ]
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %50 ]
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @available_modi, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i8*, i8** @color_reset, align 8
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8* [ %63, %62 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %64 ]
  %67 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %38, i8* %52, i32 %59, i8* %66)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %6

71:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

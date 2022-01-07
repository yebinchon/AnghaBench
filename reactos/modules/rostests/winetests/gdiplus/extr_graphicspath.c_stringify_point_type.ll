; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_stringify_point_type.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_graphicspath.c_stringify_point_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PathPointTypePathTypeMask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PathPointTypeStart\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"PathPointTypeLine\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"PathPointTypeBezier\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@PathPointTypePathMarker = common dso_local global i32 0, align 4
@PathPointTypeCloseSubpath = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c" | PathPointTypePathMarker\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c" | PathPointTypeCloseSubpath\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @stringify_point_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stringify_point_type(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  store i8 0, i8* %5, align 1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @PathPointTypePathTypeMask, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %18 [
    i32 128, label %9
    i32 129, label %12
    i32 130, label %15
  ]

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcat(i8* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strcat(i8* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %21

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcat(i8* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcat(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %53

21:                                               ; preds = %15, %12, %9
  %22 = load i32, i32* @PathPointTypePathTypeMask, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PathPointTypePathMarker, align 4
  %28 = load i32, i32* @PathPointTypeCloseSubpath, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i8*, i8** %4, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcat(i8* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %53

37:                                               ; preds = %21
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @PathPointTypePathMarker, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcat(i8* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @PathPointTypeCloseSubpath, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @strcat(i8* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %18, %33, %50, %45
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

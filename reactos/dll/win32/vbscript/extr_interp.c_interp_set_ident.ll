; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_interp_set_ident.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_interp_set_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"arguments not supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYPUTREF = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @interp_set_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_set_ident(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @debugstr_w(i32 %20)
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %27, i32* %2, align 4
  br label %58

28:                                               ; preds = %1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = call i32 @stack_assume_disp(%struct.TYPE_13__* %29, i32 0, i32* null)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @FAILED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @vbstack_to_dp(%struct.TYPE_13__* %37, i32 0, i32 %38, i32* %6)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DISPATCH_PROPERTYPUTREF, align 4
  %48 = call i32 @assign_ident(%struct.TYPE_13__* %40, i32 %46, i32 %47, i32* %6)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %36
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = call i32 @stack_popn(%struct.TYPE_13__* %55, i32 1)
  %57 = load i32, i32* @S_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %52, %34, %25
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @stack_assume_disp(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @vbstack_to_dp(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @assign_ident(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @stack_popn(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

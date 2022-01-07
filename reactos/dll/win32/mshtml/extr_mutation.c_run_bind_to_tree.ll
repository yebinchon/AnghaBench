; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_run_bind_to_tree.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_run_bind_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }

@.str = private unnamed_addr constant [12 x i8] c"(%p)->(%p)\0A\00", align 1
@IID_nsIDOMNode = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not get node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @run_bind_to_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_bind_to_tree(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %13)
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32** %8 to i8**
  %17 = call i32 @nsISupports_QueryInterface(i32* %15, i32* @IID_nsIDOMNode, i8** %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @NS_FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @get_node(i32* %24, i32* %25, i32 %26, %struct.TYPE_7__** %9)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @nsIDOMNode_Release(i32* %28)
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = call i32 @ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %23
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_7__*)* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = call i32 %48(%struct.TYPE_7__* %49)
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = call i32 @node_release(%struct.TYPE_7__* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %33, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @TRACE(i8*, i32*, i32*) #1

declare dso_local i32 @nsISupports_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @get_node(i32*, i32*, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @nsIDOMNode_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @node_release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

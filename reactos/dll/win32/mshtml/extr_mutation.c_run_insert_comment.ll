; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_run_insert_comment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_mutation.c_run_insert_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@IID_nsIDOMComment = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not get nsIDOMComment iface:%08x\0A\00", align 1
@NS_ERROR_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*)* @run_insert_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_insert_comment(%struct.TYPE_4__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32** %9 to i8**
  %16 = call i32 @nsISupports_QueryInterface(i32* %14, i32* @IID_nsIDOMComment, i8** %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @NS_FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = call i32 @nsAString_Init(i32* %11, i32* null)
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @nsIDOMComment_GetData(i32* %26, i32* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @NS_FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %60

33:                                               ; preds = %24
  %34 = call i32 @nsAString_GetData(i32* %11, i32** %8)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @handle_insert_comment(%struct.TYPE_4__* %35, i32* %36)
  store i32* %37, i32** %10, align 8
  %38 = call i32 @nsAString_Finish(i32* %11)
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %33
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @replace_node_by_html(i32 %44, i32* %45, i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @heap_free(i32* %48)
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @NS_ERROR_FAILURE, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %41
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @nsIDOMComment_Release(i32* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %31, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @nsISupports_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @nsAString_Init(i32*, i32*) #1

declare dso_local i32 @nsIDOMComment_GetData(i32*, i32*) #1

declare dso_local i32 @nsAString_GetData(i32*, i32**) #1

declare dso_local i32* @handle_insert_comment(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @nsAString_Finish(i32*) #1

declare dso_local i32 @replace_node_by_html(i32, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @nsIDOMComment_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

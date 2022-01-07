; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_required_buffer_size.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_required_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ATTR_IN = common dso_local global i32 0, align 4
@ATTR_OUT = common dso_local global i32 0, align 4
@PASS_IN = common dso_local global i32 0, align 4
@PASS_OUT = common dso_local global i32 0, align 4
@PASS_RETURN = common dso_local global i32 0, align 4
@ATTR_CONTEXTHANDLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @get_required_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_required_buffer_size(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATTR_IN, align 4
  %14 = call i32 @is_attr(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATTR_OUT, align 4
  %19 = call i32 @is_attr(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %22, %3
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PASS_IN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PASS_OUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PASS_RETURN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41, %38, %31
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = load i32, i32* @ATTR_CONTEXTHANDLE, align 4
  %48 = call i64 @is_ptrchain_attr(%struct.TYPE_4__* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  store i32 4, i32* %51, align 4
  store i32 20, i32* %4, align 4
  br label %76

52:                                               ; preds = %45
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @is_string_type(i32 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @get_required_buffer_size_type(i32 %64, i32 %67, i32 %70, i32 %71, i32* %72)
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74, %41
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %61, %50
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @is_attr(i32, i32) #1

declare dso_local i64 @is_ptrchain_attr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @is_string_type(i32, i32) #1

declare dso_local i32 @get_required_buffer_size_type(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

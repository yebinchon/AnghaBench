; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_get_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { i32 }
%struct.TYPE_7__ = type { i8*, %struct.namespace* }

@global_namespace = common dso_local global %struct.namespace zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @get_type(i32 %0, i8* %1, %struct.namespace* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.namespace* %2, %struct.namespace** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.namespace*, %struct.namespace** %8, align 8
  %12 = icmp ne %struct.namespace* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store %struct.namespace* @global_namespace, %struct.namespace** %8, align 8
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.namespace*, %struct.namespace** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.TYPE_7__* @find_type(i8* %18, %struct.namespace* %19, i32 %20)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %5, align 8
  br label %48

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.TYPE_7__* @make_type(i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.namespace*, %struct.namespace** %8, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store %struct.namespace* %35, %struct.namespace** %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %5, align 8
  br label %48

42:                                               ; preds = %29
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.namespace*, %struct.namespace** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.TYPE_7__* @reg_type(%struct.TYPE_7__* %43, i8* %44, %struct.namespace* %45, i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %5, align 8
  br label %48

48:                                               ; preds = %42, %40, %24
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %49
}

declare dso_local %struct.TYPE_7__* @find_type(i8*, %struct.namespace*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_7__* @make_type(i32) #1

declare dso_local %struct.TYPE_7__* @reg_type(%struct.TYPE_7__*, i8*, %struct.namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

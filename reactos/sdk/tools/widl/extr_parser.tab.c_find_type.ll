; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_find_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { %struct.rtype** }
%struct.rtype = type { i32, i32*, i32, %struct.rtype* }

@global_namespace = common dso_local global %struct.namespace zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_type(i8* %0, %struct.namespace* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.namespace*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtype*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.namespace* %1, %struct.namespace** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.namespace*, %struct.namespace** %6, align 8
  %10 = icmp ne %struct.namespace* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %3
  %12 = load %struct.namespace*, %struct.namespace** %6, align 8
  %13 = icmp ne %struct.namespace* %12, @global_namespace
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load %struct.namespace*, %struct.namespace** %6, align 8
  %16 = getelementptr inbounds %struct.namespace, %struct.namespace* %15, i32 0, i32 0
  %17 = load %struct.rtype**, %struct.rtype*** %16, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @hash_ident(i8* %18)
  %20 = getelementptr inbounds %struct.rtype*, %struct.rtype** %17, i64 %19
  %21 = load %struct.rtype*, %struct.rtype** %20, align 8
  store %struct.rtype* %21, %struct.rtype** %8, align 8
  br label %22

22:                                               ; preds = %43, %14
  %23 = load %struct.rtype*, %struct.rtype** %8, align 8
  %24 = icmp ne %struct.rtype* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.rtype*, %struct.rtype** %8, align 8
  %27 = getelementptr inbounds %struct.rtype, %struct.rtype* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.rtype*, %struct.rtype** %8, align 8
  %33 = getelementptr inbounds %struct.rtype, %struct.rtype* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strcmp(i32 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.rtype*, %struct.rtype** %8, align 8
  %40 = getelementptr inbounds %struct.rtype, %struct.rtype* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %4, align 8
  br label %80

42:                                               ; preds = %31, %25
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.rtype*, %struct.rtype** %8, align 8
  %45 = getelementptr inbounds %struct.rtype, %struct.rtype* %44, i32 0, i32 3
  %46 = load %struct.rtype*, %struct.rtype** %45, align 8
  store %struct.rtype* %46, %struct.rtype** %8, align 8
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %11, %3
  %49 = load %struct.rtype**, %struct.rtype*** getelementptr inbounds (%struct.namespace, %struct.namespace* @global_namespace, i32 0, i32 0), align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @hash_ident(i8* %50)
  %52 = getelementptr inbounds %struct.rtype*, %struct.rtype** %49, i64 %51
  %53 = load %struct.rtype*, %struct.rtype** %52, align 8
  store %struct.rtype* %53, %struct.rtype** %8, align 8
  br label %54

54:                                               ; preds = %75, %48
  %55 = load %struct.rtype*, %struct.rtype** %8, align 8
  %56 = icmp ne %struct.rtype* %55, null
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.rtype*, %struct.rtype** %8, align 8
  %59 = getelementptr inbounds %struct.rtype, %struct.rtype* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.rtype*, %struct.rtype** %8, align 8
  %65 = getelementptr inbounds %struct.rtype, %struct.rtype* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strcmp(i32 %66, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load %struct.rtype*, %struct.rtype** %8, align 8
  %72 = getelementptr inbounds %struct.rtype, %struct.rtype* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %4, align 8
  br label %80

74:                                               ; preds = %63, %57
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.rtype*, %struct.rtype** %8, align 8
  %77 = getelementptr inbounds %struct.rtype, %struct.rtype* %76, i32 0, i32 3
  %78 = load %struct.rtype*, %struct.rtype** %77, align 8
  store %struct.rtype* %78, %struct.rtype** %8, align 8
  br label %54

79:                                               ; preds = %54
  store i32* null, i32** %4, align 8
  br label %80

80:                                               ; preds = %79, %70, %38
  %81 = load i32*, i32** %4, align 8
  ret i32* %81
}

declare dso_local i64 @hash_ident(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

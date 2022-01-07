; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_reg_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_reg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namespace = type { %struct.rtype** }
%struct.rtype = type { i8*, i32, %struct.rtype*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [37 x i8] c"registering named type without name\0A\00", align 1
@global_namespace = common dso_local global %struct.namespace zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"__x_\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"_C\00", align 1
@tsSTRUCT = common dso_local global i32 0, align 4
@tsUNION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @reg_type(%struct.TYPE_5__* %0, i8* %1, %struct.namespace* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.namespace*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtype*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.namespace* %2, %struct.namespace** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = call i32 @error_loc(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  br label %76

17:                                               ; preds = %4
  %18 = load %struct.namespace*, %struct.namespace** %8, align 8
  %19 = icmp ne %struct.namespace* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store %struct.namespace* @global_namespace, %struct.namespace** %8, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @hash_ident(i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = call %struct.rtype* @xmalloc(i32 32)
  store %struct.rtype* %24, %struct.rtype** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.rtype*, %struct.rtype** %10, align 8
  %27 = getelementptr inbounds %struct.rtype, %struct.rtype* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.namespace*, %struct.namespace** %8, align 8
  %29 = call i64 @is_global_namespace(%struct.namespace* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %41

35:                                               ; preds = %21
  %36 = load %struct.namespace*, %struct.namespace** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i8* @format_namespace(%struct.namespace* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = load %struct.rtype*, %struct.rtype** %10, align 8
  %44 = getelementptr inbounds %struct.rtype, %struct.rtype* %43, i32 0, i32 3
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.rtype*, %struct.rtype** %10, align 8
  %47 = getelementptr inbounds %struct.rtype, %struct.rtype* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.namespace*, %struct.namespace** %8, align 8
  %49 = getelementptr inbounds %struct.namespace, %struct.namespace* %48, i32 0, i32 0
  %50 = load %struct.rtype**, %struct.rtype*** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rtype*, %struct.rtype** %50, i64 %52
  %54 = load %struct.rtype*, %struct.rtype** %53, align 8
  %55 = load %struct.rtype*, %struct.rtype** %10, align 8
  %56 = getelementptr inbounds %struct.rtype, %struct.rtype* %55, i32 0, i32 2
  store %struct.rtype* %54, %struct.rtype** %56, align 8
  %57 = load %struct.rtype*, %struct.rtype** %10, align 8
  %58 = load %struct.namespace*, %struct.namespace** %8, align 8
  %59 = getelementptr inbounds %struct.namespace, %struct.namespace* %58, i32 0, i32 0
  %60 = load %struct.rtype**, %struct.rtype*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rtype*, %struct.rtype** %60, i64 %62
  store %struct.rtype* %57, %struct.rtype** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @tsSTRUCT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %41
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @tsUNION, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %41
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = call i32 @fix_incomplete_types(%struct.TYPE_5__* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %5, align 8
  br label %76

76:                                               ; preds = %74, %14
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %77
}

declare dso_local i32 @error_loc(i8*) #1

declare dso_local i32 @hash_ident(i8*) #1

declare dso_local %struct.rtype* @xmalloc(i32) #1

declare dso_local i64 @is_global_namespace(%struct.namespace*) #1

declare dso_local i8* @format_namespace(%struct.namespace*, i8*, i8*, i8*) #1

declare dso_local i32 @fix_incomplete_types(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

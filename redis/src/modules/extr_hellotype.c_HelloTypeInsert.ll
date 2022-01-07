; ModuleID = '/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeInsert.c'
source_filename = "/home/carl/AnghaBench/redis/src/modules/extr_hellotype.c_HelloTypeInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HelloTypeObject = type { i32, %struct.HelloTypeNode* }
%struct.HelloTypeNode = type { i64, %struct.HelloTypeNode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HelloTypeInsert(%struct.HelloTypeObject* %0, i64 %1) #0 {
  %3 = alloca %struct.HelloTypeObject*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.HelloTypeNode*, align 8
  %6 = alloca %struct.HelloTypeNode*, align 8
  %7 = alloca %struct.HelloTypeNode*, align 8
  store %struct.HelloTypeObject* %0, %struct.HelloTypeObject** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %3, align 8
  %9 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %8, i32 0, i32 1
  %10 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %9, align 8
  store %struct.HelloTypeNode* %10, %struct.HelloTypeNode** %5, align 8
  store %struct.HelloTypeNode* null, %struct.HelloTypeNode** %7, align 8
  br label %11

11:                                               ; preds = %22, %2
  %12 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %5, align 8
  %13 = icmp ne %struct.HelloTypeNode* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %5, align 8
  %16 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %5, align 8
  store %struct.HelloTypeNode* %23, %struct.HelloTypeNode** %7, align 8
  %24 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %5, align 8
  %25 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %24, i32 0, i32 1
  %26 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %25, align 8
  store %struct.HelloTypeNode* %26, %struct.HelloTypeNode** %5, align 8
  br label %11

27:                                               ; preds = %20
  %28 = call %struct.HelloTypeNode* @RedisModule_Alloc(i32 16)
  store %struct.HelloTypeNode* %28, %struct.HelloTypeNode** %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %6, align 8
  %31 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %5, align 8
  %33 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %6, align 8
  %34 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %33, i32 0, i32 1
  store %struct.HelloTypeNode* %32, %struct.HelloTypeNode** %34, align 8
  %35 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %7, align 8
  %36 = icmp ne %struct.HelloTypeNode* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %6, align 8
  %39 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %7, align 8
  %40 = getelementptr inbounds %struct.HelloTypeNode, %struct.HelloTypeNode* %39, i32 0, i32 1
  store %struct.HelloTypeNode* %38, %struct.HelloTypeNode** %40, align 8
  br label %45

41:                                               ; preds = %27
  %42 = load %struct.HelloTypeNode*, %struct.HelloTypeNode** %6, align 8
  %43 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %3, align 8
  %44 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %43, i32 0, i32 1
  store %struct.HelloTypeNode* %42, %struct.HelloTypeNode** %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.HelloTypeObject*, %struct.HelloTypeObject** %3, align 8
  %47 = getelementptr inbounds %struct.HelloTypeObject, %struct.HelloTypeObject* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  ret void
}

declare dso_local %struct.HelloTypeNode* @RedisModule_Alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

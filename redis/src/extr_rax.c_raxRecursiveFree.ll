; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxRecursiveFree.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxRecursiveFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"free traversing\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"free depth-first\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raxRecursiveFree(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, void (i8*)* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store void (i8*)* %2, void (i8*)** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = call i32 @debugnode(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 1, %16 ], [ %20, %17 ]
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = call %struct.TYPE_12__** @raxNodeLastChildPtr(%struct.TYPE_12__* %23)
  store %struct.TYPE_12__** %24, %struct.TYPE_12__*** %8, align 8
  br label %25

25:                                               ; preds = %29, %21
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %31 = call i32 @memcpy(%struct.TYPE_12__** %9, %struct.TYPE_12__** %30, i32 8)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = load void (i8*)*, void (i8*)** %6, align 8
  call void @raxRecursiveFree(%struct.TYPE_13__* %32, %struct.TYPE_12__* %33, void (i8*)* %34)
  %35 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %35, i32 -1
  store %struct.TYPE_12__** %36, %struct.TYPE_12__*** %8, align 8
  br label %25

37:                                               ; preds = %25
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = call i32 @debugnode(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %38)
  %40 = load void (i8*)*, void (i8*)** %6, align 8
  %41 = icmp ne void (i8*)* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load void (i8*)*, void (i8*)** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = call i8* @raxGetData(%struct.TYPE_12__* %54)
  call void %53(i8* %55)
  br label %56

56:                                               ; preds = %52, %47, %42, %37
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = call i32 @rax_free(%struct.TYPE_12__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local i32 @debugnode(i8*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__** @raxNodeLastChildPtr(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__**, %struct.TYPE_12__**, i32) #1

declare dso_local i8* @raxGetData(%struct.TYPE_12__*) #1

declare dso_local i32 @rax_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

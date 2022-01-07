; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_statementlist.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_statementlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8 }

@TK_CASE = common dso_local global i8 0, align 1
@TK_DEFAULT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*)* @statementlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @statementlist(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 125
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @TK_CASE, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @TK_DEFAULT, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19, %11, %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %67

28:                                               ; preds = %19
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @statement(%struct.TYPE_8__* %29)
  %31 = call i8* @LIST(i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %4, align 8
  br label %33

33:                                               ; preds = %57, %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 125
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @TK_CASE, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* @TK_DEFAULT, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %51, %53
  br label %55

55:                                               ; preds = %47, %39, %33
  %56 = phi i1 [ false, %39 ], [ false, %33 ], [ %54, %47 ]
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = call i32 @statement(%struct.TYPE_8__* %58)
  %60 = call i8* @LIST(i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_9__*
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %5, align 8
  br label %33

64:                                               ; preds = %55
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call %struct.TYPE_9__* @jsP_list(%struct.TYPE_9__* %65)
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %2, align 8
  br label %67

67:                                               ; preds = %64, %27
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %68
}

declare dso_local i8* @LIST(i32) #1

declare dso_local i32 @statement(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @jsP_list(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

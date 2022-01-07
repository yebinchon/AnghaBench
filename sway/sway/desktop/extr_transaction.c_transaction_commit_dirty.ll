; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_commit_dirty.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_commit_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_node** }
%struct.sway_node = type { i32 }
%struct.sway_transaction = type { i32 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transaction_commit_dirty() #0 {
  %1 = alloca %struct.sway_transaction*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.sway_node*, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %51

9:                                                ; preds = %0
  %10 = call %struct.sway_transaction* (...) @transaction_create()
  store %struct.sway_transaction* %10, %struct.sway_transaction** %1, align 8
  %11 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %12 = icmp ne %struct.sway_transaction* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %51

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.sway_node**, %struct.sway_node*** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sway_node*, %struct.sway_node** %24, i64 %26
  %28 = load %struct.sway_node*, %struct.sway_node** %27, align 8
  store %struct.sway_node* %28, %struct.sway_node** %3, align 8
  %29 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %30 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %31 = call i32 @transaction_add_node(%struct.sway_transaction* %29, %struct.sway_node* %30)
  %32 = load %struct.sway_node*, %struct.sway_node** %3, align 8
  %33 = getelementptr inbounds %struct.sway_node, %struct.sway_node* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %41 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %42 = call i32 @list_add(%struct.TYPE_6__* %40, %struct.sway_transaction* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %49 = call i32 @transaction_commit(%struct.sway_transaction* %48)
  %50 = call i32 (...) @transaction_progress_queue()
  br label %51

51:                                               ; preds = %8, %13, %47, %37
  ret void
}

declare dso_local %struct.sway_transaction* @transaction_create(...) #1

declare dso_local i32 @transaction_add_node(%struct.sway_transaction*, %struct.sway_node*) #1

declare dso_local i32 @list_add(%struct.TYPE_6__*, %struct.sway_transaction*) #1

declare dso_local i32 @transaction_commit(%struct.sway_transaction*) #1

declare dso_local i32 @transaction_progress_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

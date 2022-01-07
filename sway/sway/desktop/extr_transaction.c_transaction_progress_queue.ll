; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_progress_queue.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_progress_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.sway_transaction** }
%struct.sway_transaction = type { i64 }

@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @transaction_progress_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transaction_progress_queue() #0 {
  %1 = alloca %struct.sway_transaction*, align 8
  %2 = alloca %struct.sway_transaction*, align 8
  %3 = alloca %struct.sway_transaction*, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %70

9:                                                ; preds = %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.sway_transaction**, %struct.sway_transaction*** %11, align 8
  %13 = getelementptr inbounds %struct.sway_transaction*, %struct.sway_transaction** %12, i64 0
  %14 = load %struct.sway_transaction*, %struct.sway_transaction** %13, align 8
  store %struct.sway_transaction* %14, %struct.sway_transaction** %1, align 8
  %15 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %16 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %70

20:                                               ; preds = %9
  %21 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %22 = call i32 @transaction_apply(%struct.sway_transaction* %21)
  %23 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %24 = call i32 @transaction_destroy(%struct.sway_transaction* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %26 = call i32 @list_del(%struct.TYPE_4__* %25, i32 0)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 1), align 8
  %33 = call i32 @sway_idle_inhibit_v1_check_active(i32 %32)
  br label %70

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %61, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.sway_transaction**, %struct.sway_transaction*** %42, align 8
  %44 = getelementptr inbounds %struct.sway_transaction*, %struct.sway_transaction** %43, i64 0
  %45 = load %struct.sway_transaction*, %struct.sway_transaction** %44, align 8
  store %struct.sway_transaction* %45, %struct.sway_transaction** %2, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.sway_transaction**, %struct.sway_transaction*** %47, align 8
  %49 = getelementptr inbounds %struct.sway_transaction*, %struct.sway_transaction** %48, i64 1
  %50 = load %struct.sway_transaction*, %struct.sway_transaction** %49, align 8
  store %struct.sway_transaction* %50, %struct.sway_transaction** %3, align 8
  %51 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %52 = load %struct.sway_transaction*, %struct.sway_transaction** %3, align 8
  %53 = call i64 @transaction_same_nodes(%struct.sway_transaction* %51, %struct.sway_transaction* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %57 = call i32 @list_del(%struct.TYPE_4__* %56, i32 0)
  %58 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %59 = call i32 @transaction_destroy(%struct.sway_transaction* %58)
  br label %61

60:                                               ; preds = %40
  br label %62

61:                                               ; preds = %55
  br label %35

62:                                               ; preds = %60, %35
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.sway_transaction**, %struct.sway_transaction*** %64, align 8
  %66 = getelementptr inbounds %struct.sway_transaction*, %struct.sway_transaction** %65, i64 0
  %67 = load %struct.sway_transaction*, %struct.sway_transaction** %66, align 8
  store %struct.sway_transaction* %67, %struct.sway_transaction** %1, align 8
  %68 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  %69 = call i32 @transaction_commit(%struct.sway_transaction* %68)
  call void @transaction_progress_queue()
  br label %70

70:                                               ; preds = %62, %31, %19, %8
  ret void
}

declare dso_local i32 @transaction_apply(%struct.sway_transaction*) #1

declare dso_local i32 @transaction_destroy(%struct.sway_transaction*) #1

declare dso_local i32 @list_del(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sway_idle_inhibit_v1_check_active(i32) #1

declare dso_local i64 @transaction_same_nodes(%struct.sway_transaction*, %struct.sway_transaction*) #1

declare dso_local i32 @transaction_commit(%struct.sway_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_transaction.c_transaction_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_transaction = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unable to allocate transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sway_transaction* ()* @transaction_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sway_transaction* @transaction_create() #0 {
  %1 = alloca %struct.sway_transaction*, align 8
  %2 = alloca %struct.sway_transaction*, align 8
  %3 = call %struct.sway_transaction* @calloc(i32 1, i32 4)
  store %struct.sway_transaction* %3, %struct.sway_transaction** %2, align 8
  %4 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %5 = call i32 @sway_assert(%struct.sway_transaction* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.sway_transaction* null, %struct.sway_transaction** %1, align 8
  br label %13

8:                                                ; preds = %0
  %9 = call i32 (...) @create_list()
  %10 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  %11 = getelementptr inbounds %struct.sway_transaction, %struct.sway_transaction* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.sway_transaction*, %struct.sway_transaction** %2, align 8
  store %struct.sway_transaction* %12, %struct.sway_transaction** %1, align 8
  br label %13

13:                                               ; preds = %8, %7
  %14 = load %struct.sway_transaction*, %struct.sway_transaction** %1, align 8
  ret %struct.sway_transaction* %14
}

declare dso_local %struct.sway_transaction* @calloc(i32, i32) #1

declare dso_local i32 @sway_assert(%struct.sway_transaction*, i8*) #1

declare dso_local i32 @create_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

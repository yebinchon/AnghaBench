; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/pdh/extr_pdh_main.c_create_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/pdh/extr_pdh_main.c_create_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query = type { i32, i32 }

@PDH_MAGIC_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.query* ()* @create_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.query* @create_query() #0 {
  %1 = alloca %struct.query*, align 8
  %2 = alloca %struct.query*, align 8
  %3 = call %struct.query* @heap_alloc_zero(i32 8)
  store %struct.query* %3, %struct.query** %2, align 8
  %4 = icmp ne %struct.query* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @PDH_MAGIC_QUERY, align 4
  %7 = load %struct.query*, %struct.query** %2, align 8
  %8 = getelementptr inbounds %struct.query, %struct.query* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.query*, %struct.query** %2, align 8
  %10 = getelementptr inbounds %struct.query, %struct.query* %9, i32 0, i32 0
  %11 = call i32 @list_init(i32* %10)
  %12 = load %struct.query*, %struct.query** %2, align 8
  store %struct.query* %12, %struct.query** %1, align 8
  br label %14

13:                                               ; preds = %0
  store %struct.query* null, %struct.query** %1, align 8
  br label %14

14:                                               ; preds = %13, %5
  %15 = load %struct.query*, %struct.query** %1, align 8
  ret %struct.query* %15
}

declare dso_local %struct.query* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

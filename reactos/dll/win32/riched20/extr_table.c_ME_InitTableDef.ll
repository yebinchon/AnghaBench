; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_InitTableDef.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_InitTableDef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.RTFTable = type { i32, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_InitTableDef(%struct.TYPE_3__* %0, %struct.RTFTable* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.RTFTable*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.RTFTable* %1, %struct.RTFTable** %4, align 8
  %5 = load %struct.RTFTable*, %struct.RTFTable** %4, align 8
  %6 = getelementptr inbounds %struct.RTFTable, %struct.RTFTable* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ZeroMemory(i32 %7, i32 4)
  %9 = load %struct.RTFTable*, %struct.RTFTable** %4, align 8
  %10 = getelementptr inbounds %struct.RTFTable, %struct.RTFTable* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ZeroMemory(i32 %11, i32 4)
  %13 = load %struct.RTFTable*, %struct.RTFTable** %4, align 8
  %14 = getelementptr inbounds %struct.RTFTable, %struct.RTFTable* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.RTFTable*, %struct.RTFTable** %4, align 8
  %16 = getelementptr inbounds %struct.RTFTable, %struct.RTFTable* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.RTFTable*, %struct.RTFTable** %4, align 8
  %23 = getelementptr inbounds %struct.RTFTable, %struct.RTFTable* %22, i32 0, i32 0
  store i32 10, i32* %23, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load %struct.RTFTable*, %struct.RTFTable** %4, align 8
  %26 = getelementptr inbounds %struct.RTFTable, %struct.RTFTable* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @ZeroMemory(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_DbgHelpAddLineEntry.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym.c_DbgHelpAddLineEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DbgHelpLineEntry = type { i32 }
%struct.DbgHelpStringTab = type { i32, i32, %struct.DbgHelpLineEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.DbgHelpLineEntry* (%struct.DbgHelpStringTab*)* @DbgHelpAddLineEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.DbgHelpLineEntry* @DbgHelpAddLineEntry(%struct.DbgHelpStringTab* %0) #0 {
  %2 = alloca %struct.DbgHelpLineEntry*, align 8
  %3 = alloca %struct.DbgHelpStringTab*, align 8
  %4 = alloca %struct.DbgHelpLineEntry*, align 8
  store %struct.DbgHelpStringTab* %0, %struct.DbgHelpStringTab** %3, align 8
  %5 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %6 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %9 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %14 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %13, i32 0, i32 2
  %15 = load %struct.DbgHelpLineEntry*, %struct.DbgHelpLineEntry** %14, align 8
  %16 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %17 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call %struct.DbgHelpLineEntry* @realloc(%struct.DbgHelpLineEntry* %15, i32 %22)
  store %struct.DbgHelpLineEntry* %23, %struct.DbgHelpLineEntry** %4, align 8
  %24 = load %struct.DbgHelpLineEntry*, %struct.DbgHelpLineEntry** %4, align 8
  %25 = icmp ne %struct.DbgHelpLineEntry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  store %struct.DbgHelpLineEntry* null, %struct.DbgHelpLineEntry** %2, align 8
  br label %60

27:                                               ; preds = %12
  %28 = load %struct.DbgHelpLineEntry*, %struct.DbgHelpLineEntry** %4, align 8
  %29 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %30 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %29, i32 0, i32 2
  store %struct.DbgHelpLineEntry* %28, %struct.DbgHelpLineEntry** %30, align 8
  %31 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %32 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %31, i32 0, i32 2
  %33 = load %struct.DbgHelpLineEntry*, %struct.DbgHelpLineEntry** %32, align 8
  %34 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %35 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.DbgHelpLineEntry, %struct.DbgHelpLineEntry* %33, i64 %37
  %39 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %40 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memset(%struct.DbgHelpLineEntry* %38, i32 0, i32 %44)
  %46 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %47 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %27, %1
  %51 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %52 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %51, i32 0, i32 2
  %53 = load %struct.DbgHelpLineEntry*, %struct.DbgHelpLineEntry** %52, align 8
  %54 = load %struct.DbgHelpStringTab*, %struct.DbgHelpStringTab** %3, align 8
  %55 = getelementptr inbounds %struct.DbgHelpStringTab, %struct.DbgHelpStringTab* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.DbgHelpLineEntry, %struct.DbgHelpLineEntry* %53, i64 %58
  store %struct.DbgHelpLineEntry* %59, %struct.DbgHelpLineEntry** %2, align 8
  br label %60

60:                                               ; preds = %50, %26
  %61 = load %struct.DbgHelpLineEntry*, %struct.DbgHelpLineEntry** %2, align 8
  ret %struct.DbgHelpLineEntry* %61
}

declare dso_local %struct.DbgHelpLineEntry* @realloc(%struct.DbgHelpLineEntry*, i32) #1

declare dso_local i32 @memset(%struct.DbgHelpLineEntry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_redact_node_compare_end.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_redact_node_compare_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_node = type { i64, %struct.redact_record* }
%struct.redact_record = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @redact_node_compare_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redact_node_compare_end(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.redact_node*, align 8
  %7 = alloca %struct.redact_node*, align 8
  %8 = alloca %struct.redact_record*, align 8
  %9 = alloca %struct.redact_record*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.redact_node*
  store %struct.redact_node* %12, %struct.redact_node** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.redact_node*
  store %struct.redact_node* %14, %struct.redact_node** %7, align 8
  %15 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %16 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %15, i32 0, i32 1
  %17 = load %struct.redact_record*, %struct.redact_record** %16, align 8
  store %struct.redact_record* %17, %struct.redact_record** %8, align 8
  %18 = load %struct.redact_node*, %struct.redact_node** %7, align 8
  %19 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %18, i32 0, i32 1
  %20 = load %struct.redact_record*, %struct.redact_record** %19, align 8
  store %struct.redact_record* %20, %struct.redact_record** %9, align 8
  %21 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %22 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

26:                                               ; preds = %2
  %27 = load %struct.redact_record*, %struct.redact_record** %9, align 8
  %28 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %66

32:                                               ; preds = %26
  %33 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %34 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %37 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.redact_record*, %struct.redact_record** %8, align 8
  %40 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.redact_record*, %struct.redact_record** %9, align 8
  %43 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.redact_record*, %struct.redact_record** %9, align 8
  %46 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.redact_record*, %struct.redact_record** %9, align 8
  %49 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @redact_range_compare(i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %32
  %55 = load %struct.redact_node*, %struct.redact_node** %6, align 8
  %56 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.redact_node*, %struct.redact_node** %7, align 8
  %59 = getelementptr inbounds %struct.redact_node, %struct.redact_node* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 -1, i32 1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %54, %32
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %31, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @redact_range_compare(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

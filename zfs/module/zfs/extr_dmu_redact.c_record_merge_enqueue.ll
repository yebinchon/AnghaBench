; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_record_merge_enqueue.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_redact.c_record_merge_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redact_record = type { i64, i64, i64, i64, i64 }

@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.redact_record**, %struct.redact_record*)* @record_merge_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_merge_enqueue(i32* %0, %struct.redact_record** %1, %struct.redact_record* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.redact_record**, align 8
  %6 = alloca %struct.redact_record*, align 8
  %7 = alloca %struct.redact_record*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.redact_record** %1, %struct.redact_record*** %5, align 8
  store %struct.redact_record* %2, %struct.redact_record** %6, align 8
  %8 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %9 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.redact_record**, %struct.redact_record*** %5, align 8
  %14 = load %struct.redact_record*, %struct.redact_record** %13, align 8
  %15 = icmp ne %struct.redact_record* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.redact_record**, %struct.redact_record*** %5, align 8
  %19 = load %struct.redact_record*, %struct.redact_record** %18, align 8
  %20 = call i32 @bqueue_enqueue(i32* %17, %struct.redact_record* %19, i32 8)
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %24 = call i32 @bqueue_enqueue_flush(i32* %22, %struct.redact_record* %23, i32 40)
  br label %96

25:                                               ; preds = %3
  %26 = load %struct.redact_record**, %struct.redact_record*** %5, align 8
  %27 = load %struct.redact_record*, %struct.redact_record** %26, align 8
  %28 = icmp eq %struct.redact_record* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %31 = load %struct.redact_record**, %struct.redact_record*** %5, align 8
  store %struct.redact_record* %30, %struct.redact_record** %31, align 8
  br label %96

32:                                               ; preds = %25
  %33 = load %struct.redact_record**, %struct.redact_record*** %5, align 8
  %34 = load %struct.redact_record*, %struct.redact_record** %33, align 8
  store %struct.redact_record* %34, %struct.redact_record** %7, align 8
  %35 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %36 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %39 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %32
  %43 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %44 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %48 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %53 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UINT64_MAX, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %77, label %57

57:                                               ; preds = %51, %42, %32
  %58 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %59 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %63 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %57
  %67 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %68 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UINT64_MAX, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %74 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72, %51
  %78 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %79 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %82 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %84 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %87 = getelementptr inbounds %struct.redact_record, %struct.redact_record* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %89 = call i32 @kmem_free(%struct.redact_record* %88, i32 40)
  br label %96

90:                                               ; preds = %72, %66, %57
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.redact_record*, %struct.redact_record** %7, align 8
  %93 = call i32 @bqueue_enqueue(i32* %91, %struct.redact_record* %92, i32 40)
  %94 = load %struct.redact_record*, %struct.redact_record** %6, align 8
  %95 = load %struct.redact_record**, %struct.redact_record*** %5, align 8
  store %struct.redact_record* %94, %struct.redact_record** %95, align 8
  br label %96

96:                                               ; preds = %21, %29, %90, %77
  ret void
}

declare dso_local i32 @bqueue_enqueue(i32*, %struct.redact_record*, i32) #1

declare dso_local i32 @bqueue_enqueue_flush(i32*, %struct.redact_record*, i32) #1

declare dso_local i32 @kmem_free(%struct.redact_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

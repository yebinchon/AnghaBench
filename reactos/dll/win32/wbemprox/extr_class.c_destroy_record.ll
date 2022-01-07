; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_destroy_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_destroy_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i64, i32, %struct.record*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.record* }

@CIM_STRING = common dso_local global i32 0, align 4
@CIM_DATETIME = common dso_local global i32 0, align 4
@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@CIM_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.record*)* @destroy_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_record(%struct.record* %0) #0 {
  %2 = alloca %struct.record*, align 8
  %3 = alloca i64, align 8
  store %struct.record* %0, %struct.record** %2, align 8
  %4 = load %struct.record*, %struct.record** %2, align 8
  %5 = icmp ne %struct.record* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %90

7:                                                ; preds = %1
  %8 = load %struct.record*, %struct.record** %2, align 8
  %9 = getelementptr inbounds %struct.record, %struct.record* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @release_table(i32 %10)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %80, %7
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.record*, %struct.record** %2, align 8
  %15 = getelementptr inbounds %struct.record, %struct.record* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %12
  %19 = load %struct.record*, %struct.record** %2, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 2
  %21 = load %struct.record*, %struct.record** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.record, %struct.record* %21, i64 %22
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CIM_STRING, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load %struct.record*, %struct.record** %2, align 8
  %30 = getelementptr inbounds %struct.record, %struct.record* %29, i32 0, i32 2
  %31 = load %struct.record*, %struct.record** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds %struct.record, %struct.record* %31, i64 %32
  %34 = getelementptr inbounds %struct.record, %struct.record* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CIM_DATETIME, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %28, %18
  %39 = load %struct.record*, %struct.record** %2, align 8
  %40 = getelementptr inbounds %struct.record, %struct.record* %39, i32 0, i32 2
  %41 = load %struct.record*, %struct.record** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.record, %struct.record* %41, i64 %42
  %44 = getelementptr inbounds %struct.record, %struct.record* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.record*, %struct.record** %45, align 8
  %47 = call i32 @heap_free(%struct.record* %46)
  br label %79

48:                                               ; preds = %28
  %49 = load %struct.record*, %struct.record** %2, align 8
  %50 = getelementptr inbounds %struct.record, %struct.record* %49, i32 0, i32 2
  %51 = load %struct.record*, %struct.record** %50, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.record, %struct.record* %51, i64 %52
  %54 = getelementptr inbounds %struct.record, %struct.record* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %48
  %60 = load %struct.record*, %struct.record** %2, align 8
  %61 = getelementptr inbounds %struct.record, %struct.record* %60, i32 0, i32 2
  %62 = load %struct.record*, %struct.record** %61, align 8
  %63 = load i64, i64* %3, align 8
  %64 = getelementptr inbounds %struct.record, %struct.record* %62, i64 %63
  %65 = getelementptr inbounds %struct.record, %struct.record* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.record*, %struct.record** %2, align 8
  %69 = getelementptr inbounds %struct.record, %struct.record* %68, i32 0, i32 2
  %70 = load %struct.record*, %struct.record** %69, align 8
  %71 = load i64, i64* %3, align 8
  %72 = getelementptr inbounds %struct.record, %struct.record* %70, i64 %71
  %73 = getelementptr inbounds %struct.record, %struct.record* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CIM_TYPE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @destroy_array(i32 %67, i32 %76)
  br label %78

78:                                               ; preds = %59, %48
  br label %79

79:                                               ; preds = %78, %38
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %12

83:                                               ; preds = %12
  %84 = load %struct.record*, %struct.record** %2, align 8
  %85 = getelementptr inbounds %struct.record, %struct.record* %84, i32 0, i32 2
  %86 = load %struct.record*, %struct.record** %85, align 8
  %87 = call i32 @heap_free(%struct.record* %86)
  %88 = load %struct.record*, %struct.record** %2, align 8
  %89 = call i32 @heap_free(%struct.record* %88)
  br label %90

90:                                               ; preds = %83, %6
  ret void
}

declare dso_local i32 @release_table(i32) #1

declare dso_local i32 @heap_free(%struct.record*) #1

declare dso_local i32 @destroy_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

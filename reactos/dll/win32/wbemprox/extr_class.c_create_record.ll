; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_create_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_class.c_create_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.record* (%struct.table*)* @create_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.record* @create_record(%struct.table* %0) #0 {
  %2 = alloca %struct.record*, align 8
  %3 = alloca %struct.table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.record*, align 8
  store %struct.table* %0, %struct.table** %3, align 8
  %6 = call i8* @heap_alloc(i32 24)
  %7 = bitcast i8* %6 to %struct.record*
  store %struct.record* %7, %struct.record** %5, align 8
  %8 = icmp ne %struct.record* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.record* null, %struct.record** %2, align 8
  br label %82

10:                                               ; preds = %1
  %11 = load %struct.table*, %struct.table** %3, align 8
  %12 = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* @heap_alloc(i32 %16)
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  %19 = load %struct.record*, %struct.record** %5, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 2
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %20, align 8
  %21 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = load %struct.record*, %struct.record** %5, align 8
  %24 = call i32 @heap_free(%struct.record* %23)
  store %struct.record* null, %struct.record** %2, align 8
  br label %82

25:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.table*, %struct.table** %3, align 8
  %29 = getelementptr inbounds %struct.table, %struct.table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %26
  %34 = load %struct.table*, %struct.table** %3, align 8
  %35 = getelementptr inbounds %struct.table, %struct.table* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.record*, %struct.record** %5, align 8
  %42 = getelementptr inbounds %struct.record, %struct.record* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %40, i32* %46, align 4
  %47 = load %struct.table*, %struct.table** %3, align 8
  %48 = getelementptr inbounds %struct.table, %struct.table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.record*, %struct.record** %5, align 8
  %55 = getelementptr inbounds %struct.record, %struct.record* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 %53, i32* %59, align 8
  %60 = load %struct.record*, %struct.record** %5, align 8
  %61 = getelementptr inbounds %struct.record, %struct.record* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %33
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %4, align 8
  br label %26

70:                                               ; preds = %26
  %71 = load %struct.table*, %struct.table** %3, align 8
  %72 = getelementptr inbounds %struct.table, %struct.table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load %struct.record*, %struct.record** %5, align 8
  %76 = getelementptr inbounds %struct.record, %struct.record* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.table*, %struct.table** %3, align 8
  %78 = call i32 @addref_table(%struct.table* %77)
  %79 = load %struct.record*, %struct.record** %5, align 8
  %80 = getelementptr inbounds %struct.record, %struct.record* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.record*, %struct.record** %5, align 8
  store %struct.record* %81, %struct.record** %2, align 8
  br label %82

82:                                               ; preds = %70, %22, %9
  %83 = load %struct.record*, %struct.record** %2, align 8
  ret %struct.record* %83
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(%struct.record*) #1

declare dso_local i32 @addref_table(%struct.table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_find_part.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_find_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_body_part = type { i64, %struct.bus_body_part*, i64 }
%struct.TYPE_4__ = type { i64, %struct.bus_body_part*, %struct.bus_body_part }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bus_body_part* (%struct.TYPE_4__*, i64, i64, i8**)* @find_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bus_body_part* @find_part(%struct.TYPE_4__* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca %struct.bus_body_part*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.bus_body_part*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = call i32 @assert(%struct.TYPE_4__* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.bus_body_part*, %struct.bus_body_part** %16, align 8
  %18 = icmp ne %struct.bus_body_part* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.bus_body_part*, %struct.bus_body_part** %27, align 8
  store %struct.bus_body_part* %28, %struct.bus_body_part** %10, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  br label %35

32:                                               ; preds = %19, %4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store %struct.bus_body_part* %34, %struct.bus_body_part** %10, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %83, %35
  %37 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %38 = icmp ne %struct.bus_body_part* %37, null
  br i1 %38, label %39, label %92

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store %struct.bus_body_part* null, %struct.bus_body_part** %5, align 8
  br label %93

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %50 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = icmp ule i64 %47, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %44
  %55 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %56 = call i32 @bus_body_part_map(%struct.bus_body_part* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store %struct.bus_body_part* null, %struct.bus_body_part** %5, align 8
  br label %93

60:                                               ; preds = %54
  %61 = load i8**, i8*** %9, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %65 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = bitcast i32* %72 to i8*
  %74 = load i8**, i8*** %9, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %63, %60
  %76 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store %struct.bus_body_part* %76, %struct.bus_body_part** %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  store %struct.bus_body_part* %82, %struct.bus_body_part** %5, align 8
  br label %93

83:                                               ; preds = %44
  %84 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %85 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %11, align 8
  %89 = load %struct.bus_body_part*, %struct.bus_body_part** %10, align 8
  %90 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %89, i32 0, i32 1
  %91 = load %struct.bus_body_part*, %struct.bus_body_part** %90, align 8
  store %struct.bus_body_part* %91, %struct.bus_body_part** %10, align 8
  br label %36

92:                                               ; preds = %36
  store %struct.bus_body_part* null, %struct.bus_body_part** %5, align 8
  br label %93

93:                                               ; preds = %92, %75, %59, %43
  %94 = load %struct.bus_body_part*, %struct.bus_body_part** %5, align 8
  ret %struct.bus_body_part* %94
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @bus_body_part_map(%struct.bus_body_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

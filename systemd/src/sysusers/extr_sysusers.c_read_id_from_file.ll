; ModuleID = '/home/carl/AnghaBench/systemd/src/sysusers/extr_sysusers.c_read_id_from_file.c'
source_filename = "/home/carl/AnghaBench/systemd/src/sysusers/extr_sysusers.c_read_id_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.stat = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64*, i64*)* @read_id_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_id_from_file(%struct.TYPE_4__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i32 @assert(%struct.TYPE_4__* %13)
  %15 = load i64*, i64** %7, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @root_stat(i64 %25, %struct.stat* %8)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %22, %17, %3
  %32 = load i64*, i64** %6, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64*, i64** %7, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @root_stat(i64 %48, %struct.stat* %8)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  store i32 1, i32* %9, align 4
  %54 = load i64*, i64** %7, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  store i32 1, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %56, %51
  br label %63

63:                                               ; preds = %62, %45, %40, %37, %34
  %64 = load i64*, i64** %6, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %90, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i64, i64* %12, align 8
  store i64 %78, i64* %11, align 8
  store i32 1, i32* %9, align 4
  br label %89

79:                                               ; preds = %74
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @root_stat(i64 %82, %struct.stat* %8)
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %11, align 8
  store i32 1, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %69, %66, %63
  %91 = load i64*, i64** %6, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %111

97:                                               ; preds = %93
  %98 = load i64, i64* %11, align 8
  %99 = load i64*, i64** %6, align 8
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i64*, i64** %7, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %111

107:                                              ; preds = %103
  %108 = load i64, i64* %12, align 8
  %109 = load i64*, i64** %7, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %100
  store i32 1, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %106, %96
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @root_stat(i64, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

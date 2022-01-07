; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_body_part_map.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_bus_body_part_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_body_part = type { i32, i64, i64, i64, i32, i32*, i8*, i64 }

@bus_body_part_map.zeroes = internal constant [7 x i32] zeroinitializer, align 16
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_body_part_map(%struct.bus_body_part* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bus_body_part*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bus_body_part* %0, %struct.bus_body_part** %3, align 8
  %7 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %8 = call i32 @assert_se(%struct.bus_body_part* %7)
  %9 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %10 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

14:                                               ; preds = %1
  %15 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %16 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %113

20:                                               ; preds = %14
  %21 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %22 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %27 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %32 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %37 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %36, i32 0, i32 5
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @bus_body_part_map.zeroes, i32 0, i32 0), i32** %37, align 8
  store i32 0, i32* %2, align 4
  br label %113

38:                                               ; preds = %30, %25, %20
  %39 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %40 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %43 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 (...) @page_size()
  %46 = udiv i64 %44, %45
  %47 = call i64 (...) @page_size()
  %48 = mul i64 %46, %47
  %49 = sub i64 %41, %48
  store i64 %49, i64* %6, align 8
  %50 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %51 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %53, %54
  %56 = call i64 @PAGE_ALIGN(i64 %55)
  store i64 %56, i64* %5, align 8
  %57 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %58 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %38
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* @PROT_READ, align 4
  %64 = load i32, i32* @MAP_PRIVATE, align 4
  %65 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %66 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %70 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %71, %72
  %74 = call i8* @mmap(i32* null, i64 %62, i32 %63, i32 %64, i32 %68, i64 %73)
  store i8* %74, i8** %4, align 8
  br label %91

75:                                               ; preds = %38
  %76 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %77 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* @PROT_READ, align 4
  %83 = load i32, i32* @MAP_PRIVATE, align 4
  %84 = load i32, i32* @MAP_ANONYMOUS, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @mmap(i32* null, i64 %81, i32 %82, i32 %85, i32 -1, i64 0)
  store i8* %86, i8** %4, align 8
  br label %90

87:                                               ; preds = %75
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %113

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %61
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** @MAP_FAILED, align 8
  %94 = icmp eq i8* %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @errno, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %113

98:                                               ; preds = %91
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %101 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %104 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %103, i32 0, i32 6
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %110 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %109, i32 0, i32 5
  store i32* %108, i32** %110, align 8
  %111 = load %struct.bus_body_part*, %struct.bus_body_part** %3, align 8
  %112 = getelementptr inbounds %struct.bus_body_part, %struct.bus_body_part* %111, i32 0, i32 4
  store i32 1, i32* %112, align 8
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %98, %95, %87, %35, %19, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @assert_se(%struct.bus_body_part*) #1

declare dso_local i64 @page_size(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

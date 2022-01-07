; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_DHT_size.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_DHT_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@LCLIENT_LIST = common dso_local global i64 0, align 8
@DHT_FAKE_FRIEND_NUMBER = common dso_local global i64 0, align 8
@MAX_FRIEND_CLIENTS = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DHT_size(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @LCLIENT_LIST, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %14
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %10

44:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %98, %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @DHT_FAKE_FRIEND_NUMBER, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi i1 [ false, %45 ], [ %54, %49 ]
  br i1 %56, label %57, label %101

57:                                               ; preds = %55
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i64 %61
  store %struct.TYPE_16__* %62, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %94, %57
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @MAX_FRIEND_CLIENTS, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %63
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %3, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %4, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %67
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %6, align 8
  br label %63

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %5, align 8
  br label %45

101:                                              ; preds = %55
  store i64 8, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = mul i64 %102, 2
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %104, %105
  %107 = load i32, i32* @AF_INET, align 4
  %108 = call i64 @packed_node_size(i32 %107)
  %109 = load i64, i64* %3, align 8
  %110 = mul i64 %108, %109
  %111 = add i64 %106, %110
  %112 = load i32, i32* @AF_INET6, align 4
  %113 = call i64 @packed_node_size(i32 %112)
  %114 = load i64, i64* %4, align 8
  %115 = mul i64 %113, %114
  %116 = add i64 %111, %115
  ret i64 %116
}

declare dso_local i64 @packed_node_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

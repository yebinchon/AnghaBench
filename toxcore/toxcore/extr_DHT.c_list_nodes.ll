; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_list_nodes.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_DHT.c_list_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@BAD_NODE_TIMEOUT = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @list_nodes(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_6__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %114

16:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %109, %16
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %112

21:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sub i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %31 = call i32 @is_timeout(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %21
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %12, align 8
  br label %40

40:                                               ; preds = %33, %21
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sub i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BAD_NODE_TIMEOUT, align 4
  %50 = call i32 @is_timeout(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %40
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %12, align 8
  br label %74

62:                                               ; preds = %52
  %63 = call i32 (...) @rand()
  %64 = srem i32 %63, 2
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %68, 1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %12, align 8
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %55
  br label %75

75:                                               ; preds = %74, %40
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = icmp ne %struct.TYPE_7__* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %92 = call i32 @memcpy(i32 %83, i32 %90, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 4
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp uge i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %78
  %106 = load i64, i64* %10, align 8
  store i64 %106, i64* %5, align 8
  br label %114

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107, %75
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add i32 %110, -1
  store i32 %111, i32* %11, align 4
  br label %18

112:                                              ; preds = %18
  %113 = load i64, i64* %10, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %105, %15
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32 @is_timeout(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

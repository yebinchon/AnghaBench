; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_close_remaining_fds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_close_remaining_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32, i32, i32*, i64)* @close_remaining_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_remaining_fds(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i64 %7, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %20 = load i64, i64* %16, align 8
  %21 = add i64 %20, 12
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %18, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %19, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = call i32 @assert(%struct.TYPE_13__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %17, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %17, align 8
  %36 = getelementptr inbounds i32, i32* %23, i64 %34
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %17, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %17, align 8
  %48 = getelementptr inbounds i32, i32* %23, i64 %46
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %17, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %17, align 8
  %60 = getelementptr inbounds i32, i32* %23, i64 %58
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load i32, i32* %13, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i64, i64* %17, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %17, align 8
  %68 = getelementptr inbounds i32, i32* %23, i64 %66
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %17, align 8
  %76 = getelementptr inbounds i32, i32* %23, i64 %74
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i64, i64* %16, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i64, i64* %17, align 8
  %82 = getelementptr inbounds i32, i32* %23, i64 %81
  %83 = load i32*, i32** %15, align 8
  %84 = load i64, i64* %16, align 8
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(i32* %82, i32* %83, i32 %86)
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %17, align 8
  br label %91

91:                                               ; preds = %80, %77
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @append_socket_pair(i32* %23, i64* %17, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = icmp ne %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @append_socket_pair(i32* %23, i64* %17, i32 %112)
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = icmp ne %struct.TYPE_11__* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @append_socket_pair(i32* %23, i64* %17, i32 %124)
  br label %126

126:                                              ; preds = %119, %114
  br label %127

127:                                              ; preds = %126, %99
  %128 = load i32, i32* %12, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = load i64, i64* %17, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %17, align 8
  %134 = getelementptr inbounds i32, i32* %23, i64 %132
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i64, i64* %17, align 8
  %137 = call i32 @close_all_fds(i32* %23, i64 %136)
  %138 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %138)
  ret i32 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(%struct.TYPE_13__*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @append_socket_pair(i32*, i64*, i32) #2

declare dso_local i32 @close_all_fds(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

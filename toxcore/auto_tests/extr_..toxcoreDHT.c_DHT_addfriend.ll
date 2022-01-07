; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_DHT_addfriend.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_..toxcoreDHT.c_DHT_addfriend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { void (i8*, i8*, i32)*, i8*, i8* }
%struct.TYPE_11__ = type { i32 }

@DHT_FRIEND_MAX_LOCKS = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DHT_addfriend(%struct.TYPE_14__* %0, i32* %1, void (i8*, i8*, i32)* %2, i8* %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca void (i8*, i8*, i32)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32* %1, i32** %9, align 8
  store void (i8*, i8*, i32)* %2, void (i8*, i8*, i32)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @friend_number(%struct.TYPE_14__* %19, i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %73

24:                                               ; preds = %6
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 %29
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %16, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DHT_FRIEND_MAX_LOCKS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %161

37:                                               ; preds = %24
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %15, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store void (i8*, i8*, i32)* %45, void (i8*, i8*, i32)** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i8* %52, i8** %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = load i64, i64* %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i8* %59, i8** %65, align 8
  %66 = load i64*, i64** %13, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %37
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %69, 1
  %71 = load i64*, i64** %13, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %37
  store i32 0, i32* %7, align 4
  br label %161

73:                                               ; preds = %6
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 40, %81
  %83 = trunc i64 %82 to i32
  %84 = call %struct.TYPE_13__* @realloc(%struct.TYPE_13__* %76, i32 %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %17, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %86 = icmp eq %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  store i32 -1, i32* %7, align 4
  br label %161

88:                                               ; preds = %73
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %91, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %98
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %18, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %101 = call i32 @memset(%struct.TYPE_13__* %100, i32 0, i32 40)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %107 = call i32 @memcpy(i32 %104, i32* %105, i32 %106)
  %108 = call i32 (...) @random_64b()
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %15, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i64, i64* %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store void (i8*, i8*, i32)* %123, void (i8*, i8*, i32)** %129, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = load i64, i64* %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  store i8* %130, i8** %136, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  store i8* %137, i8** %143, align 8
  %144 = load i64*, i64** %13, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %88
  %147 = load i64, i64* %15, align 8
  %148 = add i64 %147, 1
  %149 = load i64*, i64** %13, align 8
  store i64 %148, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %88
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @get_close_nodes(%struct.TYPE_14__* %151, i32 %154, i32 %157, i32 0, i32 1, i32 0)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %7, align 4
  br label %161

161:                                              ; preds = %150, %87, %72, %36
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i32 @friend_number(%struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @realloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @random_64b(...) #1

declare dso_local i32 @get_close_nodes(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

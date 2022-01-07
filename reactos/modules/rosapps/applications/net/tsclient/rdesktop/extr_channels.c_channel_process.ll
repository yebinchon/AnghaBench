; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_channels.c_channel_process.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_channels.c_channel_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32*, i32*, i32* }

@CHANNEL_FLAG_FIRST = common dso_local global i32 0, align 4
@CHANNEL_FLAG_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_process(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %10, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %36

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %13

36:                                               ; preds = %31, %13
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %162

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @in_uint32_le(%struct.TYPE_12__* %44, i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @in_uint32_le(%struct.TYPE_12__* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @CHANNEL_FLAG_FIRST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @CHANNEL_FLAG_LAST, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = call i32 %62(%struct.TYPE_13__* %63, %struct.TYPE_12__* %64)
  br label %162

66:                                               ; preds = %54, %43
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %12, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @CHANNEL_FLAG_FIRST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @xrealloc(i32* %82, i32 %83)
  %85 = inttoptr i64 %84 to i32*
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %79, %73
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 8
  br label %97

97:                                               ; preds = %91, %66
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = ptrtoint i32* %100 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = ptrtoint i32* %116 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @MIN(i32* %108, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @memcpy(i32* %128, i32* %131, i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = sext i32 %134 to i64
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %136, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @CHANNEL_FLAG_LAST, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %97
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  store i32* %152, i32** %154, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %156, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %160 = call i32 %157(%struct.TYPE_13__* %158, %struct.TYPE_12__* %159)
  br label %161

161:                                              ; preds = %144, %97
  br label %162

162:                                              ; preds = %42, %161, %59
  ret void
}

declare dso_local i32 @in_uint32_le(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @xrealloc(i32*, i32) #1

declare dso_local i32 @MIN(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

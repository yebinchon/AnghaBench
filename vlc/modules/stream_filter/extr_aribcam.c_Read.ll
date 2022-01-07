; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_aribcam.c_Read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_aribcam.c_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { i32, i64, i64, i32* }

@.str = private unnamed_addr constant [23 x i8] c"decoder put failed: %s\00", align 1
@b25_errors = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't read %lu bytes from source stream: %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"decoder get failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i64)* @Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Read(%struct.TYPE_12__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %148

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @RemainRead(%struct.TYPE_12__* %26, i32* %27, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* %12, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 %35
  store i32* %37, i32** %9, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %125, %25
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %146

44:                                               ; preds = %41
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @vlc_stream_Read(i32 %47, i32* %48, i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %55 = load i32*, i32** %9, align 8
  %56 = ptrtoint i32* %55 to i32
  store i32 %56, i32* %54, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %57, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = call i32 %66(%struct.TYPE_15__* %69, %struct.TYPE_14__* %14)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @b25_errors, align 4
  %77 = call i32 @GetErrorMessage(i32 %75, i32 %76)
  %78 = sext i32 %77 to i64
  %79 = call i32 (%struct.TYPE_12__*, i8*, i64, ...) @msg_Err(%struct.TYPE_12__* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %78)
  store i32 0, i32* %4, align 4
  br label %148

80:                                               ; preds = %53
  br label %90

81:                                               ; preds = %44
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (%struct.TYPE_12__*, i8*, i64, ...) @msg_Err(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %81
  store i32 0, i32* %4, align 4
  br label %148

90:                                               ; preds = %80
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %94, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  %99 = call i32 %95(%struct.TYPE_15__* %98, %struct.TYPE_14__* %15)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %90
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @b25_errors, align 4
  %106 = call i32 @GetErrorMessage(i32 %104, i32 %105)
  %107 = sext i32 %106 to i64
  %108 = call i32 (%struct.TYPE_12__*, i8*, i64, ...) @msg_Err(%struct.TYPE_12__* %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  store i32 0, i32* %4, align 4
  br label %148

109:                                              ; preds = %90
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %117, %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = sub i64 %121, %122
  %124 = call i32 @RemainAdd(%struct.TYPE_12__* %115, i64 %119, i64 %123)
  br label %125

125:                                              ; preds = %114, %109
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @__MIN(i64 %127, i64 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @memcpy(i32* %130, i64 %132, i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %9, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %7, align 8
  %145 = sub i64 %144, %143
  store i64 %145, i64* %7, align 8
  br label %41

146:                                              ; preds = %41
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %102, %89, %73, %24
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @RemainRead(%struct.TYPE_12__*, i32*, i64) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_12__*, i8*, i64, ...) #1

declare dso_local i32 @GetErrorMessage(i32, i32) #1

declare dso_local i32 @RemainAdd(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @__MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

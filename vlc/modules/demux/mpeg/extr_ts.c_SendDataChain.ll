; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_SendDataChain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts.c_SendDataChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, i64, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [10 x i8] c"low-delay\00", align 1
@BLOCK_FLAG_PRIVATE_MASK = common dso_local global i32 0, align 4
@BLOCK_FLAG_AU_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_16__*)* @SendDataChain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendDataChain(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = call i32 @var_InheritBool(%struct.TYPE_15__* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %149, %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %150

18:                                               ; preds = %15
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %8, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %24, align 8
  %25 = load i32, i32* @BLOCK_FLAG_PRIVATE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %18
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %9, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %45, %39
  br label %56

56:                                               ; preds = %139, %55
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %143

59:                                               ; preds = %56
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %139

66:                                               ; preds = %59
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %10, align 8
  br label %70

70:                                               ; preds = %93, %66
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = icmp ne %struct.TYPE_14__* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %80 = call %struct.TYPE_16__* @block_Duplicate(%struct.TYPE_16__* %79)
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %11, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %82 = icmp ne %struct.TYPE_16__* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %91 = call i32 @es_out_Send(i32 %86, i64 %89, %struct.TYPE_16__* %90)
  br label %92

92:                                               ; preds = %83, %78
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  store %struct.TYPE_14__* %96, %struct.TYPE_14__** %10, align 8
  br label %70

97:                                               ; preds = %70
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = icmp ne %struct.TYPE_14__* %100, null
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = call %struct.TYPE_16__* @block_Duplicate(%struct.TYPE_16__* %108)
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %12, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %111 = icmp ne %struct.TYPE_16__* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %120 = call i32 @es_out_Send(i32 %115, i64 %118, %struct.TYPE_16__* %119)
  br label %121

121:                                              ; preds = %112, %107
  br label %122

122:                                              ; preds = %121, %102
  br label %138

123:                                              ; preds = %97
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = call i32 @es_out_Send(i32 %131, i64 %134, %struct.TYPE_16__* %135)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  br label %137

137:                                              ; preds = %128, %123
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138, %59
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %9, align 8
  br label %56

143:                                              ; preds = %56
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = icmp ne %struct.TYPE_16__* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %148 = call i32 @block_Release(%struct.TYPE_16__* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %15

150:                                              ; preds = %15
  ret void
}

declare dso_local i32 @var_InheritBool(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_16__* @block_Duplicate(%struct.TYPE_16__*) #1

declare dso_local i32 @es_out_Send(i32, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzlib.c_handle_compress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzlib.c_handle_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@False = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@BZ_S_OUTPUT = common dso_local global i64 0, align 8
@BZ_M_FINISHING = common dso_local global i64 0, align 8
@BZ_S_INPUT = common dso_local global i64 0, align 8
@BZ_M_FLUSHING = common dso_local global i64 0, align 8
@BZ_M_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @handle_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_compress(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load i32, i32* @False, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @False, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  br label %11

11:                                               ; preds = %132, %1
  %12 = load i64, i64* @True, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %133

14:                                               ; preds = %11
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BZ_S_OUTPUT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %71

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i32 @copy_output_until_stop(%struct.TYPE_13__* %21)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %133

33:                                               ; preds = %20
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BZ_M_FINISHING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = call i64 @isempty_RL(%struct.TYPE_13__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %133

49:                                               ; preds = %44, %39, %33
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = call i32 @prepare_new_block(%struct.TYPE_13__* %50)
  %52 = load i64, i64* @BZ_S_INPUT, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BZ_M_FLUSHING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = call i64 @isempty_RL(%struct.TYPE_13__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %133

70:                                               ; preds = %65, %60, %49
  br label %71

71:                                               ; preds = %70, %14
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BZ_S_INPUT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %71
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = call i32 @copy_input_until_stop(%struct.TYPE_13__* %78)
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @BZ_M_RUNNING, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %77
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = call i32 @flush_RL(%struct.TYPE_13__* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BZ_M_FINISHING, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @BZ2_compressBlock(%struct.TYPE_13__* %95, i32 %101)
  %103 = load i64, i64* @BZ_S_OUTPUT, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %131

106:                                              ; preds = %87, %77
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = load i32, i32* @False, align 4
  %117 = call i32 @BZ2_compressBlock(%struct.TYPE_13__* %115, i32 %116)
  %118 = load i64, i64* @BZ_S_OUTPUT, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %130

121:                                              ; preds = %106
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %133

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %114
  br label %131

131:                                              ; preds = %130, %92
  br label %132

132:                                              ; preds = %131, %71
  br label %11

133:                                              ; preds = %128, %69, %48, %32, %11
  %134 = load i32, i32* %3, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %136, %133
  %140 = phi i1 [ true, %133 ], [ %138, %136 ]
  %141 = zext i1 %140 to i32
  ret i32 %141
}

declare dso_local i32 @copy_output_until_stop(%struct.TYPE_13__*) #1

declare dso_local i64 @isempty_RL(%struct.TYPE_13__*) #1

declare dso_local i32 @prepare_new_block(%struct.TYPE_13__*) #1

declare dso_local i32 @copy_input_until_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @flush_RL(%struct.TYPE_13__*) #1

declare dso_local i32 @BZ2_compressBlock(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

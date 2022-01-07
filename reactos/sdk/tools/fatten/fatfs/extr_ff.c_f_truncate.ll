; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_truncate.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_f_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32, %struct.TYPE_9__*, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FA_WRITE = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FA__WRITTEN = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i64 0, align 8
@FA__DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_truncate(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i64 @validate(%struct.TYPE_8__* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @FR_OK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  br label %30

20:                                               ; preds = %11
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FA_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* @FR_DENIED, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %27, %20
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @FR_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %163

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %154

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @FA__WRITTEN, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %43
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @remove_chain(%struct.TYPE_9__* %61, i32 %64)
  store i64 %65, i64* %4, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  br label %117

68:                                               ; preds = %43
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @get_fat(%struct.TYPE_9__* %71, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i64, i64* @FR_OK, align 8
  store i64 %76, i64* %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %68
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @FR_INT_ERR, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @FR_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %91, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %90
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @put_fat(%struct.TYPE_9__* %101, i32 %104, i32 268435455)
  store i64 %105, i64* %4, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @FR_OK, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @remove_chain(%struct.TYPE_9__* %112, i32 %113)
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %109, %98
  br label %116

116:                                              ; preds = %115, %90, %86
  br label %117

117:                                              ; preds = %116, %58
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @FR_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %117
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FA__DIRTY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %121
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @disk_write(i32 %133, i32 %136, i32 %139, i32 1)
  %141 = load i64, i64* @RES_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %128
  %144 = load i64, i64* @FR_DISK_ERR, align 8
  store i64 %144, i64* %4, align 8
  br label %152

145:                                              ; preds = %128
  %146 = load i32, i32* @FA__DIRTY, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %145, %143
  br label %153

153:                                              ; preds = %152, %121, %117
  br label %154

154:                                              ; preds = %153, %35
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* @FR_OK, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i64, i64* %4, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 5
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %158, %154
  br label %163

163:                                              ; preds = %162, %31
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i64, i64* %4, align 8
  %168 = call i32 @LEAVE_FF(%struct.TYPE_9__* %166, i64 %167)
  %169 = load i64, i64* %2, align 8
  ret i64 %169
}

declare dso_local i64 @validate(%struct.TYPE_8__*) #1

declare dso_local i64 @remove_chain(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @put_fat(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @disk_write(i32, i32, i32, i32) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

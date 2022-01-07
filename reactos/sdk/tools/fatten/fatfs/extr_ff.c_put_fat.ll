; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_put_fat.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/fatten/fatfs/extr_ff.c_put_fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32 }

@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put_fat(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %19, i32* %9, align 4
  br label %187

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %184 [
    i32 130, label %24
    i32 129, label %115
    i32 128, label %147
  ]

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 2
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = call i32 @SS(%struct.TYPE_5__* %35)
  %37 = sdiv i32 %34, %36
  %38 = add nsw i32 %33, %37
  %39 = call i32 @move_window(%struct.TYPE_5__* %30, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @FR_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %186

44:                                               ; preds = %24
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = call i32 @SS(%struct.TYPE_5__* %50)
  %52 = srem i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %44
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 4
  %64 = or i32 %61, %63
  br label %67

65:                                               ; preds = %44
  %66 = load i32, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi i32 [ %64, %58 ], [ %66, %65 ]
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 4
  store i32 1, i32* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = call i32 @SS(%struct.TYPE_5__* %77)
  %79 = sdiv i32 %76, %78
  %80 = add nsw i32 %75, %79
  %81 = call i32 @move_window(%struct.TYPE_5__* %72, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @FR_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  br label %186

86:                                               ; preds = %67
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = call i32 @SS(%struct.TYPE_5__* %91)
  %93 = srem i32 %90, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  store i32* %95, i32** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* %6, align 4
  %101 = ashr i32 %100, 4
  br label %110

102:                                              ; preds = %86
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 240
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 8
  %108 = and i32 %107, 15
  %109 = or i32 %105, %108
  br label %110

110:                                              ; preds = %102, %99
  %111 = phi i32 [ %101, %99 ], [ %109, %102 ]
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 1, i32* %114, align 8
  br label %186

115:                                              ; preds = %20
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = call i32 @SS(%struct.TYPE_5__* %121)
  %123 = sdiv i32 %122, 2
  %124 = sdiv i32 %120, %123
  %125 = add nsw i32 %119, %124
  %126 = call i32 @move_window(%struct.TYPE_5__* %116, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @FR_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %186

131:                                              ; preds = %115
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = mul nsw i32 %135, 2
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = call i32 @SS(%struct.TYPE_5__* %137)
  %139 = srem i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  store i32* %141, i32** %8, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @ST_WORD(i32* %142, i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  store i32 1, i32* %146, align 8
  br label %186

147:                                              ; preds = %20
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = call i32 @SS(%struct.TYPE_5__* %153)
  %155 = sdiv i32 %154, 4
  %156 = sdiv i32 %152, %155
  %157 = add nsw i32 %151, %156
  %158 = call i32 @move_window(%struct.TYPE_5__* %148, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @FR_OK, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %147
  br label %186

163:                                              ; preds = %147
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = mul nsw i32 %167, 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = call i32 @SS(%struct.TYPE_5__* %169)
  %171 = srem i32 %168, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  store i32* %173, i32** %8, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @LD_DWORD(i32* %174)
  %176 = and i32 %175, -268435456
  %177 = load i32, i32* %6, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @ST_DWORD(i32* %179, i32 %180)
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 4
  store i32 1, i32* %183, align 8
  br label %186

184:                                              ; preds = %20
  %185 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %184, %163, %162, %131, %130, %110, %85, %43
  br label %187

187:                                              ; preds = %186, %18
  %188 = load i32, i32* %9, align 4
  ret i32 %188
}

declare dso_local i32 @move_window(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SS(%struct.TYPE_5__*) #1

declare dso_local i32 @ST_WORD(i32*, i32) #1

declare dso_local i32 @LD_DWORD(i32*) #1

declare dso_local i32 @ST_DWORD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

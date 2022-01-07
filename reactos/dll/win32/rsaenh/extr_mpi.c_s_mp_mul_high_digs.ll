; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_s_mp_mul_high_digs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_s_mp_mul_high_digs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64* }

@MP_WARRAY = common dso_local global i64 0, align 8
@CHAR_BIT = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32)* @s_mp_mul_high_digs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_mp_mul_high_digs(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = add nsw i64 %27, 1
  %29 = load i64, i64* @MP_WARRAY, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @MIN(i64 %34, i64 %37)
  %39 = load i32, i32* @CHAR_BIT, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = load i32, i32* @DIGIT_BIT, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = sub i64 %41, %44
  %46 = trunc i64 %45 to i32
  %47 = shl i32 1, %46
  %48 = icmp slt i32 %38, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %31
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @fast_s_mp_mul_high_digs(%struct.TYPE_13__* %50, %struct.TYPE_13__* %51, %struct.TYPE_13__* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %160

55:                                               ; preds = %31, %4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = add nsw i64 %62, 1
  %64 = call i32 @mp_init_size(%struct.TYPE_13__* %10, i64 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* @MP_OKAY, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %160

69:                                               ; preds = %55
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = add nsw i64 %76, 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %151, %69
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %154

91:                                               ; preds = %87
  store i64 0, i64* %16, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64* %103, i64** %19, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %106, i64 %110
  store i64* %111, i64** %20, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %145, %91
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %148

119:                                              ; preds = %115
  %120 = load i64*, i64** %19, align 8
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i64, i64* %18, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i64*, i64** %20, align 8
  %126 = getelementptr inbounds i64, i64* %125, i32 1
  store i64* %126, i64** %20, align 8
  %127 = load i64, i64* %125, align 8
  %128 = trunc i64 %127 to i32
  %129 = mul nsw i32 %124, %128
  %130 = add nsw i32 %122, %129
  %131 = load i64, i64* %16, align 8
  %132 = trunc i64 %131 to i32
  %133 = add nsw i32 %130, %132
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i64, i64* @MP_MASK, align 8
  %136 = trunc i64 %135 to i32
  %137 = and i32 %134, %136
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %19, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %19, align 8
  store i64 %138, i64* %139, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* @DIGIT_BIT, align 4
  %143 = ashr i32 %141, %142
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %16, align 8
  br label %145

145:                                              ; preds = %119
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %115

148:                                              ; preds = %115
  %149 = load i64, i64* %16, align 8
  %150 = load i64*, i64** %19, align 8
  store i64 %149, i64* %150, align 8
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %87

154:                                              ; preds = %87
  %155 = call i32 @mp_clamp(%struct.TYPE_13__* %10)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = call i32 @mp_exch(%struct.TYPE_13__* %10, %struct.TYPE_13__* %156)
  %158 = call i32 @mp_clear(%struct.TYPE_13__* %10)
  %159 = load i32, i32* @MP_OKAY, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %154, %67, %49
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @fast_s_mp_mul_high_digs(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mp_init_size(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_13__*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_clear(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

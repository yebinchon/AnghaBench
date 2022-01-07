; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_montgomery_reduce.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_montgomery_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32* }

@MP_WARRAY = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@DIGIT_BIT = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4
@MP_MASK = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_montgomery_reduce(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @MP_WARRAY, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CHAR_BIT, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = load i32, i32* @DIGIT_BIT, align 4
  %33 = mul nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = sub i64 %31, %34
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = icmp slt i32 %28, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fast_mp_montgomery_reduce(%struct.TYPE_14__* %40, %struct.TYPE_14__* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %160

44:                                               ; preds = %25, %3
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mp_grow(%struct.TYPE_14__* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @MP_OKAY, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %160

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %137, %59
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %63
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* @MP_MASK, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %13, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32* %89, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %115, %69
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %13, align 8
  %100 = load i32, i32* %98, align 4
  %101 = mul nsw i32 %97, %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %103, %105
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* @DIGIT_BIT, align 4
  %109 = ashr i32 %107, %108
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @MP_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32*, i32** %14, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %14, align 8
  store i32 %112, i32* %113, align 4
  br label %115

115:                                              ; preds = %96
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %90

118:                                              ; preds = %90
  br label %119

119:                                              ; preds = %122, %118
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DIGIT_BIT, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* @MP_MASK, align 4
  %132 = load i32*, i32** %14, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %14, align 8
  %134 = load i32, i32* %132, align 4
  %135 = and i32 %134, %131
  store i32 %135, i32* %132, align 4
  br label %119

136:                                              ; preds = %119
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %63

140:                                              ; preds = %63
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = call i32 @mp_clamp(%struct.TYPE_14__* %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @mp_rshd(%struct.TYPE_14__* %143, i32 %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = call i64 @mp_cmp_mag(%struct.TYPE_14__* %148, %struct.TYPE_14__* %149)
  %151 = load i64, i64* @MP_LT, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %140
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = call i32 @s_mp_sub(%struct.TYPE_14__* %154, %struct.TYPE_14__* %155, %struct.TYPE_14__* %156)
  store i32 %157, i32* %4, align 4
  br label %160

158:                                              ; preds = %140
  %159 = load i32, i32* @MP_OKAY, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %153, %56, %39
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i32 @fast_mp_montgomery_reduce(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @mp_grow(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_14__*) #1

declare dso_local i32 @mp_rshd(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @s_mp_sub(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

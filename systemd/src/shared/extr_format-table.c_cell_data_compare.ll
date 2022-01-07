; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_cell_data_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_cell_data_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, %struct.TYPE_9__*, i64)* @cell_data_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cell_data_compare(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_9__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = call i32 @assert(%struct.TYPE_9__* %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = call i32 @assert(%struct.TYPE_9__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %200

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %198 [
    i32 138, label %25
    i32 150, label %33
    i32 135, label %56
    i32 133, label %56
    i32 134, label %56
    i32 137, label %64
    i32 136, label %64
    i32 139, label %72
    i32 149, label %72
    i32 146, label %80
    i32 142, label %88
    i32 145, label %96
    i32 144, label %104
    i32 143, label %112
    i32 132, label %120
    i32 128, label %128
    i32 131, label %136
    i32 130, label %144
    i32 129, label %152
    i32 140, label %160
    i32 148, label %168
    i32 141, label %176
    i32 147, label %188
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 18
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %204

33:                                               ; preds = %21
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 17
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %204

44:                                               ; preds = %38, %33
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 17
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 17
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %204

55:                                               ; preds = %49, %44
  store i32 0, i32* %5, align 4
  br label %204

56:                                               ; preds = %21, %21, %21
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @CMP(i64 %59, i64 %62)
  store i32 %63, i32* %5, align 4
  br label %204

64:                                               ; preds = %21, %21
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @CMP(i64 %67, i64 %70)
  store i32 %71, i32* %5, align 4
  br label %204

72:                                               ; preds = %21, %21
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @CMP(i64 %75, i64 %78)
  store i32 %79, i32* %5, align 4
  br label %204

80:                                               ; preds = %21
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @CMP(i64 %83, i64 %86)
  store i32 %87, i32* %5, align 4
  br label %204

88:                                               ; preds = %21
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @CMP(i64 %91, i64 %94)
  store i32 %95, i32* %5, align 4
  br label %204

96:                                               ; preds = %21
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @CMP(i64 %99, i64 %102)
  store i32 %103, i32* %5, align 4
  br label %204

104:                                              ; preds = %21
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @CMP(i64 %107, i64 %110)
  store i32 %111, i32* %5, align 4
  br label %204

112:                                              ; preds = %21
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 8
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @CMP(i64 %115, i64 %118)
  store i32 %119, i32* %5, align 4
  br label %204

120:                                              ; preds = %21
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @CMP(i64 %123, i64 %126)
  store i32 %127, i32* %5, align 4
  br label %204

128:                                              ; preds = %21
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 10
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 10
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @CMP(i64 %131, i64 %134)
  store i32 %135, i32* %5, align 4
  br label %204

136:                                              ; preds = %21
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 11
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @CMP(i64 %139, i64 %142)
  store i32 %143, i32* %5, align 4
  br label %204

144:                                              ; preds = %21
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 12
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 12
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @CMP(i64 %147, i64 %150)
  store i32 %151, i32* %5, align 4
  br label %204

152:                                              ; preds = %21
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 13
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 13
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @CMP(i64 %155, i64 %158)
  store i32 %159, i32* %5, align 4
  br label %204

160:                                              ; preds = %21
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 14
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 14
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @CMP(i64 %163, i64 %166)
  store i32 %167, i32* %5, align 4
  br label %204

168:                                              ; preds = %21
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 15
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 15
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @CMP(i64 %171, i64 %174)
  store i32 %175, i32* %5, align 4
  br label %204

176:                                              ; preds = %21
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 16
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 16
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @CMP(i64 %181, i64 %186)
  store i32 %187, i32* %5, align 4
  br label %204

188:                                              ; preds = %21
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 16
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 16
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* @AF_INET6, align 4
  %196 = call i32 @FAMILY_ADDRESS_SIZE(i32 %195)
  %197 = call i32 @memcmp(i32* %191, i32* %194, i32 %196)
  store i32 %197, i32* %5, align 4
  br label %204

198:                                              ; preds = %21
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %4
  %201 = load i64, i64* %7, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i32 @CMP(i64 %201, i64 %202)
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %188, %176, %168, %160, %152, %144, %136, %128, %120, %112, %104, %96, %88, %80, %72, %64, %56, %55, %54, %43, %25
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @assert(%struct.TYPE_9__*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @CMP(i64, i64) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @FAMILY_ADDRESS_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

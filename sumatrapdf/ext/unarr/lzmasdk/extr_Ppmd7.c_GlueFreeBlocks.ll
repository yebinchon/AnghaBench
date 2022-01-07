; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd7.c_GlueFreeBlocks.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd7.c_GlueFreeBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i64, i64, i64* }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }

@PPMD_NUM_INDEXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @GlueFreeBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GlueFreeBlocks(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 255, i32* %25, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %71, %1
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PPMD_NUM_INDEXES, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @I2U(i32 %31)
  %33 = zext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %51, %30
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = call %struct.TYPE_7__* @NODE(i64 %52)
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %8, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call %struct.TYPE_7__* @NODE(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i64 %57, i64* %60, align 8
  store i64 %57, i64* %4, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = bitcast %struct.TYPE_7__* %61 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 0, i32* %65, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %26

74:                                               ; preds = %26
  %75 = load i64, i64* %3, align 8
  %76 = call %struct.TYPE_7__* @NODE(i64 %75)
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call %struct.TYPE_7__* @NODE(i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call %struct.TYPE_7__* @NODE(i64 %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %74
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.TYPE_7__*
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %93, %74
  br label %100

100:                                              ; preds = %152, %99
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* %3, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %156

104:                                              ; preds = %100
  %105 = load i64, i64* %4, align 8
  %106 = call %struct.TYPE_7__* @NODE(i64 %105)
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %9, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %129, %104
  %111 = load i64, i64* %4, align 8
  %112 = call %struct.TYPE_7__* @NODE(i64 %111)
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  store %struct.TYPE_7__* %115, %struct.TYPE_7__** %11, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %10, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %10, align 4
  %127 = icmp sge i32 %126, 65536
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %110
  br label %152

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call %struct.TYPE_7__* @NODE(i64 %135)
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store i64 %132, i64* %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call %struct.TYPE_7__* @NODE(i64 %143)
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i64 %140, i64* %145, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %110

152:                                              ; preds = %128
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %4, align 8
  br label %100

156:                                              ; preds = %100
  %157 = load i64, i64* %3, align 8
  %158 = call %struct.TYPE_7__* @NODE(i64 %157)
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %4, align 8
  br label %161

161:                                              ; preds = %208, %156
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* %3, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %214

165:                                              ; preds = %161
  %166 = load i64, i64* %4, align 8
  %167 = call %struct.TYPE_7__* @NODE(i64 %166)
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %12, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %14, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %183, %165
  %175 = load i32, i32* %13, align 4
  %176 = icmp ugt i32 %175, 128
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %180 = load i32, i32* @PPMD_NUM_INDEXES, align 4
  %181 = sub i32 %180, 1
  %182 = call i32 @InsertNode(%struct.TYPE_8__* %178, %struct.TYPE_7__* %179, i32 %181)
  br label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %13, align 4
  %185 = sub i32 %184, 128
  store i32 %185, i32* %13, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 128
  store %struct.TYPE_7__* %187, %struct.TYPE_7__** %12, align 8
  br label %174

188:                                              ; preds = %174
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @U2I(i32 %189)
  store i32 %190, i32* %5, align 4
  %191 = call i32 @I2U(i32 %190)
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %188
  %195 = load i32, i32* %5, align 4
  %196 = add i32 %195, -1
  store i32 %196, i32* %5, align 4
  %197 = call i32 @I2U(i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %200 = load i32, i32* %15, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %201
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %15, align 4
  %205 = sub i32 %203, %204
  %206 = sub i32 %205, 1
  %207 = call i32 @InsertNode(%struct.TYPE_8__* %198, %struct.TYPE_7__* %202, i32 %206)
  br label %208

208:                                              ; preds = %194, %188
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @InsertNode(%struct.TYPE_8__* %209, %struct.TYPE_7__* %210, i32 %211)
  %213 = load i64, i64* %14, align 8
  store i64 %213, i64* %4, align 8
  br label %161

214:                                              ; preds = %161
  ret void
}

declare dso_local i32 @I2U(i32) #1

declare dso_local %struct.TYPE_7__* @NODE(i64) #1

declare dso_local i32 @InsertNode(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @U2I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

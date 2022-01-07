; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/edonr/extr_edonr.c_EdonRUpdate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/edonr/extr_edonr.c_EdonRUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@EdonR256_BLOCK_SIZE = common dso_local global i32 0, align 4
@EdonR512_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EdonRUpdate(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @EDONR_VALID_HASHBITLEN(i32 %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %210 [
    i32 224, label %22
    i32 256, label %22
    i32 384, label %116
    i32 512, label %116
  ]

22:                                               ; preds = %3, %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = load i32, i32* @EdonR256_BLOCK_SIZE, align 4
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = icmp ule i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = call %struct.TYPE_9__* @hashState256(%struct.TYPE_7__* %44)
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @bcopy(i32* %43, i64 %53, i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %6, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = call %struct.TYPE_9__* @hashState256(%struct.TYPE_7__* %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %7, align 8
  br label %73

71:                                               ; preds = %22
  %72 = load i32*, i32** %5, align 8
  store i32* %72, i32** %7, align 8
  br label %73

73:                                               ; preds = %71, %27
  %74 = load i64, i64* %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = call %struct.TYPE_9__* @hashState256(%struct.TYPE_7__* %76)
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @Q256(i64 %74, i32* %75, i32 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %6, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i64, i64* %6, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %73
  %96 = load i64, i64* %6, align 8
  %97 = trunc i64 %96 to i32
  %98 = sub nsw i32 0, %97
  %99 = ashr i32 %98, 3
  %100 = and i32 %99, 511
  %101 = xor i32 %100, -1
  %102 = add nsw i32 %101, 1
  %103 = and i32 %102, 511
  store i32 %103, i32* %11, align 4
  %104 = load i64, i64* %9, align 8
  %105 = lshr i64 %104, 5
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = call %struct.TYPE_9__* @hashState256(%struct.TYPE_7__* %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @bcopy(i32* %108, i64 %112, i32 %113)
  br label %115

115:                                              ; preds = %95, %73
  br label %210

116:                                              ; preds = %3, %3
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %116
  %122 = load i64, i64* %6, align 8
  %123 = trunc i64 %122 to i32
  %124 = ashr i32 %123, 3
  store i32 %124, i32* %12, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %128, %129
  %131 = load i32, i32* @EdonR512_BLOCK_SIZE, align 4
  %132 = mul nsw i32 %131, 8
  %133 = sext i32 %132 to i64
  %134 = icmp ule i64 %130, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @ASSERT(i32 %135)
  %137 = load i32*, i32** %5, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = call %struct.TYPE_8__* @hashState512(%struct.TYPE_7__* %138)
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %141, %146
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @bcopy(i32* %137, i64 %147, i32 %148)
  %150 = load i64, i64* %6, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %6, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = call %struct.TYPE_8__* @hashState512(%struct.TYPE_7__* %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %8, align 8
  br label %167

165:                                              ; preds = %116
  %166 = load i32*, i32** %5, align 8
  store i32* %166, i32** %8, align 8
  br label %167

167:                                              ; preds = %165, %121
  %168 = load i64, i64* %6, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = call %struct.TYPE_8__* @hashState512(%struct.TYPE_7__* %170)
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @Q512(i64 %168, i32* %169, i32 %173)
  store i64 %174, i64* %9, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = add i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load i64, i64* %6, align 8
  %182 = sub i64 %181, %180
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = trunc i64 %183 to i32
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i64, i64* %6, align 8
  %188 = icmp ugt i64 %187, 0
  br i1 %188, label %189, label %209

189:                                              ; preds = %167
  %190 = load i64, i64* %6, align 8
  %191 = trunc i64 %190 to i32
  %192 = sub nsw i32 0, %191
  %193 = ashr i32 %192, 3
  %194 = and i32 %193, 1023
  %195 = xor i32 %194, -1
  %196 = add nsw i32 %195, 1
  %197 = and i32 %196, 1023
  store i32 %197, i32* %13, align 4
  %198 = load i64, i64* %9, align 8
  %199 = lshr i64 %198, 6
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 %199
  store i32* %201, i32** %8, align 8
  %202 = load i32*, i32** %8, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %204 = call %struct.TYPE_8__* @hashState512(%struct.TYPE_7__* %203)
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @bcopy(i32* %202, i64 %206, i32 %207)
  br label %209

209:                                              ; preds = %189, %167
  br label %210

210:                                              ; preds = %3, %209, %115
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @EDONR_VALID_HASHBITLEN(i32) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local %struct.TYPE_9__* @hashState256(%struct.TYPE_7__*) #1

declare dso_local i64 @Q256(i64, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @hashState512(%struct.TYPE_7__*) #1

declare dso_local i64 @Q512(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

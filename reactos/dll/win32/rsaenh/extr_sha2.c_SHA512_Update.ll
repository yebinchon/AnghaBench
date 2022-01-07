; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_sha2.c_SHA512_Update.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_sha2.c_SHA512_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA512_Update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %130

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 3
  %28 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %18
  %33 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = call i32 @MEMCPY_BCOPY(i32* %46, i32* %47, i64 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 3
  %56 = zext i32 %55 to i64
  %57 = call i32 @ADDINC128(i32* %53, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @SHA512_Transform(%struct.TYPE_4__* %66, i32* %69)
  br label %87

71:                                               ; preds = %32
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32*, i32** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @MEMCPY_BCOPY(i32* %77, i32* %78, i64 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = shl i64 %84, 3
  %86 = call i32 @ADDINC128(i32* %83, i64 %85)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %130

87:                                               ; preds = %40
  br label %88

88:                                               ; preds = %87, %18
  br label %89

89:                                               ; preds = %94, %88
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp uge i64 %90, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @SHA512_Transform(%struct.TYPE_4__* %95, i32* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %102 = shl i32 %101, 3
  %103 = sext i32 %102 to i64
  %104 = call i32 @ADDINC128(i32* %100, i64 %103)
  %105 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %6, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %5, align 8
  br label %89

113:                                              ; preds = %89
  %114 = load i64, i64* %6, align 8
  %115 = icmp ugt i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @MEMCPY_BCOPY(i32* %119, i32* %120, i64 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = shl i64 %126, 3
  %128 = call i32 @ADDINC128(i32* %125, i64 %127)
  br label %129

129:                                              ; preds = %116, %113
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %71, %11
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MEMCPY_BCOPY(i32*, i32*, i64) #1

declare dso_local i32 @ADDINC128(i32*, i64) #1

declare dso_local i32 @SHA512_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

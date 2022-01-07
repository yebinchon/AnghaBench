; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeSerialType.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeSerialType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }

@MEM_Null = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@MEM_Zero = common dso_local global i32 0, align 4
@MAX_6BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeSerialType(%struct.TYPE_7__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MEM_Null, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %141

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MEM_Int, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = xor i32 %38, -1
  store i32 %39, i32* %11, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %11, align 4
  %44 = icmp sle i32 %43, 127
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 8, %55
  store i32 %56, i32* %4, align 4
  br label %141

57:                                               ; preds = %50, %45
  %58 = load i32*, i32** %7, align 8
  store i32 1, i32* %58, align 4
  store i32 1, i32* %4, align 4
  br label %141

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  %61 = icmp sle i32 %60, 32767
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32*, i32** %7, align 8
  store i32 2, i32* %63, align 4
  store i32 2, i32* %4, align 4
  br label %141

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = icmp sle i32 %65, 8388607
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  store i32 3, i32* %68, align 4
  store i32 3, i32* %4, align 4
  br label %141

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = icmp sle i32 %70, 2147483647
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32*, i32** %7, align 8
  store i32 4, i32* %73, align 4
  store i32 4, i32* %4, align 4
  br label %141

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = icmp sle i32 %75, undef
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32*, i32** %7, align 8
  store i32 6, i32* %78, align 4
  store i32 5, i32* %4, align 4
  br label %141

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  store i32 8, i32* %80, align 4
  store i32 6, i32* %4, align 4
  br label %141

81:                                               ; preds = %25
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MEM_Real, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  store i32 8, i32* %87, align 4
  store i32 7, i32* %4, align 4
  br label %141

88:                                               ; preds = %81
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MEM_Str, align 4
  %98 = load i32, i32* @MEM_Blob, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %95, %88
  %103 = phi i1 [ true, %88 ], [ %101, %95 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MEM_Zero, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %102
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %120, %102
  %130 = load i32, i32* %9, align 4
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 2
  %134 = add nsw i32 %133, 12
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @MEM_Str, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = add nsw i32 %134, %139
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %129, %86, %79, %77, %72, %67, %62, %57, %53, %23
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

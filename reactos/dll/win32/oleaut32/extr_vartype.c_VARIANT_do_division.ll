; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_vartype.c_VARIANT_do_division.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_vartype.c_VARIANT_do_division.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i64 }

@S_OK = common dso_local global i64 0, align 8
@DEC_MAX_SCALE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"result scale is %u, scaling (with loss of significant digits)...\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"result underflowed, setting to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32)* @VARIANT_do_division to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @VARIANT_do_division(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i64, i64* @S_OK, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @VARIANT_DIFromDec(i32* %18, %struct.TYPE_7__* %10)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @VARIANT_DIFromDec(i32* %20, %struct.TYPE_7__* %11)
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @VARIANT_DI_div(%struct.TYPE_7__* %10, %struct.TYPE_7__* %11, %struct.TYPE_7__* %12, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %9, align 8
  br label %119

29:                                               ; preds = %4
  %30 = load i64, i64* @S_OK, align 8
  store i64 %30, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DEC_MAX_SCALE, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %116

35:                                               ; preds = %29
  store i8 0, i8* %14, align 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %55, %35
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DEC_MAX_SCALE, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ARRAY_SIZE(i32* %48)
  %50 = call i32 @VARIANT_int_iszero(i32* %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %44, %39
  %54 = phi i1 [ false, %39 ], [ %52, %44 ]
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ARRAY_SIZE(i32* %59)
  %61 = call zeroext i8 @VARIANT_int_divbychar(i32* %57, i32 %60, i32 10)
  store i8 %61, i8* %14, align 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %62, align 8
  br label %39

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DEC_MAX_SCALE, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  store i64 0, i64* %73, align 8
  br label %115

74:                                               ; preds = %65
  %75 = load i8, i8* %14, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sge i32 %76, 5
  br i1 %77, label %78, label %114

78:                                               ; preds = %74
  store i8 1, i8* %14, align 1
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %110, %78
  %80 = load i32, i32* %15, align 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ARRAY_SIZE(i32* %82)
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i8, i8* %14, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi i1 [ false, %79 ], [ %88, %85 ]
  br i1 %90, label %91, label %113

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ugt i32 %99, -1
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %14, align 1
  %104 = load i32, i32* %16, align 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %15, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %79

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %74
  br label %115

115:                                              ; preds = %114, %70
  br label %116

116:                                              ; preds = %115, %29
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @VARIANT_DecFromDI(%struct.TYPE_7__* %12, i32* %117)
  br label %119

119:                                              ; preds = %116, %27
  %120 = load i64, i64* %9, align 8
  ret i64 %120
}

declare dso_local i32 @VARIANT_DIFromDec(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @VARIANT_DI_div(%struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @VARIANT_int_iszero(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local zeroext i8 @VARIANT_int_divbychar(i32*, i32, i32) #1

declare dso_local i32 @VARIANT_DecFromDI(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_redisBitpos.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_redisBitpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCHAR_MAX = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"End of redisBitpos() reached.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @redisBitpos(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @UCHAR_MAX, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i64 [ 0, %18 ], [ %20, %19 ]
  store i64 %22, i64* %10, align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %9, align 8
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %41, %21
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 7
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ false, %24 ], [ %31, %29 ]
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = load i8*, i8** %9, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %15, align 4
  br label %48

41:                                               ; preds = %34
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add nsw i64 %46, 8
  store i64 %47, i64* %13, align 8
  br label %24

48:                                               ; preds = %40, %32
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i64*
  store i64* %50, i64** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @ULONG_MAX, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i64 [ 0, %56 ], [ %58, %57 ]
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %70, %59
  %62 = load i64, i64* %6, align 8
  %63 = icmp uge i64 %62, 8
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %77

70:                                               ; preds = %64
  %71 = load i64*, i64** %8, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %73, 8
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %75, 64
  store i64 %76, i64* %13, align 8
  br label %61

77:                                               ; preds = %69, %61
  br label %78

78:                                               ; preds = %77, %48
  %79 = load i64*, i64** %8, align 8
  %80 = bitcast i64* %79 to i8*
  store i8* %80, i8** %9, align 8
  store i64 0, i64* %14, align 8
  br label %81

81:                                               ; preds = %100, %78
  %82 = load i64, i64* %14, align 8
  %83 = icmp ult i64 %82, 8
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i64, i64* %11, align 8
  %86 = shl i64 %85, 8
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = load i64, i64* %11, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %89, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %14, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  br label %81

103:                                              ; preds = %81
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i64 -1, i64* %4, align 8
  br label %136

110:                                              ; preds = %106, %103
  %111 = load i64, i64* @ULONG_MAX, align 8
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = lshr i64 %112, 1
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = xor i64 %114, -1
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %129, %110
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %11, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i64, i64* %13, align 8
  store i64 %128, i64* %4, align 8
  br label %136

129:                                              ; preds = %119
  %130 = load i64, i64* %13, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %12, align 8
  %133 = lshr i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %116

134:                                              ; preds = %116
  %135 = call i32 @serverPanic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %127, %109
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

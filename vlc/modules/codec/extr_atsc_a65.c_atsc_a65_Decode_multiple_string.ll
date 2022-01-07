; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_atsc_a65.c_atsc_a65_Decode_multiple_string.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_atsc_a65.c_atsc_a65_Decode_multiple_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ATSC_A65_COMPRESSION_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @atsc_a65_Decode_multiple_string(%struct.TYPE_4__* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %102

19:                                               ; preds = %3
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = call i32 @BUF_ADVANCE(i64 1)
  br label %24

24:                                               ; preds = %94, %19
  %25 = load i64, i64* %10, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %97

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %99

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64*, i64** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @memcmp(i64* %37, i64 %40, i32 3)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %31
  %44 = phi i1 [ false, %31 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = call i32 @BUF_ADVANCE(i64 3)
  %47 = load i64*, i64** %6, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = call i32 @BUF_ADVANCE(i64 1)
  br label %51

51:                                               ; preds = %90, %43
  %52 = load i64, i64* %12, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = icmp ult i64 %55, 3
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %99

58:                                               ; preds = %54
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %13, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %14, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %15, align 8
  %68 = call i32 @BUF_ADVANCE(i64 3)
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %99

73:                                               ; preds = %58
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @ATSC_A65_COMPRESSION_NONE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %73
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @convert_encoding_set(%struct.TYPE_4__* %82, i64* %83, i64 %84, i8** %8, i64* %9, i64 %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @BUF_ADVANCE(i64 %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %12, align 8
  br label %51

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %10, align 8
  br label %24

97:                                               ; preds = %24
  %98 = load i8*, i8** %8, align 8
  store i8* %98, i8** %4, align 8
  br label %102

99:                                               ; preds = %72, %57, %30
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @free(i8* %100)
  store i8* null, i8** %4, align 8
  br label %102

102:                                              ; preds = %99, %97, %18
  %103 = load i8*, i8** %4, align 8
  ret i8* %103
}

declare dso_local i32 @BUF_ADVANCE(i64) #1

declare dso_local i64 @memcmp(i64*, i64, i32) #1

declare dso_local i32 @convert_encoding_set(%struct.TYPE_4__*, i64*, i64, i8**, i64*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

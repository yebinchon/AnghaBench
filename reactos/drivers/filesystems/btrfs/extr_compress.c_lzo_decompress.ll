; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_lzo_decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_compress.c_lzo_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i64, i64, i32* }

@.str = private unnamed_addr constant [27 x i8] c"overflow: %x + %x > %I64x\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@LZO_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"do_lzo_decompress returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzo_decompress(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %119, %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %14, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = bitcast i32* %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* %8, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30, i64 %31)
  %33 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %123

34:                                               ; preds = %17
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %35, 8
  store i64 %36, i64* %14, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  store i32* %39, i32** %40, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @LZO_PAGE_SIZE, align 8
  %50 = call i64 @min(i64 %48, i64 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = call i32 @do_lzo_decompress(%struct.TYPE_3__* %16)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %34
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i64, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %123

62:                                               ; preds = %34
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %75, %77
  %79 = call i32 @RtlZeroMemory(i32* %73, i64 %78)
  br label %80

80:                                               ; preds = %68, %62
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* @LZO_PAGE_SIZE, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @LZO_PAGE_SIZE, align 8
  %93 = srem i64 %91, %92
  %94 = sub nsw i64 %88, %93
  %95 = icmp ult i64 %94, 8
  br i1 %95, label %96, label %107

96:                                               ; preds = %80
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %14, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* @LZO_PAGE_SIZE, align 8
  %101 = sdiv i64 %99, %100
  %102 = add nsw i64 %101, 1
  %103 = load i64, i64* @LZO_PAGE_SIZE, align 8
  %104 = mul nsw i64 %102, %103
  %105 = load i64, i64* %11, align 8
  %106 = sub nsw i64 %104, %105
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %96, %80
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i64, i64* %10, align 8
  %118 = icmp sgt i64 %117, 0
  br label %119

119:                                              ; preds = %116, %112
  %120 = phi i1 [ false, %112 ], [ %118, %116 ]
  br i1 %120, label %17, label %121

121:                                              ; preds = %119
  %122 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %57, %28
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @ERR(i8*, i64, ...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @do_lzo_decompress(%struct.TYPE_3__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

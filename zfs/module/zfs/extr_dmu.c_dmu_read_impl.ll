; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_read_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_read_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i64 }

@DMU_MAX_ACCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i64, i8*, i32)* @dmu_read_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmu_read_impl(%struct.TYPE_7__* %0, i64 %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %36, %37
  %39 = call i64 @MIN(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %31, %30
  %41 = phi i64 [ 0, %30 ], [ %39, %31 ]
  store i64 %41, i64* %14, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i32 @bzero(i8* %44, i64 %47)
  %49 = load i64, i64* %14, align 8
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %40, %5
  br label %51

51:                                               ; preds = %121, %50
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %126

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @DMU_MAX_ACCESS, align 4
  %58 = sdiv i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = call i64 @MIN(i32 %56, i64 %59)
  store i64 %60, i64* %15, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32, i32* @FTAG, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dmu_buf_hold_array_by_dnode(%struct.TYPE_7__* %61, i64 %62, i64 %63, i32 %64, i32 %65, i32* %12, %struct.TYPE_8__*** %11, i32 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %126

71:                                               ; preds = %54
  store i32 0, i32* %16, align 4
  br label %72

72:                                               ; preds = %118, %71
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %77, i64 %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %19, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp sgt i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %86, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %18, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @MIN(i32 %96, i64 %97)
  store i64 %98, i64* %17, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i64, i64* %17, align 8
  %108 = call i32 @memcpy(i8* %99, i8* %106, i64 %107)
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %7, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %8, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %9, align 8
  br label %118

118:                                              ; preds = %76
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %72

121:                                              ; preds = %72
  %122 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @FTAG, align 4
  %125 = call i32 @dmu_buf_rele_array(%struct.TYPE_8__** %122, i32 %123, i32 %124)
  br label %51

126:                                              ; preds = %70, %51
  %127 = load i32, i32* %13, align 4
  ret i32 %127
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @dmu_buf_hold_array_by_dnode(%struct.TYPE_7__*, i64, i64, i32, i32, i32*, %struct.TYPE_8__***, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dmu_buf_rele_array(%struct.TYPE_8__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

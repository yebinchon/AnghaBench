; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_StoreUnwindCodes.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_StoreUnwindCodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32 }

@regs = common dso_local global %struct.TYPE_10__* null, align 8
@UWOP_SAVE_NONVOL = common dso_local global i8* null, align 8
@UWOP_SAVE_NONVOL_FAR = common dso_local global i8* null, align 8
@UWOP_ALLOC_SMALL = common dso_local global i8* null, align 8
@UWOP_ALLOC_LARGE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StoreUnwindCodes(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.TYPE_7__], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %13, %14
  %16 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 16
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %112 [
    i32 129, label %21
    i32 128, label %21
    i32 132, label %63
    i32 131, label %63
    i32 130, label %63
  ]

21:                                               ; preds = %3, %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @regs, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 524280
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load i8*, i8** @UWOP_SAVE_NONVOL, align 8
  %37 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 16
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 8
  %43 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  store i32 2, i32* %7, align 4
  br label %62

45:                                               ; preds = %21
  %46 = load i8*, i8** @UWOP_SAVE_NONVOL_FAR, align 8
  %47 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 16
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 8
  %53 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 8
  %59 = ashr i32 %58, 16
  %60 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  store i32 3, i32* %7, align 4
  br label %62

62:                                               ; preds = %45, %35
  br label %112

63:                                               ; preds = %3, %3, %3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %67, 128
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i8*, i8** @UWOP_ALLOC_SMALL, align 8
  %71 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 16
  %73 = load i32, i32* %8, align 4
  %74 = sdiv i32 %73, 8
  %75 = sub nsw i32 %74, 1
  %76 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 1, i32* %7, align 4
  br label %111

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 524280
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i8*, i8** @UWOP_ALLOC_LARGE, align 8
  %83 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 16
  %85 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %87, 8
  %89 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  store i32 2, i32* %7, align 4
  br label %110

91:                                               ; preds = %78
  %92 = load i8*, i8** @UWOP_ALLOC_LARGE, align 8
  %93 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 16
  %95 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = ptrtoint i8* %99 to i32
  %101 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %8, align 4
  %104 = ashr i32 %103, 16
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = ptrtoint i8* %106 to i32
  %108 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  store i32 3, i32* %7, align 4
  br label %110

110:                                              ; preds = %91, %81
  br label %111

111:                                              ; preds = %110, %69
  br label %112

112:                                              ; preds = %3, %111, %62
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = icmp ne %struct.TYPE_8__* %113, null
  br i1 %114, label %115, label %169

115:                                              ; preds = %112
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %140, %115
  %121 = load i32, i32* %10, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %136
  %138 = bitcast %struct.TYPE_7__* %131 to i8*
  %139 = bitcast %struct.TYPE_7__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 24, i1 false)
  br label %140

140:                                              ; preds = %123
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %10, align 4
  br label %120

143:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %144

144:                                              ; preds = %160, %143
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3 x %struct.TYPE_7__], [3 x %struct.TYPE_7__]* %9, i64 0, i64 %156
  %158 = bitcast %struct.TYPE_7__* %154 to i8*
  %159 = bitcast %struct.TYPE_7__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 24, i1 false)
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %144

163:                                              ; preds = %144
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %112
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

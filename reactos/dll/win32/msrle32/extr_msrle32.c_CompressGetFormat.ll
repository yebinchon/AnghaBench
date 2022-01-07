; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_CompressGetFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_CompressGetFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i32 0, align 4
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i32 0, align 4
@ICERR_ERROR = common dso_local global i32 0, align 4
@BI_RLE4 = common dso_local global i32 0, align 4
@BI_RLE8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*)* @CompressGetFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompressGetFormat(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %9, %struct.TYPE_13__* %10, %struct.TYPE_14__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = icmp eq %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @ICERR_BADPARAM, align 4
  store i32 %23, i32* %4, align 4
  br label %184

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %184

25:                                               ; preds = %3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i64 @CompressQuery(%struct.TYPE_15__* %26, %struct.TYPE_13__* %27, i32* null)
  %29 = load i64, i64* @ICERR_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = icmp eq %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ICERR_BADFORMAT, align 4
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %4, align 4
  br label %184

39:                                               ; preds = %25
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 0, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %47, 8
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %65 [
    i32 129, label %56
    i32 128, label %57
    i32 130, label %58
    i32 131, label %58
  ]

56:                                               ; preds = %49
  store i32 16, i32* %8, align 4
  br label %67

57:                                               ; preds = %49
  store i32 256, i32* %8, align 4
  br label %67

58:                                               ; preds = %49, %49
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 4
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 16, i32 256
  store i32 %64, i32* %8, align 4
  br label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @ICERR_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %184

67:                                               ; preds = %58, %57, %56
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 4, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = icmp ne %struct.TYPE_14__* %82, null
  br i1 %83, label %84, label %182

84:                                               ; preds = %76
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 129
  br i1 %102, label %108, label %103

103:                                              ; preds = %84
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp sle i32 %106, 4
  br i1 %107, label %108, label %114

108:                                              ; preds = %103, %84
  %109 = load i32, i32* @BI_RLE4, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  store i32 4, i32* %113, align 8
  br label %120

114:                                              ; preds = %103
  %115 = load i32, i32* @BI_RLE8, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  store i32 8, i32* %119, align 8
  br label %120

120:                                              ; preds = %114, %108
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = call i32 @MSRLE32_GetMaxCompressedSize(%struct.TYPE_14__* %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %120
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 1, %142
  store i32 %143, i32* %8, align 4
  br label %148

144:                                              ; preds = %120
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = shl i32 1, %152
  %154 = call i32 @min(i32 %149, i32 %153)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %160 = ptrtoint %struct.TYPE_14__* %159 to i64
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %167 = bitcast %struct.TYPE_13__* %166 to i32*
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = call i32 @memcpy(i64 %165, i32* %172, i32 %178)
  %180 = load i64, i64* @ICERR_OK, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %184

182:                                              ; preds = %76
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %4, align 4
  br label %184

184:                                              ; preds = %182, %148, %65, %37, %24, %22
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CompressQuery(%struct.TYPE_15__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @MSRLE32_GetMaxCompressedSize(%struct.TYPE_14__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

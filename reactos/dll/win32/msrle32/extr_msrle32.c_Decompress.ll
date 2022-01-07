; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_Decompress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_Decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32*, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%u)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i64 0, align 8
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i64 0, align 8
@BI_RGB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* @Decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Decompress(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %9, %struct.TYPE_19__* %10, i32 %11)
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = icmp eq %struct.TYPE_19__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %20, i64* %4, align 8
  br label %184

21:                                               ; preds = %3
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = icmp eq %struct.TYPE_18__* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = icmp eq %struct.TYPE_21__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31, %26, %21
  %42 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %42, i64* %4, align 8
  br label %184

43:                                               ; preds = %36
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = call i64 @DecompressBegin(%struct.TYPE_20__* %49, %struct.TYPE_18__* %52, %struct.TYPE_21__* %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @ICERR_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %4, align 8
  br label %184

62:                                               ; preds = %48
  br label %77

63:                                               ; preds = %43
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = call i64 @DecompressQuery(%struct.TYPE_20__* %64, %struct.TYPE_18__* %67, %struct.TYPE_21__* %70)
  %72 = load i64, i64* @ICERR_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i64, i64* @ICERR_BADFORMAT, align 8
  store i64 %75, i64* %4, align 8
  br label %184

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %82, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %95, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BI_RGB, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %77
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  store i32 %116, i32* %120, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32* %123, i32* %126, i32 %131)
  %133 = load i64, i64* @ICERR_OK, align 8
  store i64 %133, i64* %4, align 8
  br label %184

134:                                              ; preds = %77
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = bitcast %struct.TYPE_21__* %137 to { i64, i64 }*
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @DIBWIDTHBYTES(i64 %140, i64 %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %143, %148
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 2
  store i32 %149, i32* %153, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 4
  br i1 %159, label %160, label %172

160:                                              ; preds = %134
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i64 @MSRLE32_DecompressRLE4(%struct.TYPE_20__* %161, %struct.TYPE_21__* %164, i32* %167, i32* %170)
  store i64 %171, i64* %4, align 8
  br label %184

172:                                              ; preds = %134
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @MSRLE32_DecompressRLE8(%struct.TYPE_20__* %173, %struct.TYPE_21__* %176, i32* %179, i32* %182)
  store i64 %183, i64* %4, align 8
  br label %184

184:                                              ; preds = %172, %160, %111, %74, %60, %41, %19
  %185 = load i64, i64* %4, align 8
  ret i64 %185
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @DecompressBegin(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i64 @DecompressQuery(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DIBWIDTHBYTES(i64, i64) #1

declare dso_local i64 @MSRLE32_DecompressRLE4(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i64 @MSRLE32_DecompressRLE8(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

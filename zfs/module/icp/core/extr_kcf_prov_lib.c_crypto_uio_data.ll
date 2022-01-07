; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_lib.c_crypto_uio_data.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_prov_lib.c_crypto_uio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@CRYPTO_DATA_UIO = common dso_local global i64 0, align 8
@UIO_SYSSPACE = common dso_local global i64 0, align 8
@CRYPTO_ARGUMENTS_BAD = common dso_local global i32 0, align 4
@CRYPTO_DATA_LEN_RANGE = common dso_local global i32 0, align 4
@CRYPTO_SIGNATURE_INVALID = common dso_local global i32 0, align 4
@CRYPTO_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_uio_data(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i8* %4, void ()* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca void ()*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store void ()* %5, void ()** %13, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %16, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CRYPTO_DATA_UIO, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UIO_SYSSPACE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %41, i32* %7, align 4
  br label %175

42:                                               ; preds = %6
  store i64 0, i64* %17, align 8
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i64, i64* %17, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i64, i64* %15, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %50, %57
  br label %59

59:                                               ; preds = %49, %43
  %60 = phi i1 [ false, %43 ], [ %58, %49 ]
  br i1 %60, label %61, label %73

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i64, i64* %17, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %15, align 8
  %72 = sub nsw i64 %71, %70
  store i64 %72, i64* %15, align 8
  br label %43

73:                                               ; preds = %59
  %74 = load i64, i64* %17, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i64, i64* %16, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %83, i32* %7, align 4
  br label %175

84:                                               ; preds = %79, %73
  br label %85

85:                                               ; preds = %149, %84
  %86 = load i64, i64* %17, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i64, i64* %16, align 8
  %93 = icmp ugt i64 %92, 0
  br label %94

94:                                               ; preds = %91, %85
  %95 = phi i1 [ false, %85 ], [ %93, %91 ]
  br i1 %95, label %96, label %155

96:                                               ; preds = %94
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = sub nsw i64 %103, %104
  %106 = load i64, i64* %16, align 8
  %107 = call i64 @MIN(i64 %105, i64 %106)
  store i64 %107, i64* %18, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i64, i64* %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = add nsw i64 %114, %115
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %19, align 8
  %118 = load i32, i32* %11, align 4
  switch i32 %118, label %149 [
    i32 133, label %119
    i32 132, label %127
    i32 134, label %135
    i32 130, label %147
    i32 129, label %147
    i32 128, label %147
    i32 131, label %147
  ]

119:                                              ; preds = %96
  %120 = load i32*, i32** %19, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i64, i64* %18, align 8
  %123 = call i32 @bcopy(i32* %120, i32* %121, i64 %122)
  %124 = load i64, i64* %18, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 %124
  store i32* %126, i32** %9, align 8
  br label %149

127:                                              ; preds = %96
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %19, align 8
  %130 = load i64, i64* %18, align 8
  %131 = call i32 @bcopy(i32* %128, i32* %129, i64 %130)
  %132 = load i64, i64* %18, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 %132
  store i32* %134, i32** %9, align 8
  br label %149

135:                                              ; preds = %96
  %136 = load i32*, i32** %19, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i64, i64* %18, align 8
  %139 = call i32 @bcmp(i32* %136, i32* %137, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @CRYPTO_SIGNATURE_INVALID, align 4
  store i32 %142, i32* %7, align 4
  br label %175

143:                                              ; preds = %135
  %144 = load i64, i64* %18, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 %144
  store i32* %146, i32** %9, align 8
  br label %149

147:                                              ; preds = %96, %96, %96, %96
  %148 = load i32, i32* @CRYPTO_ARGUMENTS_BAD, align 4
  store i32 %148, i32* %7, align 4
  br label %175

149:                                              ; preds = %96, %143, %127, %119
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %16, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %17, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %85

155:                                              ; preds = %94
  %156 = load i64, i64* %17, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load i64, i64* %16, align 8
  %163 = icmp ugt i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* %11, align 4
  switch i32 %165, label %171 [
    i32 132, label %166
  ]

166:                                              ; preds = %164
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @CRYPTO_BUFFER_TOO_SMALL, align 4
  store i32 %170, i32* %7, align 4
  br label %175

171:                                              ; preds = %164
  %172 = load i32, i32* @CRYPTO_DATA_LEN_RANGE, align 4
  store i32 %172, i32* %7, align 4
  br label %175

173:                                              ; preds = %161, %155
  %174 = load i32, i32* @CRYPTO_SUCCESS, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %173, %171, %166, %147, %141, %82, %40
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @bcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_StoreUnwindInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_StoreUnwindInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_17__ = type { i8*, i8*, i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_15__*, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@UNW_FLAG_EHANDLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StoreUnwindInfo(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %7, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DwDecodeCie(%struct.TYPE_19__* %11, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %43, %3
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ult i8* %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @DwExecIntruction(%struct.TYPE_20__* %8, i8* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %9, align 8
  br label %38

49:                                               ; preds = %38
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %85, %49
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @DwExecIntruction(%struct.TYPE_20__* %8, i8* %60)
  %62 = load i8*, i8** %9, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %59
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @StoreUnwindCodes(%struct.TYPE_16__* %69, %struct.TYPE_20__* %8, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %68, %59
  br label %53

86:                                               ; preds = %53
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ROUND_UP(i32 %87, i32 4)
  store i32 %88, i32* %7, align 4
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %173

92:                                               ; preds = %86
  %93 = load i32, i32* @UNW_FLAG_EHANDLER, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = bitcast %struct.TYPE_16__* %98 to i8*
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = bitcast i8* %102 to i32*
  store i32* %103, i32** %13, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %13, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = bitcast i32* %107 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  store i64 0, i64* %12, align 8
  br label %113

113:                                              ; preds = %161, %92
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %118, label %164

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  store i32 %124, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  store i32 %136, i32* %142, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  store i32 %154, i32* %160, align 4
  br label %161

161:                                              ; preds = %118
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %12, align 8
  br label %113

164:                                              ; preds = %113
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = mul i64 %166, 4
  %168 = add i64 8, %167
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %164, %86
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local i32 @DwDecodeCie(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @DwExecIntruction(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @StoreUnwindCodes(%struct.TYPE_16__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

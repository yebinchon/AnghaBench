; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiInitIterator.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zuiInitIterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_25__*, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { %struct.TYPE_29__, %struct.TYPE_24__ }
%struct.TYPE_29__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_24__ = type { i32*, i32*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }

@OBJ_SET = common dso_local global i64 0, align 8
@OBJ_ENCODING_INTSET = common dso_local global i64 0, align 8
@OBJ_ENCODING_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unknown set encoding\00", align 1
@OBJ_ZSET = common dso_local global i64 0, align 8
@OBJ_ENCODING_ZIPLIST = common dso_local global i64 0, align 8
@OBJ_ENCODING_SKIPLIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown sorted set encoding\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Unsupported type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zuiInitIterator(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %8 = icmp eq %struct.TYPE_25__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %169

10:                                               ; preds = %1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @OBJ_SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %3, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBJ_ENCODING_INTSET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %72

37:                                               ; preds = %16
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OBJ_ENCODING_HT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %37
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = call i32 @dictGetIterator(%struct.TYPE_20__* %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dictNext(i32 %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  br label %71

69:                                               ; preds = %37
  %70 = call i32 @serverPanic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %43
  br label %72

72:                                               ; preds = %71, %25
  br label %169

73:                                               ; preds = %10
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OBJ_ZSET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %166

79:                                               ; preds = %73
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %4, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OBJ_ENCODING_ZIPLIST, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %79
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = call i32* @ziplistIndex(%struct.TYPE_20__* %100, i32 0)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  store i32* %101, i32** %104, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %130

110:                                              ; preds = %88
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32* @ziplistNext(%struct.TYPE_20__* %114, i32* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  store i32* %119, i32** %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i32 @serverAssert(i32 %128)
  br label %130

130:                                              ; preds = %110, %88
  br label %165

131:                                              ; preds = %79
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @OBJ_ENCODING_SKIPLIST, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %131
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  store %struct.TYPE_20__* %142, %struct.TYPE_20__** %145, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 8
  br label %164

162:                                              ; preds = %131
  %163 = call i32 @serverPanic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %137
  br label %165

165:                                              ; preds = %164, %130
  br label %168

166:                                              ; preds = %73
  %167 = call i32 @serverPanic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %165
  br label %169

169:                                              ; preds = %9, %168, %72
  ret void
}

declare dso_local i32 @dictGetIterator(%struct.TYPE_20__*) #1

declare dso_local i32 @dictNext(i32) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32* @ziplistIndex(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @ziplistNext(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @serverAssert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

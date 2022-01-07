; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_compress_chunk_populate_keys.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_compression.c_compress_chunk_populate_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"compression should be configured with an orderby or segment by\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"could not find compressed column for \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, %struct.TYPE_6__**, i32, i32*, %struct.TYPE_6__***)* @compress_chunk_populate_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @compress_chunk_populate_keys(i32 %0, %struct.TYPE_6__** %1, i32 %2, i32* %3, %struct.TYPE_6__*** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__***, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_6__*** %4, %struct.TYPE_6__**** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call i8* @palloc(i32 %21)
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %61, %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_6__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = call i64 @COMPRESSIONCOL_IS_ORDER_BY(%struct.TYPE_6__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48, %40
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %56, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @ERROR, align 4
  %70 = call i32 (i32, i8*, ...) @elog(i32 %69, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 8, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @palloc(i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_6__**
  %79 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %10, align 8
  store %struct.TYPE_6__** %78, %struct.TYPE_6__*** %79, align 8
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %145, %71
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %148

84:                                               ; preds = %80
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %14, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %92, 1
  store i64 %93, i64* %15, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, 1
  store i64 %97, i64* %16, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %99 = call i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_6__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %84
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %103 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %10, align 8
  %104 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %103, align 8
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %104, i64 %105
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %106, align 8
  br label %121

107:                                              ; preds = %84
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %109 = call i64 @COMPRESSIONCOL_IS_ORDER_BY(%struct.TYPE_6__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %113 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %10, align 8
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %116, %117
  %119 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %114, i64 %118
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %119, align 8
  br label %120

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120, %101
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @NameStr(i32 %125)
  %127 = call i32 @get_attnum(i32 %122, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @AttributeNumberIsValid(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %121
  %132 = load i32, i32* @ERROR, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @NameStr(i32 %135)
  %137 = call i32 (i32, i8*, ...) @elog(i32 %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %131, %121
  %139 = load i32, i32* %17, align 4
  %140 = call i64 @AttrNumberGetAttrOffset(i32 %139)
  %141 = load i64*, i64** %11, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 %140, i64* %144, align 8
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %80

148:                                              ; preds = %80
  %149 = load i64*, i64** %11, align 8
  ret i64* %149
}

declare dso_local i8* @palloc(i32) #1

declare dso_local i64 @COMPRESSIONCOL_IS_SEGMENT_BY(%struct.TYPE_6__*) #1

declare dso_local i64 @COMPRESSIONCOL_IS_ORDER_BY(%struct.TYPE_6__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @get_attnum(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @AttributeNumberIsValid(i32) #1

declare dso_local i64 @AttrNumberGetAttrOffset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

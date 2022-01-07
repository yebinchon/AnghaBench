; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_alloc_sys.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_alloc.c_alloc_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_17__* }

@CMFAIL = common dso_local global i8* null, align 8
@DEFAULT_MMAP_THRESHOLD = common dso_local global i64 0, align 8
@TOP_FOOT_SIZE = common dso_local global i64 0, align 8
@SIZE_T_ONE = common dso_local global i64 0, align 8
@PINUSE_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i64)* @alloc_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_sys(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load i8*, i8** @CMFAIL, align 8
  store i8* %17, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @DEFAULT_MMAP_THRESHOLD, align 8
  %20 = icmp uge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @LJ_UNLIKELY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @direct_alloc(i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %3, align 8
  br label %193

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @TOP_FOOT_SIZE, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @SIZE_T_ONE, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @granularity_align(i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ugt i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @LJ_LIKELY(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %32
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @CALL_MMAP(i64 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** @CMFAIL, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %6, align 8
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** @CMFAIL, align 8
  %60 = icmp ne i8* %58, %59
  br i1 %60, label %61, label %192

61:                                               ; preds = %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %12, align 8
  br label %64

64:                                               ; preds = %80, %61
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = icmp ne i8* %68, %76
  br label %78

78:                                               ; preds = %67, %64
  %79 = phi i1 [ false, %64 ], [ %77, %67 ]
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %12, align 8
  br label %64

84:                                               ; preds = %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %86 = icmp ne %struct.TYPE_17__* %85, null
  br i1 %86, label %87, label %112

87:                                               ; preds = %84
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = call i64 @segment_holds(%struct.TYPE_17__* %88, %struct.TYPE_18__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %87
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %108, %109
  %111 = call i32 @init_top(%struct.TYPE_16__* %102, %struct.TYPE_18__* %105, i64 %110)
  br label %160

112:                                              ; preds = %87, %84
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %12, align 8
  br label %115

115:                                              ; preds = %128, %112
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %117 = icmp ne %struct.TYPE_17__* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = icmp ne i8* %121, %124
  br label %126

126:                                              ; preds = %118, %115
  %127 = phi i1 [ false, %115 ], [ %125, %118 ]
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  store %struct.TYPE_17__* %131, %struct.TYPE_17__** %12, align 8
  br label %115

132:                                              ; preds = %126
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %134 = icmp ne %struct.TYPE_17__* %133, null
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %13, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = add i64 %146, %142
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i64, i64* %5, align 8
  %153 = call i8* @prepend_alloc(%struct.TYPE_16__* %149, i8* %150, i8* %151, i64 %152)
  store i8* %153, i8** %3, align 8
  br label %193

154:                                              ; preds = %132
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %7, align 8
  %158 = call i32 @add_segment(%struct.TYPE_16__* %155, i8* %156, i64 %157)
  br label %159

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159, %94
  %161 = load i64, i64* %5, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %161, %164
  br i1 %165, label %166, label %191

166:                                              ; preds = %160
  %167 = load i64, i64* %5, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %170, %167
  store i64 %171, i64* %169, align 8
  store i64 %171, i64* %14, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %173, align 8
  store %struct.TYPE_18__* %174, %struct.TYPE_18__** %15, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call %struct.TYPE_18__* @chunk_plus_offset(%struct.TYPE_18__* %175, i64 %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  store %struct.TYPE_18__* %177, %struct.TYPE_18__** %179, align 8
  store %struct.TYPE_18__* %177, %struct.TYPE_18__** %16, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i64, i64* @PINUSE_BIT, align 8
  %182 = or i64 %180, %181
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %187 = load i64, i64* %5, align 8
  %188 = call i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_16__* %185, %struct.TYPE_18__* %186, i64 %187)
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %190 = call i8* @chunk2mem(%struct.TYPE_18__* %189)
  store i8* %190, i8** %3, align 8
  br label %193

191:                                              ; preds = %160
  br label %192

192:                                              ; preds = %191, %57
  store i8* null, i8** %3, align 8
  br label %193

193:                                              ; preds = %192, %166, %135, %29
  %194 = load i8*, i8** %3, align 8
  ret i8* %194
}

declare dso_local i64 @LJ_UNLIKELY(i32) #1

declare dso_local i8* @direct_alloc(i64) #1

declare dso_local i64 @granularity_align(i64) #1

declare dso_local i64 @LJ_LIKELY(i32) #1

declare dso_local i64 @CALL_MMAP(i64) #1

declare dso_local i64 @segment_holds(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @init_top(%struct.TYPE_16__*, %struct.TYPE_18__*, i64) #1

declare dso_local i8* @prepend_alloc(%struct.TYPE_16__*, i8*, i8*, i64) #1

declare dso_local i32 @add_segment(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local %struct.TYPE_18__* @chunk_plus_offset(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @set_size_and_pinuse_of_inuse_chunk(%struct.TYPE_16__*, %struct.TYPE_18__*, i64) #1

declare dso_local i8* @chunk2mem(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

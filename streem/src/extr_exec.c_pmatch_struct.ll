; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_pmatch_struct.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_pmatch_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }
%struct.strm_array = type { i64, i32*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@STRM_NG = common dso_local global i32 0, align 4
@NODE_PAIR = common dso_local global i64 0, align 8
@STRM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64, i32*, i32*)* @pmatch_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmatch_struct(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.strm_array*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %14, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @strm_value_ary(i64 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.strm_array* @strm_ary_struct(i32 %27)
  store %struct.strm_array* %28, %struct.strm_array** %16, align 8
  %29 = load %struct.strm_array*, %struct.strm_array** %16, align 8
  %30 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* @STRM_NG, align 4
  store i32 %34, i32* %7, align 4
  br label %150

35:                                               ; preds = %6
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.strm_array*, %struct.strm_array** %16, align 8
  %40 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @STRM_NG, align 4
  store i32 %44, i32* %7, align 4
  br label %150

45:                                               ; preds = %35
  %46 = load %struct.strm_array*, %struct.strm_array** %16, align 8
  %47 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64* @strm_ary_ptr(i32 %48)
  store i64* %49, i64** %17, align 8
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %145, %45
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %148

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %19, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NODE_PAIR, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @node_to_sym(i32 %75)
  store i64 %76, i64* %20, align 8
  store i32 0, i32* %21, align 4
  br label %77

77:                                               ; preds = %141, %57
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.strm_array*, %struct.strm_array** %16, align 8
  %81 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %144

84:                                               ; preds = %77
  %85 = load i64*, i64** %17, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %20, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %140

92:                                               ; preds = %84
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.strm_array*, %struct.strm_array** %16, align 8
  %99 = getelementptr inbounds %struct.strm_array, %struct.strm_array* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %21, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pmatch(i32* %93, i32* %94, i32 %97, i32 %104)
  %106 = load i32, i32* @STRM_NG, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = load i32, i32* @STRM_NG, align 4
  store i32 %109, i32* %7, align 4
  br label %150

110:                                              ; preds = %92
  %111 = load i32*, i32** %12, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load i32, i32* %21, align 4
  %115 = srem i32 %114, 64
  %116 = shl i32 1, %115
  store i32 %116, i32* %22, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %21, align 4
  %119 = sdiv i32 %118, 64
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %22, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %126, %113
  %131 = load i32, i32* %22, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %21, align 4
  %134 = sdiv i32 %133, 64
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %131
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %130, %110
  br label %144

140:                                              ; preds = %84
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %21, align 4
  br label %77

144:                                              ; preds = %139, %77
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %50

148:                                              ; preds = %50
  %149 = load i32, i32* @STRM_OK, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %108, %43, %33
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @strm_value_ary(i64) #1

declare dso_local %struct.strm_array* @strm_ary_struct(i32) #1

declare dso_local i64* @strm_ary_ptr(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @node_to_sym(i32) #1

declare dso_local i32 @pmatch(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_slab.c_ngx_slab_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i32, i8*, i8, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32*, %struct.TYPE_8__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__* }

@ngx_pagesize_shift = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_slab_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 1, %13
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call %struct.TYPE_8__* @ngx_slab_slots(%struct.TYPE_9__* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = bitcast %struct.TYPE_8__* %19 to i32*
  store i32* %20, i32** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 9
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  store i64 %28, i64* %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @ngx_slab_junk(i32* %29, i64 %30)
  %32 = load i64, i64* @ngx_pagesize_shift, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %57, %1
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %41
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %37

60:                                               ; preds = %37
  %61 = load i64, i64* %7, align 8
  %62 = mul i64 %61, 24
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %3, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_8__*
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 11
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 11
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = mul i64 %72, 24
  %74 = call i32 @ngx_memzero(%struct.TYPE_8__* %71, i64 %73)
  %75 = load i64, i64* %7, align 8
  %76 = mul i64 %75, 24
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 %76
  store i32* %78, i32** %3, align 8
  %79 = load i64, i64* %7, align 8
  %80 = mul i64 %79, 48
  %81 = load i64, i64* %4, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i32, i32* @ngx_pagesize, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 24
  %87 = udiv i64 %83, %86
  store i64 %87, i64* %8, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_8__*
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 6
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = mul i64 %95, 24
  %97 = call i32 @ngx_memzero(%struct.TYPE_8__* %94, i64 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 6
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %10, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 10
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 10
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 10
  %120 = ptrtoint %struct.TYPE_8__* %119 to i64
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i32*, i32** %3, align 8
  %124 = load i64, i64* %8, align 8
  %125 = mul i64 %124, 24
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* @ngx_pagesize, align 4
  %128 = call i32* @ngx_align_ptr(i32* %126, i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 8
  store i32* %128, i32** %130, align 8
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 8
  %137 = load i32*, i32** %136, align 8
  %138 = ptrtoint i32* %134 to i64
  %139 = ptrtoint i32* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = load i32, i32* @ngx_pagesize, align 4
  %143 = sext i32 %142 to i64
  %144 = sdiv i64 %141, %143
  %145 = sub i64 %131, %144
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = icmp ugt i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %60
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %8, align 8
  %151 = sub i64 %150, %149
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %148, %60
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %159
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 7
  store %struct.TYPE_8__* %160, %struct.TYPE_8__** %162, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  store i32 1, i32* %167, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  store i8 0, i8* %173, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @ngx_slab_slots(%struct.TYPE_9__*) #1

declare dso_local i32 @ngx_slab_junk(i32*, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_8__*, i64) #1

declare dso_local i32* @ngx_align_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

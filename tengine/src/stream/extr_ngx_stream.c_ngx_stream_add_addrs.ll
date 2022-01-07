; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream.c_ngx_stream_add_addrs.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream.c_ngx_stream_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_20__*, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_30__ }
%struct.TYPE_33__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_31__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_30__, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i64 }
%struct.sockaddr_in = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_21__*, %struct.TYPE_23__*)* @ngx_stream_add_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_add_addrs(%struct.TYPE_24__* %0, %struct.TYPE_21__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 40
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_22__* @ngx_pcalloc(i32 %13, i32 %19)
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %22, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = icmp eq %struct.TYPE_22__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @NGX_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %94

29:                                               ; preds = %3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %10, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %89, %29
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %33
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %47, %struct.sockaddr_in** %9, align 8
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 5
  store i32 %61, i32* %66, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 3
  store i32 %72, i32* %77, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 2
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %40
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %33

92:                                               ; preds = %33
  %93 = load i32, i32* @NGX_OK, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %27
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_22__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_avi_HeaderAdd_strh.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_avi_HeaderAdd_strh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"strh\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"vids\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DIB \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @avi_HeaderAdd_strh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_HeaderAdd_strh(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = call i32 @AVI_BOX_ENTER(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %142 [
    i32 128, label %13
    i32 129, label %81
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @bo_add_fourcc(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @bo_add_fourcc(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %33

25:                                               ; preds = %13
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bo_add_32le(i32* %26, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @bo_add_32le(i32* %34, i32 0)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @bo_add_16le(i32* %36, i32 0)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @bo_add_16le(i32* %38, i32 0)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @bo_add_32le(i32* %40, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @bo_add_32le(i32* %42, i32 1000)
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 1000, %47
  %49 = call i32 @bo_add_32le(i32* %44, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @bo_add_32le(i32* %50, i32 0)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bo_add_32le(i32* %52, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @bo_add_32le(i32* %57, i32 1048576)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @bo_add_32le(i32* %59, i32 -1)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @bo_add_32le(i32* %61, i32 0)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @bo_add_16le(i32* %63, i32 0)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @bo_add_16le(i32* %65, i32 0)
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bo_add_16le(i32* %67, i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bo_add_16le(i32* %74, i32 %79)
  br label %142

81:                                               ; preds = %2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 8
  store i32 %94, i32* %6, align 4
  br label %101

95:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  store i32 1000, i32* %7, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 1000, %98
  %100 = sdiv i32 %99, 8
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @bo_add_fourcc(i32* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @bo_add_32le(i32* %104, i32 0)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @bo_add_32le(i32* %106, i32 0)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @bo_add_16le(i32* %108, i32 0)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @bo_add_16le(i32* %110, i32 0)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @bo_add_32le(i32* %112, i32 0)
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @bo_add_32le(i32* %114, i32 %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @bo_add_32le(i32* %117, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @bo_add_32le(i32* %120, i32 0)
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bo_add_32le(i32* %122, i32 %125)
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @bo_add_32le(i32* %127, i32 10240)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @bo_add_32le(i32* %129, i32 -1)
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @bo_add_32le(i32* %131, i32 %132)
  %134 = load i32*, i32** %4, align 8
  %135 = call i32 @bo_add_16le(i32* %134, i32 0)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @bo_add_16le(i32* %136, i32 0)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @bo_add_16le(i32* %138, i32 0)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @bo_add_16le(i32* %140, i32 0)
  br label %142

142:                                              ; preds = %2, %101, %33
  %143 = call i32 @AVI_BOX_EXIT(i32 0)
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @AVI_BOX_ENTER(i8*) #1

declare dso_local i32 @bo_add_fourcc(i32*, i8*) #1

declare dso_local i32 @bo_add_32le(i32*, i32) #1

declare dso_local i32 @bo_add_16le(i32*, i32) #1

declare dso_local i32 @AVI_BOX_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

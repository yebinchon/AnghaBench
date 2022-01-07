; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsxform.c__cmsTransform2toTransformAdaptor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsxform.c__cmsTransform2toTransformAdaptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmstransform_struct = type { i32 (i32, %struct._cmstransform_struct*, i8*, i8*, i64, i32)* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct._cmstransform_struct*, i8*, i8*, i64, i64, %struct.TYPE_4__*)* @_cmsTransform2toTransformAdaptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cmsTransform2toTransformAdaptor(i32 %0, %struct._cmstransform_struct* %1, i8* %2, i8* %3, i64 %4, i64 %5, %struct.TYPE_4__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct._cmstransform_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store %struct._cmstransform_struct* %1, %struct._cmstransform_struct** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %27 = call i32 @_cmsHandleExtraChannels(i32 %20, %struct._cmstransform_struct* %21, i8* %22, i8* %23, i64 %24, i64 %25, %struct.TYPE_4__* %26)
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %28

28:                                               ; preds = %65, %7
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i64, i64* %16, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %18, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i64, i64* %17, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %19, align 8
  %43 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %9, align 8
  %44 = getelementptr inbounds %struct._cmstransform_struct, %struct._cmstransform_struct* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct._cmstransform_struct*, i8*, i8*, i64, i32)*, i32 (i32, %struct._cmstransform_struct*, i8*, i8*, i64, i32)** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct._cmstransform_struct*, %struct._cmstransform_struct** %9, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %45(i32 %46, %struct._cmstransform_struct* %47, i8* %48, i8* %49, i64 %50, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %16, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %16, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %17, align 8
  br label %65

65:                                               ; preds = %32
  %66 = load i64, i64* %15, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %28

68:                                               ; preds = %28
  ret void
}

declare dso_local i32 @_cmsHandleExtraChannels(i32, %struct._cmstransform_struct*, i8*, i8*, i64, i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

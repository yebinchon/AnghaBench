; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsplugin.c__cmsContextGetClientChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsplugin.c__cmsContextGetClientChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }
%struct._cmsContext_struct = type { i8** }

@MemoryClientMax = common dso_local global i64 0, align 8
@cmsERROR_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Bad context client -- possible corruption\00", align 1
@globalContext = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UserPtr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_cmsContextGetClientChunk(i32 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct._cmsContext_struct*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MemoryClientMax, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @cmsERROR_INTERNAL, align 4
  %18 = call i32 @cmsSignalError(i32 %16, i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @_cmsAssert(i32 0)
  %20 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @globalContext, i32 0, i32 0), align 8
  %21 = load i64, i64* @UserPtr, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %3, align 8
  br label %42

24:                                               ; preds = %11
  %25 = load i32, i32* %4, align 4
  %26 = call %struct._cmsContext_struct* @_cmsGetContext(i32 %25)
  store %struct._cmsContext_struct* %26, %struct._cmsContext_struct** %6, align 8
  %27 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %6, align 8
  %28 = getelementptr inbounds %struct._cmsContext_struct, %struct._cmsContext_struct* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %3, align 8
  br label %42

37:                                               ; preds = %24
  %38 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @globalContext, i32 0, i32 0), align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %37, %35, %15
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i32 @_cmsAssert(i32) #1

declare dso_local %struct._cmsContext_struct* @_cmsGetContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

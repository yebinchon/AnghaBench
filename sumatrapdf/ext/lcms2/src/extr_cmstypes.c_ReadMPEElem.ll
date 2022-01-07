; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadMPEElem.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_ReadMPEElem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_4__ = type { i64 (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* }
%struct.TYPE_5__ = type { i32 }

@MPEPlugin = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SupportedMPEtypes = common dso_local global i32 0, align 4
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown MPE type '%s' found.\00", align 1
@cmsAT_END = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i32, i32)* @ReadMPEElem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadMPEElem(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._cms_typehandler_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca [5 x i8], align 1
  store i32 %0, i32* %8, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %17, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MPEPlugin, align 4
  %24 = call i64 @_cmsContextGetClientChunk(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %18, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i64* %14 to i32*
  %29 = call i32 @_cmsReadUInt32Number(i32 %26, i32* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %7, align 4
  br label %85

33:                                               ; preds = %6
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @_cmsReadUInt32Number(i32 %34, i32* %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %85

40:                                               ; preds = %33
  %41 = load i64, i64* %14, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SupportedMPEtypes, align 4
  %47 = call %struct.TYPE_4__* @GetHandler(i32 %42, i32 %45, i32 %46)
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %15, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %52 = load i64, i64* %14, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @_cmsTagSignature2String(i8* %51, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %19, i64 0, i64 0
  %58 = call i32 @cmsSignalError(i32 %55, i32 %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %7, align 4
  br label %85

60:                                               ; preds = %40
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64 (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)*, i64 (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)** %62, align 8
  %64 = icmp ne i64 (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* @cmsAT_END, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64 (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)*, i64 (i32, %struct._cms_typehandler_struct*, i32*, i32*, i32)** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %9, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = call i64 %71(i32 %72, %struct._cms_typehandler_struct* %73, i32* %74, i32* %16, i32 %75)
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @cmsPipelineInsertStage(i32 %66, i32* %67, i32 %68, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %7, align 4
  br label %85

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %80, %50, %38, %31
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i64 @_cmsContextGetClientChunk(i32, i32) #1

declare dso_local i32 @_cmsReadUInt32Number(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @GetHandler(i32, i32, i32) #1

declare dso_local i32 @_cmsTagSignature2String(i8*, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i8*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

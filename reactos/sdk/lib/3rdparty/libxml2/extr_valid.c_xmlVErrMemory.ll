; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_valid.c_xmlVErrMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_valid.c_xmlVErrMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32* }

@XML_CTXT_FINISH_DTD_0 = common dso_local global i64 0, align 8
@XML_CTXT_FINISH_DTD_1 = common dso_local global i64 0, align 8
@XML_FROM_VALID = common dso_local global i32 0, align 4
@XML_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@XML_ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Memory allocation failed : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @xmlVErrMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlVErrMemory(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XML_CTXT_FINISH_DTD_0, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %11
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XML_CTXT_FINISH_DTD_1, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24, %11
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = bitcast %struct.TYPE_3__* %31 to i8*
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = ptrtoint i8* %32 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %43, 250
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %6, align 8
  br label %49

49:                                               ; preds = %45, %42, %30
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %2
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @XML_FROM_VALID, align 4
  %59 = load i32, i32* @XML_ERR_NO_MEMORY, align 4
  %60 = load i32, i32* @XML_ERR_FATAL, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i32*, i32*, i8*, i32*, i32*, i32, i32, i32, i32*, i32, i8*, i32*, i32*, i32, i32, i8*, ...) @__xmlRaiseError(i32* null, i32* %55, i8* %56, i32* %57, i32* null, i32 %58, i32 %59, i32 %60, i32* null, i32 0, i8* %61, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %72

64:                                               ; preds = %51
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @XML_FROM_VALID, align 4
  %69 = load i32, i32* @XML_ERR_NO_MEMORY, align 4
  %70 = load i32, i32* @XML_ERR_FATAL, align 4
  %71 = call i32 (i32*, i32*, i8*, i32*, i32*, i32, i32, i32, i32*, i32, i8*, i32*, i32*, i32, i32, i8*, ...) @__xmlRaiseError(i32* null, i32* %65, i8* %66, i32* %67, i32* null, i32 %68, i32 %69, i32 %70, i32* null, i32 0, i8* null, i32* null, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %64, %54
  ret void
}

declare dso_local i32 @__xmlRaiseError(i32*, i32*, i8*, i32*, i32*, i32, i32, i32, i32*, i32, i8*, i32*, i32*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

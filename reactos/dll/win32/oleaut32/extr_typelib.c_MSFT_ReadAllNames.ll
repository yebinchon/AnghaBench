; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_MSFT_ReadAllNames.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_MSFT_ReadAllNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }

@S_OK = common dso_local global i32 0, align 4
@DO_NOT_SEEK = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@MB_PRECOMPOSED = common dso_local global i32 0, align 4
@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @MSFT_ReadAllNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSFT_ReadAllNames(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MSFT_Seek(%struct.TYPE_16__* %10, i32 %16)
  br label %18

18:                                               ; preds = %1, %81
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %19, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %114

29:                                               ; preds = %18
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = load i32, i32* @DO_NOT_SEEK, align 4
  %32 = call i32 @MSFT_ReadLEWords(%struct.TYPE_17__* %5, i32 4, %struct.TYPE_16__* %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = srem i32 %41, 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 4
  %47 = and i32 %46, -4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %29
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 8, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i8* @heap_alloc(i32 %54)
  store i8* %55, i8** %4, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = load i32, i32* @DO_NOT_SEEK, align 4
  %63 = call i32 @MSFT_Read(i8* %56, i32 %60, %struct.TYPE_16__* %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i32, i32* @CP_ACP, align 4
  %70 = load i32, i32* @MB_PRECOMPOSED, align 4
  %71 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %72 = or i32 %70, %71
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @MultiByteToWideChar(i32 %69, i32 %72, i8* %73, i32 -1, i32* null, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %52
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @heap_free(i8* %78)
  %80 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %80, i32* %2, align 4
  br label %114

81:                                               ; preds = %52
  %82 = call i8* @heap_alloc(i32 16)
  %83 = bitcast i8* %82 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32* @SysAllocStringByteLen(i32* null, i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* @CP_ACP, align 4
  %95 = load i32, i32* @MB_PRECOMPOSED, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @MultiByteToWideChar(i32 %94, i32 %95, i8* %96, i32 -1, i32* %99, i32 %100)
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @heap_free(i8* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %18

114:                                              ; preds = %77, %27
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @MSFT_Seek(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @MSFT_ReadLEWords(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @MSFT_Read(i8*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i32* @SysAllocStringByteLen(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

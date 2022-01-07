; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_MSFT_ReadAllStrings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_MSFT_ReadAllStrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32* }

@S_OK = common dso_local global i32 0, align 4
@DO_NOT_SEEK = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@MB_PRECOMPOSED = common dso_local global i32 0, align 4
@MB_ERR_INVALID_CHARS = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @MSFT_ReadAllStrings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MSFT_ReadAllStrings(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MSFT_Seek(%struct.TYPE_14__* %10, i32 %16)
  br label %18

18:                                               ; preds = %1, %76
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %19, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %109

29:                                               ; preds = %18
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load i32, i32* @DO_NOT_SEEK, align 4
  %32 = call i32 @MSFT_ReadLEWords(i32* %5, i32 4, %struct.TYPE_14__* %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %37, 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 4
  %43 = and i32 %42, -4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 8, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i8* @heap_alloc(i32 %50)
  store i8* %51, i8** %4, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = load i32, i32* @DO_NOT_SEEK, align 4
  %59 = call i32 @MSFT_Read(i8* %52, i32 %56, %struct.TYPE_14__* %57, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* @CP_ACP, align 4
  %65 = load i32, i32* @MB_PRECOMPOSED, align 4
  %66 = load i32, i32* @MB_ERR_INVALID_CHARS, align 4
  %67 = or i32 %65, %66
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @MultiByteToWideChar(i32 %64, i32 %67, i8* %68, i32 -1, i32* null, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %48
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @heap_free(i8* %73)
  %75 = load i32, i32* @E_UNEXPECTED, align 4
  store i32 %75, i32* %2, align 4
  br label %109

76:                                               ; preds = %48
  %77 = call i8* @heap_alloc(i32 16)
  %78 = bitcast i8* %77 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %9, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32* @SysAllocStringByteLen(i32* null, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* @CP_ACP, align 4
  %90 = load i32, i32* @MB_PRECOMPOSED, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @MultiByteToWideChar(i32 %89, i32 %90, i8* %91, i32 -1, i32* %94, i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = call i32 @heap_free(i8* %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = call i32 @list_add_tail(i32* %102, i32* %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %18

109:                                              ; preds = %72, %27
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @MSFT_Seek(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @MSFT_ReadLEWords(i32*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @MSFT_Read(i8*, i32, %struct.TYPE_14__*, i32) #1

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

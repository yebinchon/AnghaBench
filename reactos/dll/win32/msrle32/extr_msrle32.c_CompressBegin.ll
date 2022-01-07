; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_CompressBegin.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_CompressBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i64, i32*, i32*, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i64 0, align 8
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"cannot compress and decompress at same time!\0A\00", align 1
@ICERR_ERROR = common dso_local global i64 0, align 8
@GPTR = common dso_local global i32 0, align 4
@ICERR_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @CompressBegin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CompressBegin(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %12, %struct.TYPE_13__* %13, %struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = icmp eq %struct.TYPE_13__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %3
  %26 = load i64, i64* @ICERR_BADPARAM, align 8
  store i64 %26, i64* %4, align 8
  br label %162

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = call i64 @CompressQuery(%struct.TYPE_14__* %28, %struct.TYPE_13__* %29, %struct.TYPE_13__* %30)
  %32 = load i64, i64* @ICERR_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @ICERR_BADFORMAT, align 8
  store i64 %35, i64* %4, align 8
  br label %162

36:                                               ; preds = %27
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* @ICERR_ERROR, align 8
  store i64 %43, i64* %4, align 8
  br label %162

44:                                               ; preds = %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = call i32 @CompressEnd(%struct.TYPE_14__* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 16
  %57 = call i32 @WIDTHBYTES(i32 %56)
  %58 = sdiv i32 %57, 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %11, align 8
  %64 = load i32, i32* @GPTR, align 4
  %65 = load i64, i64* %11, align 8
  %66 = mul i64 %65, 4
  %67 = call i32 @GlobalAlloc(i32 %64, i64 %66)
  %68 = call i8* @GlobalLock(i32 %67)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i64, i64* @ICERR_MEMORY, align 8
  store i64 %77, i64* %4, align 8
  br label %162

78:                                               ; preds = %52
  %79 = load i32, i32* @GPTR, align 4
  %80 = load i64, i64* %11, align 8
  %81 = mul i64 %80, 4
  %82 = call i32 @GlobalAlloc(i32 %79, i64 %81)
  %83 = call i8* @GlobalLock(i32 %82)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  store i32* %84, i32** %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = call i32 @CompressEnd(%struct.TYPE_14__* %92)
  %94 = load i64, i64* @ICERR_MEMORY, align 8
  store i64 %94, i64* %4, align 8
  br label %162

95:                                               ; preds = %78
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 8
  %98 = load i64, i64* @TRUE, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = bitcast %struct.TYPE_13__* %101 to i32*
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32* %107, i32** %8, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = bitcast %struct.TYPE_13__* %108 to i32*
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32* %114, i32** %9, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %160 [
    i32 4, label %118
    i32 8, label %118
  ]

118:                                              ; preds = %95, %95
  %119 = load i32, i32* @LPTR, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32* @LocalAlloc(i32 %119, i64 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = call i32 @CompressEnd(%struct.TYPE_14__* %131)
  %133 = load i64, i64* @ICERR_MEMORY, align 8
  store i64 %133, i64* %4, align 8
  br label %162

134:                                              ; preds = %118
  store i64 0, i64* %10, align 8
  br label %135

135:                                              ; preds = %156, %134
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ult i64 %136, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %135
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @MSRLE32_GetNearestPaletteIndex(i64 %144, i32* %145, i32 %149)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %150, i32* %155, align 4
  br label %156

156:                                              ; preds = %141
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %135

159:                                              ; preds = %135
  br label %160

160:                                              ; preds = %95, %159
  %161 = load i64, i64* @ICERR_OK, align 8
  store i64 %161, i64* %4, align 8
  br label %162

162:                                              ; preds = %160, %130, %91, %76, %41, %34, %25
  %163 = load i64, i64* %4, align 8
  ret i64 %163
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CompressQuery(%struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @CompressEnd(%struct.TYPE_14__*) #1

declare dso_local i32 @WIDTHBYTES(i32) #1

declare dso_local i8* @GlobalLock(i32) #1

declare dso_local i32 @GlobalAlloc(i32, i64) #1

declare dso_local i32* @LocalAlloc(i32, i64) #1

declare dso_local i32 @MSRLE32_GetNearestPaletteIndex(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

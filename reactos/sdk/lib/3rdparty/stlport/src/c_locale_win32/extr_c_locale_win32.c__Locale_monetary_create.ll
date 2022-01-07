; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_monetary_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_monetary_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@_STLP_LOC_NO_MEMORY = common dso_local global i32 0, align 4
@_STLP_LOC_UNKNOWN_NAME = common dso_local global i32 0, align 4
@INVARIANT_LCID = common dso_local global i64 0, align 8
@LOCALE_SDECIMAL = common dso_local global i32 0, align 4
@LOCALE_STHOUSAND = common dso_local global i32 0, align 4
@LOCALE_SGROUPING = common dso_local global i32 0, align 4
@LOCALE_SCURRENCY = common dso_local global i32 0, align 4
@LOCALE_SNEGATIVESIGN = common dso_local global i32 0, align 4
@LOCALE_SPOSITIVESIGN = common dso_local global i32 0, align 4
@LOCALE_ICURRDIGITS = common dso_local global i32 0, align 4
@LOCALE_IINTLCURRDIGITS = common dso_local global i32 0, align 4
@LOCALE_SINTLSYMBOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @_Locale_monetary_create(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca [6 x i32], align 16
  %12 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = call i64 @malloc(i32 88)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %4, align 8
  br label %197

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = call i32 @memset(%struct.TYPE_7__* %22, i32 0, i32 88)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @__GetLCIDFromName(i8* %24, i64* %27, i32 %30, i32* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = call i32 @free(%struct.TYPE_7__* %35)
  %37 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %197

39:                                               ; preds = %21
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INVARIANT_LCID, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %195

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LOCALE_SDECIMAL, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %59 = call i32 @__GetLocaleInfoUsingACP(i64 %50, i32 %53, i32 %54, i8* %57, i32 4, i32* %58, i32 6)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @LOCALE_STHOUSAND, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %72 = call i32 @__GetLocaleInfoUsingACP(i64 %63, i32 %66, i32 %67, i8* %70, i32 4, i32* %71, i32 6)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @LOCALE_SGROUPING, align 4
  %78 = call i32 @GetLocaleInfoA(i64 %76, i32 %77, i8* null, i32 0)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @malloc(i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %8, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %46
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i8* null, i8** %86, align 8
  %87 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %4, align 8
  br label %197

90:                                               ; preds = %46
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @LOCALE_SGROUPING, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @GetLocaleInfoA(i64 %94, i32 %95, i8* %96, i32 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @__FixGrouping(i8* %99)
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LOCALE_SCURRENCY, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %116 = call i32 @__GetLocaleInfoUsingACP(i64 %107, i32 %110, i32 %111, i8* %114, i32 6, i32* %115, i32 6)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @LOCALE_SNEGATIVESIGN, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %129 = call i32 @__GetLocaleInfoUsingACP(i64 %120, i32 %123, i32 %124, i8* %127, i32 5, i32* %128, i32 6)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @LOCALE_SPOSITIVESIGN, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %142 = call i32 @__GetLocaleInfoUsingACP(i64 %133, i32 %136, i32 %137, i8* %140, i32 5, i32* %141, i32 6)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @LOCALE_ICURRDIGITS, align 4
  %148 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %149 = call i32 @GetLocaleInfoA(i64 %146, i32 %147, i8* %148, i32 3)
  %150 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %151 = call i8* @atoi(i8* %150)
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 10
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @LOCALE_IINTLCURRDIGITS, align 4
  %159 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %160 = call i32 @GetLocaleInfoA(i64 %157, i32 %158, i8* %159, i32 3)
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %162 = call i8* @atoi(i8* %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 9
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @LOCALE_SINTLSYMBOL, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 6
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %177 = call i32 @__GetLocaleInfoUsingACP(i64 %168, i32 %171, i32 %172, i8* %175, i32 5, i32* %176, i32 6)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %90
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 6
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 3
  store i8 32, i8* %189, align 1
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 6
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 4
  store i8 0, i8* %193, align 1
  br label %194

194:                                              ; preds = %185, %90
  br label %195

195:                                              ; preds = %194, %39
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %196, %struct.TYPE_7__** %4, align 8
  br label %197

197:                                              ; preds = %195, %84, %34, %17
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %198
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @__GetLCIDFromName(i8*, i64*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @__GetLocaleInfoUsingACP(i64, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @GetLocaleInfoA(i64, i32, i8*, i32) #1

declare dso_local i32 @__FixGrouping(i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_insert_static_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_insert_static_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_22__ = type { i32, i32, i8*, i32*, i32 }
%struct.TYPE_20__ = type { i32, i64, i64, i8*, %struct.TYPE_17__, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_17__ = type { i8*, i8* }

@E_FAIL = common dso_local global i64 0, align 8
@TYMED_ENHMF = common dso_local global i32 0, align 4
@CF_ENHMETAFILE = common dso_local global i32 0, align 4
@TYMED_GDI = common dso_local global i32 0, align 4
@CF_BITMAP = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i8* null, align 8
@CLSID_NULL = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@IID_IOleCache = common dso_local global i32 0, align 4
@IID_IDataObject = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@REO_CP_SELECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i64, i64, %struct.TYPE_19__*)* @insert_static_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_static_object(%struct.TYPE_21__* %0, i64 %1, i64 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca %struct.TYPE_22__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %21 = load i64, i64* @E_FAIL, align 8
  store i64 %21, i64* %18, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load i32, i32* @TYMED_ENHMF, align 4
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @CF_ENHMETAFILE, align 4
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  br label %44

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* @TYMED_GDI, align 4
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @CF_BITMAP, align 4
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 4
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %35, %32
  br label %44

44:                                               ; preds = %43, %24
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load i8*, i8** @DVASPECT_CONTENT, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %44
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = call i32 @CreateIRichEditOle(i32* null, %struct.TYPE_21__* %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %18, align 8
  store i64 %64, i64* %5, align 8
  br label %175

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %44
  %67 = bitcast i32** %10 to i8**
  %68 = call i64 @OleCreateDefaultHandler(i32* @CLSID_NULL, i32* null, i32* @IID_IOleObject, i8** %67)
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %143

71:                                               ; preds = %66
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IRichEditOle_GetClientSite(i32 %74, i32** %12)
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %143

78:                                               ; preds = %71
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i64 @IOleObject_SetClientSite(i32* %79, i32* %80)
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %143

84:                                               ; preds = %78
  %85 = load i32*, i32** %10, align 8
  %86 = call i64 @IOleObject_GetUserClassID(i32* %85, i32* %17)
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %143

89:                                               ; preds = %84
  %90 = load i32*, i32** %10, align 8
  %91 = bitcast i32** %14 to i8**
  %92 = call i64 @IOleObject_QueryInterface(i32* %90, i32* @IID_IOleCache, i8** %91)
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %143

95:                                               ; preds = %89
  %96 = load i32*, i32** %14, align 8
  %97 = call i64 @IOleCache_Cache(i32* %96, %struct.TYPE_22__* %16, i32 0, i32* %19)
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %143

100:                                              ; preds = %95
  %101 = load i32*, i32** %10, align 8
  %102 = bitcast i32** %13 to i8**
  %103 = call i64 @IOleObject_QueryInterface(i32* %101, i32* @IID_IDataObject, i8** %102)
  %104 = load i64, i64* @S_OK, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %100
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* @TRUE, align 4
  %109 = call i64 @IDataObject_SetData(i32* %107, %struct.TYPE_22__* %16, %struct.TYPE_18__* %15, i32 %108)
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %143

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  store i32 80, i32* %113, align 8
  %114 = load i32, i32* @REO_CP_SELECTION, align 4
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 9
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %17, align 4
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 8
  store i32 %116, i32* %117, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 7
  store i32* %118, i32** %119, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 6
  store i32* %120, i32** %121, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 5
  store i32* %122, i32** %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @MulDiv(i32 %126, i32 254, i32 144)
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @MulDiv(i32 %132, i32 254, i32 144)
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @DVASPECT_CONTENT, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 3
  store i8* %136, i8** %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = call i32 @ME_InsertOLEFromCursor(%struct.TYPE_21__* %140, %struct.TYPE_20__* %20, i32 0)
  %142 = load i64, i64* @S_OK, align 8
  store i64 %142, i64* %18, align 8
  br label %143

143:                                              ; preds = %112, %106, %100, %95, %89, %84, %78, %71, %66
  %144 = load i32*, i32** %10, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @IOleObject_Release(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %12, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %12, align 8
  %154 = call i32 @IOleClientSite_Release(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %11, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %11, align 8
  %160 = call i32 @IStorage_Release(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %13, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @IDataObject_Release(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %14, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 @IOleCache_Release(i32* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i64, i64* %18, align 8
  store i64 %174, i64* %5, align 8
  br label %175

175:                                              ; preds = %173, %63
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local i32 @CreateIRichEditOle(i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i64 @OleCreateDefaultHandler(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @IRichEditOle_GetClientSite(i32, i32**) #1

declare dso_local i64 @IOleObject_SetClientSite(i32*, i32*) #1

declare dso_local i64 @IOleObject_GetUserClassID(i32*, i32*) #1

declare dso_local i64 @IOleObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IOleCache_Cache(i32*, %struct.TYPE_22__*, i32, i32*) #1

declare dso_local i64 @IDataObject_SetData(i32*, %struct.TYPE_22__*, %struct.TYPE_18__*, i32) #1

declare dso_local i8* @MulDiv(i32, i32, i32) #1

declare dso_local i32 @ME_InsertOLEFromCursor(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

declare dso_local i32 @IOleClientSite_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

declare dso_local i32 @IOleCache_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

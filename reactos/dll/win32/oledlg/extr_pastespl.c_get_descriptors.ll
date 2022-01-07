; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_get_descriptors.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_get_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i32 0, align 4
@cf_object_descriptor = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@USERCLASSTYPE_APPNAME = common dso_local global i32 0, align 4
@cf_link_src_descriptor = common dso_local global i32 0, align 4
@OLEDLG_hInstance = common dso_local global i32 0, align 4
@IDS_PS_UNKNOWN_SRC = common dso_local global i32 0, align 4
@IDS_PS_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @get_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_descriptors(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca [200 x i32], align 16
  %10 = alloca [200 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load i32, i32* @TYMED_HGLOBAL, align 4
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @DVASPECT_CONTENT, align 4
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load i32, i32* @cf_object_descriptor, align 4
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @IDataObject_GetData(i32 %23, %struct.TYPE_16__* %5, %struct.TYPE_14__* %6)
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_15__* @GlobalLock(i32 %30)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %7, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = bitcast %struct.TYPE_15__* %37 to i8*
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = bitcast i8* %43 to i32*
  %45 = call i8* @strdupW(i32* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %36, %27
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = bitcast %struct.TYPE_15__* %55 to i8*
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = bitcast i8* %61 to i32*
  %63 = call i8* @strdupW(i32* %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  br label %67

67:                                               ; preds = %54, %49
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  %70 = load i32, i32* @USERCLASSTYPE_APPNAME, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = call i32 @OleRegGetUserType(i32* %69, i32 %70, i32* %72)
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GlobalUnlock(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GlobalFree(i32 %80)
  br label %83

82:                                               ; preds = %2
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32, i32* @cf_link_src_descriptor, align 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @IDataObject_GetData(i32 %90, %struct.TYPE_16__* %5, %struct.TYPE_14__* %6)
  %92 = load i64, i64* @S_OK, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_15__* @GlobalLock(i32 %97)
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %8, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %94
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %105 = bitcast %struct.TYPE_15__* %104 to i8*
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = bitcast i8* %110 to i32*
  %112 = call i8* @strdupW(i32* %111)
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  store i32* %113, i32** %115, align 8
  br label %116

116:                                              ; preds = %103, %94
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %116
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = bitcast %struct.TYPE_15__* %122 to i8*
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %123, i64 %127
  %129 = bitcast i8* %128 to i32*
  %130 = call i8* @strdupW(i32* %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  store i32* %131, i32** %133, align 8
  br label %134

134:                                              ; preds = %121, %116
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @GlobalUnlock(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @GlobalFree(i32 %141)
  br label %143

143:                                              ; preds = %134, %83
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %143
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load i32, i32* @OLEDLG_hInstance, align 4
  %155 = load i32, i32* @IDS_PS_UNKNOWN_SRC, align 4
  %156 = getelementptr inbounds [200 x i32], [200 x i32]* %9, i64 0, i64 0
  %157 = getelementptr inbounds [200 x i32], [200 x i32]* %9, i64 0, i64 0
  %158 = call i32 @ARRAY_SIZE(i32* %157)
  %159 = call i32 @LoadStringW(i32 %154, i32 %155, i32* %156, i32 %158)
  %160 = getelementptr inbounds [200 x i32], [200 x i32]* %9, i64 0, i64 0
  %161 = call i8* @strdupW(i32* %160)
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  store i32* %162, i32** %164, align 8
  br label %165

165:                                              ; preds = %153, %148, %143
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %187

170:                                              ; preds = %165
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load i32, i32* @OLEDLG_hInstance, align 4
  %177 = load i32, i32* @IDS_PS_UNKNOWN_TYPE, align 4
  %178 = getelementptr inbounds [200 x i32], [200 x i32]* %10, i64 0, i64 0
  %179 = getelementptr inbounds [200 x i32], [200 x i32]* %10, i64 0, i64 0
  %180 = call i32 @ARRAY_SIZE(i32* %179)
  %181 = call i32 @LoadStringW(i32 %176, i32 %177, i32* %178, i32 %180)
  %182 = getelementptr inbounds [200 x i32], [200 x i32]* %10, i64 0, i64 0
  %183 = call i8* @strdupW(i32* %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  store i32* %184, i32** %186, align 8
  br label %187

187:                                              ; preds = %175, %170, %165
  ret void
}

declare dso_local i64 @IDataObject_GetData(i32, %struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @GlobalLock(i32) #1

declare dso_local i8* @strdupW(i32*) #1

declare dso_local i32 @OleRegGetUserType(i32*, i32, i32*) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @GlobalFree(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

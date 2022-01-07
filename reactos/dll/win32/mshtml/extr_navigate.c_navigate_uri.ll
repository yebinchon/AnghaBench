; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_navigate_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_navigate_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@BINDING_REFRESH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Navigation canceled\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Navigation handled by hlink frame\0A\00", align 1
@LOAD_FLAGS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*, i32*, %struct.TYPE_18__*, i32)* @navigate_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navigate_uri(%struct.TYPE_19__* %0, i32* %1, i32* %2, %struct.TYPE_18__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @debugstr_w(i32* %20)
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %138

27:                                               ; preds = %5
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %138

34:                                               ; preds = %27
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  br label %42

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32* [ %49, %46 ], [ null, %50 ]
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %15, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i32* [ %59, %56 ], [ null, %60 ]
  store i32* %62, i32** %16, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @BINDING_REFRESH, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %120, label %67

67:                                               ; preds = %61
  store i32* null, i32** %17, align 8
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %18, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = icmp ne %struct.TYPE_19__* %69, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %67
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = call i32 @IHTMLWindow2_get_name(i32* %80, i32** %17)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %200

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %67
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  br label %103

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i32 [ %101, %99 ], [ 0, %102 ]
  %105 = load i32*, i32** %16, align 8
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @IDocObjectService_FireBeforeNavigate2(i32 %93, i32* null, i32* %94, i32 64, i32* %95, i8* %96, i32 %104, i32* %105, i32 %106, i64* %18)
  store i32 %107, i32* %13, align 4
  %108 = load i32*, i32** %17, align 8
  %109 = call i32 @SysFreeString(i32* %108)
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @SUCCEEDED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i64, i64* %18, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @S_OK, align 4
  store i32 %118, i32* %6, align 4
  br label %200

119:                                              ; preds = %113, %103
  br label %120

120:                                              ; preds = %119, %61
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %126, align 8
  %128 = icmp eq %struct.TYPE_19__* %121, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @super_navigate(%struct.TYPE_19__* %130, i32* %131, i32 %132, i32* %133, i8* %134, i32 %135)
  store i32 %136, i32* %6, align 4
  br label %200

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %137, %27, %5
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = icmp ne %struct.TYPE_14__* %141, null
  br i1 %142, label %143, label %174

143:                                              ; preds = %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = icmp eq %struct.TYPE_19__* %144, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %143
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @hlink_frame_navigate(i32* %159, i32* %160, i32* null, i32 0, i64* %19)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i64 @FAILED(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %152
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %6, align 4
  br label %200

167:                                              ; preds = %152
  %168 = load i64, i64* %19, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* @S_OK, align 4
  store i32 %172, i32* %6, align 4
  br label %200

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %143, %138
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = call i32 @create_doc_uri(%struct.TYPE_19__* %175, i32* %176, i32** %12)
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i64 @FAILED(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* %13, align 4
  store i32 %182, i32* %6, align 4
  br label %200

183:                                              ; preds = %174
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %187 = icmp ne %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  br label %193

192:                                              ; preds = %183
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi i32* [ %191, %188 ], [ null, %192 ]
  %195 = load i32, i32* @LOAD_FLAGS_NONE, align 4
  %196 = call i32 @load_nsuri(%struct.TYPE_19__* %184, i32* %185, i32* %194, i32* null, i32 %195)
  store i32 %196, i32* %13, align 4
  %197 = load i32*, i32** %12, align 8
  %198 = call i32 @nsISupports_Release(i32* %197)
  %199 = load i32, i32* %13, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %193, %181, %170, %165, %129, %116, %85
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @IHTMLWindow2_get_name(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDocObjectService_FireBeforeNavigate2(i32, i32*, i32*, i32, i32*, i8*, i32, i32*, i32, i64*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @super_navigate(%struct.TYPE_19__*, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @hlink_frame_navigate(i32*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @create_doc_uri(%struct.TYPE_19__*, i32*, i32**) #1

declare dso_local i32 @load_nsuri(%struct.TYPE_19__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @nsISupports_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

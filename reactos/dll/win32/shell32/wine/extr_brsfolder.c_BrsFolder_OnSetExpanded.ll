; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnSetExpanded.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnSetExpanded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i8*, i64, i32 }
%struct.TYPE_10__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVM_GETNEXTITEM = common dso_local global i32 0, align 4
@TVGN_ROOT = common dso_local global i32 0, align 4
@TVGN_CHILD = common dso_local global i32 0, align 4
@TVM_GETITEMW = common dso_local global i32 0, align 4
@TVM_EXPAND = common dso_local global i32 0, align 4
@TVE_EXPAND = common dso_local global i32 0, align 4
@TVGN_NEXT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i64, i64, i8**)* @BrsFolder_OnSetExpanded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @BrsFolder_OnSetExpanded(%struct.TYPE_8__* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %13, align 8
  %19 = call i32 @memset(%struct.TYPE_9__* %12, i32 0, i32 24)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = call i32 @SHGetDesktopFolder(i32** %14)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %173

28:                                               ; preds = %22
  %29 = load i32*, i32** %14, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @IShellFolder_ParseDisplayName(i32* %29, i32* null, i32* null, i64 %30, i32* null, i64* %9, i32* null)
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @IShellFolder_Release(i32* %32)
  %34 = load i32, i32* %15, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %173

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %57, %39
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @_ILIsEmpty(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @_ILIsEqualSimple(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i1 [ false, %46 ], [ %54, %50 ]
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @ILGetNext(i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @ILGetNext(i64 %60)
  store i64 %61, i64* %10, align 8
  br label %46

62:                                               ; preds = %55
  %63 = load i64, i64* %11, align 8
  %64 = call i64 @_ILIsEmpty(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %173

67:                                               ; preds = %62
  %68 = load i32, i32* @TVIF_PARAM, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %74 = load i32, i32* @TVGN_ROOT, align 4
  %75 = call i64 @SendMessageW(i32 %72, i32 %73, i32 %74, i32 0)
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %67
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %86 = load i32, i32* @TVGN_CHILD, align 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = call i64 @SendMessageW(i32 %84, i32 %85, i32 %86, i32 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %81, %67
  br label %94

94:                                               ; preds = %161, %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @_ILIsEmpty(i64 %99)
  %101 = icmp ne i64 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i1 [ false, %94 ], [ %102, %98 ]
  br i1 %104, label %105, label %162

105:                                              ; preds = %103
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TVM_GETITEMW, align 4
  %110 = ptrtoint %struct.TYPE_9__* %12 to i32
  %111 = call i64 @SendMessageW(i32 %108, i32 %109, i32 0, i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %16, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @_ILIsEqualSimple(i64 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %105
  %122 = load i64, i64* %10, align 8
  %123 = call i64 @ILGetNext(i64 %122)
  store i64 %123, i64* %10, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i64 @_ILIsEmpty(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %148, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TVM_EXPAND, align 4
  %132 = load i32, i32* @TVE_EXPAND, align 4
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = call i64 @SendMessageW(i32 %130, i32 %131, i32 %132, i32 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %141 = load i32, i32* @TVGN_CHILD, align 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = ptrtoint i8* %143 to i32
  %145 = call i64 @SendMessageW(i32 %139, i32 %140, i32 %141, i32 %144)
  %146 = inttoptr i64 %145 to i8*
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* %146, i8** %147, align 8
  br label %148

148:                                              ; preds = %127, %121
  br label %161

149:                                              ; preds = %105
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @TVM_GETNEXTITEM, align 4
  %154 = load i32, i32* @TVGN_NEXT, align 4
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %156 to i32
  %158 = call i64 @SendMessageW(i32 %152, i32 %153, i32 %154, i32 %157)
  %159 = inttoptr i64 %158 to i8*
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  br label %161

161:                                              ; preds = %149, %148
  br label %94

162:                                              ; preds = %103
  %163 = load i64, i64* %10, align 8
  %164 = call i64 @_ILIsEmpty(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i64, i64* @TRUE, align 8
  store i64 %171, i64* %13, align 8
  br label %172

172:                                              ; preds = %170, %166, %162
  br label %173

173:                                              ; preds = %172, %66, %37, %27
  %174 = load i64, i64* %9, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %6, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @ILFree(i64 %181)
  br label %183

183:                                              ; preds = %180, %176, %173
  %184 = load i8**, i8*** %8, align 8
  %185 = icmp ne i8** %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load i8**, i8*** %8, align 8
  store i8* %188, i8** %189, align 8
  br label %190

190:                                              ; preds = %186, %183
  %191 = load i64, i64* %13, align 8
  ret i64 %191
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @SHGetDesktopFolder(i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IShellFolder_ParseDisplayName(i32*, i32*, i32*, i64, i32*, i64*, i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

declare dso_local i64 @_ILIsEmpty(i64) #1

declare dso_local i64 @_ILIsEqualSimple(i64, i64) #1

declare dso_local i64 @ILGetNext(i64) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @ILFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

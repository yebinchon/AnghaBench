; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_GetAdjustInfo.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_GetAdjustInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i32 (i32, i32, i32)*, i32 }
%struct.TYPE_8__ = type { i32, i8**, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i8**, i32 }

@TBAR_ALL_BUTTONS = common dso_local global i64 0, align 8
@tbButtons = common dso_local global %struct.TYPE_9__* null, align 8
@TBAR_BUTTON_COUNT = common dso_local global i32 0, align 4
@sAllButtons = common dso_local global %struct.TYPE_11__* null, align 8
@HIDEIT = common dso_local global i32 0, align 4
@TBSTATE_HIDDEN = common dso_local global i32 0, align 4
@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@TBSTYLE_SEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@hwndExtensions = common dso_local global i64 0, align 8
@TB_GETBUTTON = common dso_local global i32 0, align 4
@iNumExtensions = common dso_local global i64 0, align 8
@extensions = common dso_local global %struct.TYPE_12__* null, align 8
@hwndFrame = common dso_local global i32 0, align 4
@FMEVENT_HELPSTRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MAXDESCLEN = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@MB_PRECOMPOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetAdjustInfo(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @TBAR_ALL_BUTTONS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tbButtons, align 8
  %22 = load i32, i32* @TBAR_BUTTON_COUNT, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %24
  %26 = bitcast %struct.TYPE_9__* %20 to i8*
  %27 = bitcast %struct.TYPE_9__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 32, i1 false)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sAllButtons, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HIDEIT, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sAllButtons, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HIDEIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %19
  %49 = load i32, i32* @TBSTATE_HIDDEN, align 4
  br label %52

50:                                               ; preds = %19
  %51 = load i32, i32* @TBSTATE_ENABLED, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sAllButtons, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %110, %52
  %65 = call i8* @TEXT(i8 signext 0)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TBSTYLE_SEP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %64
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = call i32 @LoadDesc(i32 %79, i8** %82)
  br label %84

84:                                               ; preds = %76, %64
  br label %85

85:                                               ; preds = %171, %84
  %86 = load i64, i64* @TRUE, align 8
  store i64 %86, i64* %2, align 8
  br label %205

87:                                               ; preds = %1
  %88 = load i64, i64* @TBAR_ALL_BUTTONS, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load i64, i64* @hwndExtensions, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %203

95:                                               ; preds = %87
  %96 = load i64, i64* @hwndExtensions, align 8
  %97 = load i32, i32* @TB_GETBUTTON, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = ptrtoint %struct.TYPE_9__* %99 to i32
  %101 = call i64 @SendMessage(i64 %96, i32 %97, i32 %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %203

103:                                              ; preds = %95
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @TBSTYLE_SEP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %64

111:                                              ; preds = %103
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 1
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @iNumExtensions, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %202

119:                                              ; preds = %111
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = srem i32 %122, 100
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** @extensions, align 8
  %126 = load i64, i64* %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  store i32 %129, i32* %130, align 8
  %131 = call i8* @TEXT(i8 signext 0)
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  store i8* %131, i8** %134, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @extensions, align 8
  %136 = load i64, i64* %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 3
  %139 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %138, align 8
  %140 = load i32, i32* @hwndFrame, align 4
  %141 = load i32, i32* @FMEVENT_HELPSTRING, align 4
  %142 = ptrtoint %struct.TYPE_10__* %5 to i64
  %143 = trunc i64 %142 to i32
  %144 = call i32 %139(i32 %140, i32 %141, i32 %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @extensions, align 8
  %146 = load i64, i64* %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @FALSE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %119
  %153 = load i32, i32* @MAXDESCLEN, align 4
  %154 = zext i32 %153 to i64
  %155 = call i8* @llvm.stacksave()
  store i8* %155, i8** %8, align 8
  %156 = alloca i8*, i64 %154, align 16
  store i64 %154, i64* %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = call i32 @COUNTOF(i8** %156)
  %160 = call i32 @memcpy(i8** %156, i8** %158, i32 %159)
  %161 = load i32, i32* @CP_ACP, align 4
  %162 = load i32, i32* @MB_PRECOMPOSED, align 4
  %163 = call i32 @COUNTOF(i8** %156)
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %165 = load i8**, i8*** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = call i32 @COUNTOF(i8** %167)
  %169 = call i32 @MultiByteToWideChar(i32 %161, i32 %162, i8** %156, i32 %163, i8** %165, i32 %168)
  %170 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %152, %119
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %176 = load i8**, i8*** %175, align 8
  %177 = load i32, i32* @MAXDESCLEN, align 4
  %178 = sub nsw i32 %177, 1
  %179 = call i32 @StrNCpy(i8** %174, i8** %176, i32 %178)
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** @extensions, align 8
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %184
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** @extensions, align 8
  %192 = load i64, i64* %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %195
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  br label %85

202:                                              ; preds = %111
  br label %203

203:                                              ; preds = %202, %95, %87
  %204 = load i64, i64* @FALSE, align 8
  store i64 %204, i64* %2, align 8
  br label %205

205:                                              ; preds = %203, %85
  %206 = load i64, i64* %2, align 8
  ret i64 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @TEXT(i8 signext) #2

declare dso_local i32 @LoadDesc(i32, i8**) #2

declare dso_local i64 @SendMessage(i64, i32, i32, i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @memcpy(i8**, i8**, i32) #2

declare dso_local i32 @COUNTOF(i8**) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8**, i32, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @StrNCpy(i8**, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

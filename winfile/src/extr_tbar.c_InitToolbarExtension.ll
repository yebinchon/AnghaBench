; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_tbar.c_InitToolbarExtension.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_tbar.c_InitToolbarExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32*, i64, i32 (i32, i32, i32)* }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__*, i64, i32* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i8*, i64 }

@extensions = common dso_local global %struct.TYPE_10__* null, align 8
@hwndFrame = common dso_local global i32 0, align 4
@FMEVENT_TOOLBARLOAD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@hwndExtensions = common dso_local global i64 0, align 8
@WS_CHILD = common dso_local global i32 0, align 4
@IDC_EXTENSIONS = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4
@IDB_TOOLBAR = common dso_local global i32 0, align 4
@tbButtons = common dso_local global i32 0, align 4
@TBSTYLE_SEP = common dso_local global i32 0, align 4
@TB_INSERTBUTTON = common dso_local global i32 0, align 4
@hwndToolbar = common dso_local global i64 0, align 8
@TB_ADDBITMAP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@TBSTATE_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @InitToolbarExtension(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  store i64 %0, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 40, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @extensions, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %20, align 8
  %22 = load i32, i32* @hwndFrame, align 4
  %23 = load i32, i32* @FMEVENT_TOOLBARLOAD, align 4
  %24 = ptrtoint %struct.TYPE_9__* %5 to i64
  %25 = trunc i64 %24 to i32
  %26 = call i32 %21(i32 %22, i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %2, align 8
  br label %205

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 40
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 16, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* @FALSE, align 8
  store i64 %44, i64* %2, align 8
  br label %205

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %30
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %50, %46
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %2, align 8
  br label %205

64:                                               ; preds = %58, %54
  %65 = load i64, i64* @hwndExtensions, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i64, i64* @hwndExtensions, align 8
  %69 = call i32 @LastButtonIsSeparator(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %86

72:                                               ; preds = %67
  br label %99

73:                                               ; preds = %64
  %74 = load i32, i32* @hwndFrame, align 4
  %75 = load i32, i32* @WS_CHILD, align 4
  %76 = load i32, i32* @IDC_EXTENSIONS, align 4
  %77 = load i32, i32* @hAppInstance, align 4
  %78 = load i32, i32* @IDB_TOOLBAR, align 4
  %79 = load i32, i32* @tbButtons, align 4
  %80 = call i64 @CreateToolbarEx(i32 %74, i32 %75, i32 %76, i32 0, i32 %77, i32 %78, i32 %79, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48)
  store i64 %80, i64* @hwndExtensions, align 8
  %81 = load i64, i64* @hwndExtensions, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %73
  %84 = load i64, i64* @FALSE, align 8
  store i64 %84, i64* %2, align 8
  br label %205

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %71
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* @TBSTYLE_SEP, align 4
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load i64, i64* @hwndExtensions, align 8
  %95 = load i32, i32* @TB_INSERTBUTTON, align 4
  %96 = ptrtoint %struct.TYPE_6__* %4 to i64
  %97 = trunc i64 %96 to i32
  %98 = call i64 @SendMessage(i64 %94, i32 %95, i64 -1, i32 %97)
  br label %99

99:                                               ; preds = %86, %72
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** @extensions, align 8
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i8* %112, i8** %113, align 8
  %114 = load i64, i64* @hwndToolbar, align 8
  %115 = load i32, i32* @TB_ADDBITMAP, align 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = ptrtoint %struct.TYPE_7__* %11 to i32
  %119 = call i64 @SendMessage(i64 %114, i32 %115, i64 %117, i32 %118)
  store i64 %119, i64* %8, align 8
  br label %132

120:                                              ; preds = %99
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to i8*
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  %126 = load i64, i64* @hwndToolbar, align 8
  %127 = load i32, i32* @TB_ADDBITMAP, align 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = ptrtoint %struct.TYPE_7__* %11 to i32
  %131 = call i64 @SendMessage(i64 %126, i32 %127, i64 %129, i32 %130)
  store i64 %131, i64* %8, align 8
  br label %132

132:                                              ; preds = %120, %103
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @extensions, align 8
  %136 = load i64, i64* %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  store i32* %134, i32** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @extensions, align 8
  %142 = load i64, i64* %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i64 %140, i64* %144, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** @extensions, align 8
  %147 = load i64, i64* %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i64 %145, i64* %149, align 8
  %150 = load i64, i64* @TRUE, align 8
  store i64 %150, i64* %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %6, align 8
  br label %155

155:                                              ; preds = %198, %132
  %156 = load i64, i64* %7, align 8
  %157 = icmp ugt i64 %156, 0
  br i1 %157, label %158, label %203

158:                                              ; preds = %155
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TBSTYLE_SEP, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i64, i64* %10, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %198

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 0, i64* %170, align 8
  %171 = load i64, i64* @TRUE, align 8
  store i64 %171, i64* %10, align 8
  br label %178

172:                                              ; preds = %158
  %173 = load i64, i64* %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  %175 = load i64, i64* %9, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %9, align 8
  %177 = load i64, i64* @FALSE, align 8
  store i64 %177, i64* %10, align 8
  br label %178

178:                                              ; preds = %172, %169
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %181, i32* %182, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  store i64 %185, i64* %186, align 8
  %187 = load i64, i64* @TBSTATE_ENABLED, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i64 %187, i64* %188, align 8
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i64 %190, i64* %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = load i64, i64* @hwndExtensions, align 8
  %194 = load i32, i32* @TB_INSERTBUTTON, align 4
  %195 = ptrtoint %struct.TYPE_6__* %4 to i64
  %196 = trunc i64 %195 to i32
  %197 = call i64 @SendMessage(i64 %193, i32 %194, i64 -1, i32 %196)
  br label %198

198:                                              ; preds = %178, %168
  %199 = load i64, i64* %7, align 8
  %200 = add i64 %199, -1
  store i64 %200, i64* %7, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 1
  store %struct.TYPE_8__* %202, %struct.TYPE_8__** %6, align 8
  br label %155

203:                                              ; preds = %155
  %204 = load i64, i64* @TRUE, align 8
  store i64 %204, i64* %2, align 8
  br label %205

205:                                              ; preds = %203, %83, %62, %43, %28
  %206 = load i64, i64* %2, align 8
  ret i64 %206
}

declare dso_local i32 @LastButtonIsSeparator(i64) #1

declare dso_local i64 @CreateToolbarEx(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @SendMessage(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

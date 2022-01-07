; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui.c_gui_do_scroll.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui.c_gui_do_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i64, %struct.TYPE_12__, i64, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32* }

@firstwin = common dso_local global %struct.TYPE_11__* null, align 8
@current_scrollbar = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@scrollbar_value = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_11__* null, align 8
@curbuf = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@SBAR_NONE = common dso_local global i64 0, align 8
@p_so = common dso_local global i64 0, align 8
@VALID = common dso_local global i32 0, align 4
@NOT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_do_scroll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @firstwin, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %19, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @current_scrollbar, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %24

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = call %struct.TYPE_11__* @W_NEXT(%struct.TYPE_11__* %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10

24:                                               ; preds = %17, %10
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = icmp eq %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %1, align 4
  br label %148

29:                                               ; preds = %24
  %30 = load i64, i64* @scrollbar_value, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %1, align 4
  br label %148

40:                                               ; preds = %29
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %3, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = bitcast %struct.TYPE_12__* %6 to i8*
  %48 = bitcast %struct.TYPE_12__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** @curwin, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* @curbuf, align 4
  %53 = load i64, i64* %5, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load i64, i64* %5, align 8
  %57 = sub nsw i64 0, %56
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @scrolldown(i64 %57, i32 %60)
  br label %68

62:                                               ; preds = %40
  %63 = load i64, i64* %5, align 8
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  %65 = icmp eq i32* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @scrollup(i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 0), align 8
  %70 = load i64, i64* @SBAR_NONE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 1), align 8
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load i64, i64* @p_so, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = call i32 (...) @cursor_correct()
  %84 = call i32 (...) @update_topline()
  br label %85

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @coladvance(i32 %96)
  br label %98

98:                                               ; preds = %93, %85
  br label %99

99:                                               ; preds = %98, %73
  %100 = call i32 (...) @validate_cursor()
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** @curwin, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* @curbuf, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %99
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110, %99
  %116 = load i32, i32* @VALID, align 4
  store i32 %116, i32* %8, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %123, %115
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = call i32 @updateWindow(%struct.TYPE_11__* %129)
  br label %131

131:                                              ; preds = %128, %110
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %134 = icmp eq %struct.TYPE_11__* %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @curwin, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @equalpos(i64 %139, i64 %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %135, %131
  %146 = phi i1 [ false, %131 ], [ %144, %135 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %1, align 4
  br label %148

148:                                              ; preds = %145, %38, %27
  %149 = load i32, i32* %1, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_11__* @W_NEXT(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @scrolldown(i64, i32) #1

declare dso_local i32 @scrollup(i64, i32) #1

declare dso_local i32 @cursor_correct(...) #1

declare dso_local i32 @update_topline(...) #1

declare dso_local i32 @coladvance(i32) #1

declare dso_local i32 @validate_cursor(...) #1

declare dso_local i32 @updateWindow(%struct.TYPE_11__*) #1

declare dso_local i32 @equalpos(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

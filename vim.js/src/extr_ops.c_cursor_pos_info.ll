; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ops.c_cursor_pos_info.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ops.c_cursor_pos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { i64, i32 }

@curbuf = common dso_local global %struct.TYPE_18__* null, align 8
@ML_EMPTY = common dso_local global i32 0, align 4
@no_lines_msg = common dso_local global i8* null, align 8
@EOL_DOS = common dso_local global i64 0, align 8
@got_int = common dso_local global i64 0, align 8
@curwin = common dso_local global %struct.TYPE_17__* null, align 8
@MAXCOL = common dso_local global i64 0, align 8
@IObuff = common dso_local global i32* null, align 8
@IOSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Col %s of %s; Line %ld of %ld; Word %ld of %ld; Byte %ld of %ld\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"Col %s of %s; Line %ld of %ld; Word %ld of %ld; Char %ld of %ld; Byte %ld of %ld\00", align 1
@p_shm = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAYBE = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@OP_NOP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VIsual = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@VIsual_active = common dso_local global i64 0, align 8
@VIsual_mode = common dso_local global i32 0, align 4
@empty_option = common dso_local global i32* null, align 8
@p_sbr = common dso_local global i32* null, align 8
@p_sel = common dso_local global i8* null, align 8
@virtual_op = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_pos_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [50 x i32], align 16
  %3 = alloca [40 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 100000, i64* %12, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ML_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load i8*, i8** @no_lines_msg, align 8
  %22 = call i8* @_(i8* %21)
  %23 = call i32 @MSG(i8* %22)
  br label %186

24:                                               ; preds = %0
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %26 = call i64 @get_fileformat(%struct.TYPE_18__* %25)
  %27 = load i64, i64* @EOL_DOS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 2, i32* %11, align 4
  br label %31

30:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %31

31:                                               ; preds = %30, %29
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %84, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %33, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %32
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = call i32 (...) @ui_breakcheck()
  %45 = load i64, i64* @got_int, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %186

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 100000
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32* @ml_get(i32 %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @line_count_info(i32* %67, i64* %10, i64* %8, i64 %72, i32 %73)
  %75 = add nsw i64 %65, %74
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %58, %51
  %77 = load i32, i32* %4, align 4
  %78 = call i32* @ml_get(i32 %77)
  %79 = load i64, i64* @MAXCOL, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @line_count_info(i32* %78, i64* %9, i64* %7, i64 %79, i32 %80)
  %82 = load i64, i64* %5, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %32

87:                                               ; preds = %32
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %5, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %97, %92, %87
  %103 = call i32* (...) @ml_get_curline()
  store i32* %103, i32** %1, align 8
  %104 = call i32 (...) @validate_virtcol()
  %105 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = add nsw i32 %110, 1
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = add nsw i32 %115, 1
  %117 = call i32 @col_print(i32* %105, i32 200, i32 %111, i32 %116)
  %118 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @STRLEN(i32* %119)
  %121 = load i32*, i32** %1, align 8
  %122 = call i32 @linetabsize(i32* %121)
  %123 = call i32 @col_print(i32* %118, i32 160, i32 %120, i32 %122)
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %102
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %5, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %155

131:                                              ; preds = %127
  %132 = load i32*, i32** @IObuff, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load i32, i32* @IOSIZE, align 4
  %135 = call i8* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %136 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %137 = bitcast i32* %136 to i8*
  %138 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %139 = bitcast i32* %138 to i8*
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* %5, align 8
  %154 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %133, i32 %134, i8* %135, i8* %137, i8* %139, i64 %144, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  br label %181

155:                                              ; preds = %127, %102
  %156 = load i32*, i32** @IObuff, align 8
  %157 = bitcast i32* %156 to i8*
  %158 = load i32, i32* @IOSIZE, align 4
  %159 = call i8* @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %160 = getelementptr inbounds [50 x i32], [50 x i32]* %2, i64 0, i64 0
  %161 = bitcast i32* %160 to i8*
  %162 = getelementptr inbounds [40 x i32], [40 x i32]* %3, i64 0, i64 0
  %163 = bitcast i32* %162 to i8*
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** @curwin, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** @curbuf, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %10, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* %5, align 8
  %180 = call i32 (i8*, i32, i8*, ...) @vim_snprintf(i8* %157, i32 %158, i8* %159, i8* %161, i8* %163, i64 %168, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  br label %181

181:                                              ; preds = %155, %131
  %182 = load i32*, i32** @p_shm, align 8
  store i32* %182, i32** %1, align 8
  store i32* bitcast ([1 x i8]* @.str.2 to i32*), i32** @p_shm, align 8
  %183 = load i32*, i32** @IObuff, align 8
  %184 = call i32 @msg(i32* %183)
  %185 = load i32*, i32** %1, align 8
  store i32* %185, i32** @p_shm, align 8
  br label %186

186:                                              ; preds = %47, %181, %20
  ret void
}

declare dso_local i32 @MSG(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @get_fileformat(%struct.TYPE_18__*) #1

declare dso_local i32 @ui_breakcheck(...) #1

declare dso_local i64 @line_count_info(i32*, i64*, i64*, i64, i32) #1

declare dso_local i32* @ml_get(i32) #1

declare dso_local i32* @ml_get_curline(...) #1

declare dso_local i32 @validate_virtcol(...) #1

declare dso_local i32 @col_print(i32*, i32, i32, i32) #1

declare dso_local i32 @STRLEN(i32*) #1

declare dso_local i32 @linetabsize(i32*) #1

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @msg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
